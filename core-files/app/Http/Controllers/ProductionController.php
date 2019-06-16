<?php

namespace App\Http\Controllers;

use App\Model\InventoryItem;
use App\Model\ProducedGood;
use App\Model\Production;
use App\Model\ProductionGood;
use App\Model\ProductionMaterial;
use App\Model\PurchaseOrderDetail;
use App\Model\PurchaseOrderDetailLog;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ProductionController extends Controller
{
    public function index($company_id){
        $productions = Production::where('company_id','=',$company_id)->get();
        return view('admin.production.index')->with([
            'productions'   => $productions
        ]);
    }

    public function producedGoods(){
        $produced_goods = ProducedGood::where('remaining_quantity','>',0)->get()->groupBy('good_id')->map(function($item){
            $data = $item;
            $data->sum_of_remaining_quantity = $item->sum('remaining_quantity');
            return $data;
        });
        return view('admin.production.produced-products')->with([
            'produced_goods'    => $produced_goods
        ]);
    }

    public function show($company_id,$id){
        $production = Production::where([
            'company_id'    => $company_id,
            'id'            => $id
        ])->firstOrFail();
        $production_id = $production->id;
        $release_goods = ProductionGood::whereHas('producedGood',function($q) use($production_id){
            $q->where('production_id','=',$production_id);
        })->get();
        return view('admin.production.show')->with([
            'production'    => $production,
            'release_goods' => $release_goods
        ]);
    }

    public function create($company_id){
        $materials = PurchaseOrderDetail::where('company_id','=',$company_id)
            ->where('remaining_quantity','>',0)->get();
        $logs = PurchaseOrderDetailLog::whereNull('production_id')->get();
        return view('admin.production.create')->with([
            'materials' => $materials,
            'logs'      => $logs
        ]);
    }

    public function store(Request $request){
        $production = Production::create($request->only('start_at','end_at','good_produced','comment','total_labour','total_labour_cost','utility_cost','other_cost'));
        $logs = $request->input('log') ? $request->input('log') : [];
        $log_price = 0;
        foreach ($logs as $log){
            $purchase_log = PurchaseOrderDetailLog::findOrFail($log['id']);
            $purchase_log->update([
                'production_id' => $production->id,
                'new_height'    => $log['new_height'],
                'new_radius'    => $log['new_radius'],
            ]);
            $log_price += $purchase_log->total_price;
        }

        $raw_materials = $request->input('raw_material') ? $request->input('raw_material') : [];

        $material_price = 0;

        foreach ($raw_materials as $raw_material){
            $po_detail = PurchaseOrderDetail::findOrFail($raw_material['raw_material_id']);
            $inventory_item = InventoryItem::where([
                'id'   => $po_detail->inventory_item_id,
            ])->first();

            ProductionMaterial::create([
                'purchase_order_id' => $po_detail->purchase_order_id,
                'purchase_order_detail_id' => $po_detail->id,
                'raw_material_id'   => $po_detail->raw_material_id,
                'unit_id'           => $po_detail->unit_id,
                'challan_no_mannual'   => $po_detail->challan_no_mannual,
                'production_id'     => $production->id,
                'quantity'          => $raw_material['quantity'] + $raw_material['wasted_quantity'],
                'used_quantity'     => $raw_material['quantity'],
                'wasted_quantity'   => $raw_material['wasted_quantity'],
                'price_per_unit'    => $po_detail->price_per_unit,
                'thickness'         => $raw_material['thickness'],
                'size'              => $raw_material['size'],
                'amount'            => $raw_material['quantity'] * $po_detail->price_per_unit,
                'material_type'     => $po_detail->material_type,
                'inventory_item_id' => $inventory_item ? $inventory_item->id : ''
            ]);

            $material_price += ($raw_material['quantity'] * $po_detail->price_per_unit);
        }

        $total_production_cost = $request->total_labour_cost + $request->utility_cost + $request->other_cost + $log_price + $material_price;
        $production->fill([
            'total_production_cost' => $total_production_cost
        ])->save();

        return redirect()->route('productions',['company_id' => $request->route('company_id')])->with([
            'status'    => 'true',
            'message'   => 'Successfully created production.'
        ]);

    }
}
