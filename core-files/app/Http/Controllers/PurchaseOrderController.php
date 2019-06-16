<?php

namespace App\Http\Controllers;

use App\Category;
use App\Model\Company;
use App\Model\Grade;
use App\Model\InventoryItem;
use App\Model\PurchaseOrder;
use App\Model\PurchaseOrderDetail;
use App\Model\PurchaseOrderDetailLog;
use App\Model\RawMaterial;
use App\Model\Unit;
use App\Model\Vendor;
use Carbon\Carbon;
use Illuminate\Http\Request;
use PDF;

class PurchaseOrderController extends Controller
{
    public function index($company_id){
        $purchase_orders = PurchaseOrder::with(['vendor'])->where('company_id','=',$company_id)->orderBy('id','desc')->paginate(10);
        return view('admin.purchase-order.index')->with([
            'purchase_orders'   => $purchase_orders
        ]);
    }

    public function getOrders(Request $request,$company_id){
        $wheres[] = ['company_id','=',$company_id];

        if($request->id){
            $wheres[] = ['id','=',$request->id];
        }
        if($request->challan_no_mannual){
            $wheres[] = ['challan_no_mannual','=',$request->challan_no_mannual];
        }
        if($request->date_from){
            $date_from = Carbon::parse($request->date_from)->format('Y-m-d');
            $wheres[] = ['purchase_date','>=',$date_from];
        }
        if($request->date_to){
            $date_to = Carbon::parse($request->date_to)->format('Y-m-d');
            $wheres[] = ['purchase_date','<=',$date_to];
        }
        if($request->vendor_name){
            $vendor_name = $request->vendor_name;
            $purchase_orders = PurchaseOrder::with(['vendor'])->whereHas('vendor',function($query) use($vendor_name){
                $query->where('name','like','%'.$vendor_name.'%');
            })->where($wheres)->paginate(10);
        }else{
            $purchase_orders = PurchaseOrder::with(['vendor'])->where($wheres)->paginate(10);
        }
        return response()->json($purchase_orders,200);
    }
    public function downloadOrders(Request $request,$company_id){
        $wheres[] = ['company_id','=',$company_id];

        if($request->id){
            $wheres[] = ['id','=',$request->id];
        }
        if($request->challan_no_mannual){
            $wheres[] = ['challan_no_mannual','=',$request->challan_no_mannual];
        }
        if($request->date_from){
            $date_from = Carbon::parse($request->date_from)->format('Y-m-d');
            $wheres[] = ['purchase_date','>=',$date_from];
        }
        if($request->date_to){
            $date_to = Carbon::parse($request->date_to)->format('Y-m-d');
            $wheres[] = ['purchase_date','<=',$date_to];
        }
        if($request->vendor_name){
            $vendor_name = $request->vendor_name;
            $purchase_orders = PurchaseOrder::with(['vendor'])->whereHas('vendor',function($query) use($vendor_name){
                $query->where('name','like','%'.$vendor_name.'%');
            })->where($wheres)->get();
        }else{
            $purchase_orders = PurchaseOrder::with(['vendor'])->where($wheres)->get();
        }

        $company = Company::findOrFail($company_id);
        $pdf = PDF::loadView('pdf.purchase-orders', [
            'purchase_orders'    => $purchase_orders,
            'company'       => $company
        ]);
        return $pdf->stream();
    }

    public function show($company_id,$id){
        $purchase_order = PurchaseOrder::where([
            'company_id'    => $company_id,
            'id'            => $id
        ])->firstOrFail();
        $data = PurchaseOrderDetailLog::where('purchase_order_id','=',$purchase_order->id)
            ->where('company_id','=',$company_id)->get()->groupBy('category_id')->map(function($item,$k){
            return $item->groupBy('grade');
        })->map(function($item,$key){
            $category = Category::find($key);
            return [
                'category'  => $category,
                'data'      => $item
            ];
        });
        //return $data;
        return view('admin.purchase-order.show')->with([
            'purchase_order'    => $purchase_order,
            'log_data'          => $data
        ]);
     }

    public function download($company_id,$id){
        $company = Company::findOrFail($company_id);
        $purchase_order = PurchaseOrder::where([
            'company_id'    => $company_id,
            'id'            => $id
        ])->firstOrFail();
        $pdf = PDF::loadView('pdf.purchase-order', [
            'purchase_order'    => $purchase_order,
            'company'           => $company
        ]);
        return $pdf->stream();
        //return $pdf->download('purchase-order.pdf');
     }

    public function create($company_id){
        $grades = Grade::where('company_id','=',$company_id)->get();
        $raw_materials = RawMaterial::where('company_id','=',$company_id)->get();
        $vendors = Vendor::where('company_id','=',$company_id)->get();
        $categories = Category::where('company_id','=',$company_id)->get();
        return view('admin.purchase-order.create')->with([
            'grades'        => $grades,
            'raw_materials' => $raw_materials,
            'vendors'   => $vendors,
            'categories'    => $categories
        ]);
    }

    public function store(Request $request,$company_id){
        //return $request->all();
        $purchase_order = PurchaseOrder::create($request->only('vendor_id','challan_no_auto','challan_no_mannual','purchase_date'));
        $logs = $request->input('log') ? $request->input('log') : [];
        $amount = 0;
        if(count($logs)){
            $k=1;
            foreach ($logs as $log){
                 $dl = PurchaseOrderDetailLog::create([
                    'purchase_order_id' => $purchase_order->id,
                    'height'            => $log['height'],
                    'radius'            => $log['radius'],
                    'price_per_unit'    => $log['price_per_unit'],
                    'grade'             => $log['grade'],
                    'log_no'            => $k++,
                    'category_id'       => $log['category_id'],
                     'challan_no_mannual'   => $purchase_order->challan_no_mannual
                ]);
                 $amount += $dl->total_price;
            }
        }

        $raw_materials = $request->input('raw_material') ? $request->input('raw_material') : [];
        if(count($raw_materials)){
            foreach ($raw_materials as $raw_material){
                $rm = RawMaterial::findOrFail($raw_material['raw_material_id']);
                $inventory_item = InventoryItem::firstOrCreate([
                    'raw_material_id'   => $rm->id,
                    'size'              => $raw_material['size'],
                    'thickness'         => $raw_material['thickness'],
                    'type'              => $raw_material['type'],
                    'unit_id'           => $rm->unit_id,
                    'company_id'        => $company_id
                ]);
                $po_detail = PurchaseOrderDetail::create([
                    'purchase_order_id' => $purchase_order->id,
                    'inventory_item_id' => $inventory_item->id,
                    'raw_material_id'   => $rm->id,
                    'unit_id'           => $rm->unit_id,
                    'quantity'          => $raw_material['quantity'],
                    'remaining_quantity'=> $raw_material['quantity'],
                    'price_per_unit'    => $raw_material['price'],
                    'amount'            => $raw_material['amount'],
                    'material_type'     => $raw_material['type'],
                    'challan_no_mannual'   => $purchase_order->challan_no_mannual
                ]);

                $amount+= $po_detail->amount;
            }
        }

        $purchase_order->fill([
            'amount'        => $amount,
            'due_amount'    => $amount
        ])->save();

        return redirect()->route('purchase-orders',['company_id' => $request->route('company_id')])->withMessage([
            'status'    => true,
            'text'      => 'Successfully created purchase.'
        ]);


    }

    public function edit($company_id,$id){
        $purchase_order = PurchaseOrder::where([
            'company_id'    => $company_id,
            'id'            => $id
        ])->firstOrFail();

        $grades = Grade::where('company_id','=',$company_id)->get();
        $raw_materials = RawMaterial::where('company_id','=',$company_id)->get();
        $vendors = Vendor::where('company_id','=',$company_id)->get();
        $categories = Category::where('company_id','=',$company_id)->get();

        return view('admin.purchase-order.edit')->with([
            'grades'            => $grades,
            'raw_materials'     => $raw_materials,
            'vendors'           => $vendors,
            'categories'        => $categories,
            'purchase_order'    => $purchase_order,
        ]);
    }

    public function getPurchasedItems($company_id,$id){
        $purchase_order = PurchaseOrder::with(['otherMaterials','rawMaterials','logs'])
            ->where([
                'company_id'    => $company_id,
                'id'            => $id
            ])->firstOrFail();
        return response()->json([
            'rm'   => $purchase_order->raw_materials,
            'om'   => $purchase_order->other_materials,
            'l'    => $purchase_order->logs,
            'v'    => $purchase_order->vendor,
        ],200);
    }

    public function update(Request $request,$company_id,$id){
        $purchase_order = PurchaseOrder::where([
            'company_id'    => $company_id,
            'id'            => $id
        ])->firstOrFail();
        $purchase_order->logs ? $purchase_order->logs->each->delete() : '';
        $purchase_order->otherMaterials ? $purchase_order->otherMaterials->each->delete() : '';
        $purchase_order->rawMaterials ? $purchase_order->rawMaterials->each->delete() : '';
        $purchase_order->update($request->only('vendor_id','challan_no_auto','challan_no_mannual','purchase_date'));
        $logs = $request->input('log') ? $request->input('log') : [];
        $amount = 0;
        if(count($logs)){
            $k=1;
            foreach ($logs as $log){
                 $dl = PurchaseOrderDetailLog::create([
                    'purchase_order_id' => $purchase_order->id,
                    'height'            => $log['height'],
                    'radius'            => $log['radius'],
                    'price_per_unit'    => $log['price_per_unit'],
                    'grade'             => $log['grade'],
                    'log_no'            => $k++,
                    'category_id'       => $log['category_id'],
                     'challan_no_mannual'   => $purchase_order->challan_no_mannual
                ]);
                 $amount += $dl->total_price;
            }
        }

        $raw_materials = $request->input('raw_material') ? $request->input('raw_material') : [];
        if(count($raw_materials)){
            foreach ($raw_materials as $raw_material){
                $rm = RawMaterial::findOrFail($raw_material['raw_material_id']);
                $inventory_item = InventoryItem::firstOrCreate([
                    'raw_material_id'   => $rm->id,
                    'size'              => $raw_material['size'],
                    'thickness'         => $raw_material['thickness'],
                    'type'              => $raw_material['type'],
                    'unit_id'           => $rm->unit_id,
                    'company_id'        => $company_id
                ]);
                $po_detail = PurchaseOrderDetail::create([
                    'purchase_order_id' => $purchase_order->id,
                    'inventory_item_id' => $inventory_item->id,
                    'raw_material_id'   => $rm->id,
                    'unit_id'           => $rm->unit_id,
                    'quantity'          => $raw_material['quantity'],
                    'remaining_quantity'=> $raw_material['quantity'],
                    'price_per_unit'    => $raw_material['price'],
                    'amount'            => $raw_material['amount'],
                    'material_type'     => $raw_material['type'],
                    'challan_no_mannual'   => $purchase_order->challan_no_mannual
                ]);

                $amount+= $po_detail->amount;
            }
        }

        $purchase_order->fill([
            'amount'        => $amount,
            'due_amount'    => $amount
        ])->save();

        return redirect()->route('purchase-orders',['company_id' => $request->route('company_id')])->withMessage([
            'status'    => true,
            'text'      => 'Successfully created purchase.'
        ]);
    }

    public function delete($company_id,$id){
        $purchase_order = PurchaseOrder::where([
            'company_id'    => $company_id,
            'id'            => $id
        ])->firstOrFail();

        $purchase_order->otherMaterials ? $purchase_order->otherMaterials->each->delete() : '';
        $purchase_order->rawMaterials ? $purchase_order->rawMaterials->each->delete() : '';
        $purchase_order->logs ? $purchase_order->logs->each->delete() : '';

        PurchaseOrder::where([
            'company_id'    => $company_id,
            'id'            => $id
        ])->delete();

        return redirect()->route('purchase-orders',['company_id' => $company_id])->withMessage([
            'status'    => true,
            'text'      => 'Successfully deleted purchase.'
        ]);
    }
}
