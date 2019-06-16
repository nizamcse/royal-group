<?php

namespace App\Http\Controllers;

use App\Model\Company;
use App\Model\InventoryItem;
use App\Model\PurchaseOrderDetail;
use App\Model\PurchaseSalesDetail;
use App\Model\SalesOrder;
use Illuminate\Http\Request;
use PDF;

class PurchaseSalesController extends Controller
{
    public function index($company_id){
        $sales_orders = SalesOrder::where('company_id','=',$company_id)
            ->whereType(1)
            ->orderBy('sold_out_date','DESC')->get();
        return view('admin.purchase-sales-order.index')->with([
            'sales_orders'  => $sales_orders
        ]);
    }

    public function create($company_id){
        $goods = PurchaseOrderDetail::with(['unit'])->where([
            ['company_id','=', $company_id],
            ['remaining_quantity','>', 0]
        ])->get();
        return view('admin.purchase-sales-order.create')->with([
            'goods' => $goods
        ]);
    }

    public function show($company_id,$id){
        $sales_order = SalesOrder::where([
            ['company_id','=',$company_id],
            ['id','=',$id],
            ['type','=',1]
        ])->firstOrFail();
        return view('admin.purchase-sales-order.show')->with([
            'sales_order'  => $sales_order
        ]);
    }

    public function store(Request $request,$company_id){
        //return $request->all();
        $data = $request->only('name','contact_no','address','sold_out_date','other_charge');
        $data['type'] = 1;
        $sales_order = SalesOrder::create($data);
        $goods = $request->input('goods');
        if(count($goods)){
            $total_price = 0;
            $payable_amount = 0;
            foreach ($goods as $good){
                $po_detail = PurchaseOrderDetail::findOrFail($good['id']);
                $g = InventoryItem::findOrFail($po_detail->inventory_item_id);
                $sub_total = $good['quantity'] * $good['price'];
                $discoun_amount = $sub_total * $good['discount'] * 0.01;
                $sold_sub_total = $sub_total - $discoun_amount;
                PurchaseSalesDetail::create([
                    'sales_order_id'    => $sales_order->id,
                    'inventory_item_id' => $g->id,
                    'po_detail_id'      => $po_detail->id,
                    'unit_id'           => $g->unit_id,
                    'unit_price'        => $good['price'],
                    'sub_total'         => $sold_sub_total,
                    'base_price'        => $sub_total,
                    'quantity'          => $good['quantity'],
                    'discount'          => !empty($good['discount']) ? $good['discount'] : 0,
                    'remaining_quantity'=> $good['quantity']
                ]);
                $total_price+= $sub_total;
                $payable_amount += $sold_sub_total;
            }
            $sales_order->fill([
                'total_amount'  => $payable_amount,
                'due_amount'    => $payable_amount,
                'payable_amount'=> $total_price + $request->other_charge
            ])->save();
        }else{
            return redirect()->back();
        }

        return redirect()->route('purchase-sales-orders',['company_id' => $request->route('company_id')]);
    }

    public function download($company_id,$id){
        $sales_order = SalesOrder::where([
            'company_id'    => $company_id,
            'id'            => $id
        ])->firstOrFail();
        $company = Company::findOrFail($company_id);
        $pdf = PDF::loadView('pdf.purchase-sales-order', [
            'sales_order'    => $sales_order,
            'company'       => $company
        ]);
        return $pdf->stream();
    }
}
