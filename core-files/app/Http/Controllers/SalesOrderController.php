<?php

namespace App\Http\Controllers;

use App\Model\Company;
use App\Model\Good;
use App\Model\SalesOrder;
use App\Model\SalesOrderDetail;
use Carbon\Carbon;
use Illuminate\Http\Request;
use PDF;

class SalesOrderController extends Controller
{
    public function index($company_id){
        return view('admin.sales-order.index');
    }

    public function getSalesOrders(Request $request,$company_id){
        $wheres[] = ['company_id','=',$company_id];
        $wheres[] = ['type','=',0];

        if($request->id){
            $wheres[] = ['id','=',$request->id];
        }
        if($request->date_from){
            $date_from = Carbon::parse($request->date_from)->format('Y-m-d');
            $wheres[] = ['sold_out_date','>=',$date_from];
        }
        if($request->date_to){
            $date_to = Carbon::parse($request->date_to)->format('Y-m-d');
            $wheres[] = ['sold_out_date','<=',$date_to];
        }
        if($request->name){
            $name  = $request->name;
            $wheres[] = ['name','like','%'.$name.'%'];
            $wheres[] = ['contact_no','like','%'.$name.'%'];
        }
        $sales_orders = SalesOrder::where($wheres)->orderBy('sold_out_date','DESC')->paginate(10);
        return response()->json($sales_orders,200);
    }

    public function downloadSalesOrders (Request $request,$company_id){
        $wheres[] = ['company_id','=',$company_id];
        $wheres[] = ['type','=',0];

        if($request->id){
            $wheres[] = ['id','=',$request->id];
        }
        if($request->date_from){
            $date_from = Carbon::parse($request->date_from)->format('Y-m-d');
            $wheres[] = ['sold_out_date','>=',$date_from];
        }
        if($request->date_to){
            $date_to = Carbon::parse($request->date_to)->format('Y-m-d');
            $wheres[] = ['sold_out_date','<=',$date_to];
        }
        if($request->name){
            $name  = $request->name;
            $wheres[] = ['name','like','%'.$name.'%'];
            $wheres[] = ['contact_no','like','%'.$name.'%'];
        }
        $sales_orders = SalesOrder::where($wheres)->orderBy('sold_out_date','DESC')->paginate(10);
        $company = Company::findOrFail($company_id);
        $pdf = PDF::loadView('pdf.sales-orders', [
            'sales_orders'    => $sales_orders,
            'company'       => $company
        ]);
        return $pdf->stream();
    }

    public function create(){
        $goods = Good::all();
        return view('admin.sales-order.create')->with([
            'goods' => $goods
        ]);
    }

    public function show($company_id,$id){
        $sales_order = SalesOrder::where([
            ['company_id','=',$company_id],
            ['id','=',$id],
            ['type','=',0]
        ])->firstOrFail();
        return view('admin.sales-order.show')->with([
            'sales_order'  => $sales_order
        ]);
    }

    public function store(Request $request,$company_id){
        //return $request->all();
        $sales_order = SalesOrder::create($request->only('name','contact_no','address','sold_out_date','other_charge'));
        $goods = $request->input('goods');
        if(count($goods)){
            $total_price = 0;
            $payable_amount = 0;
            foreach ($goods as $good){

                $g = Good::findOrFail($good['id']);
                $sub_total = $good['quantity'] * $g->price;
                $discoun_amount = $sub_total * $good['discount'] * 0.01;
                $sold_sub_total = $sub_total - $discoun_amount;
                SalesOrderDetail::create([
                    'sales_order_id'    => $sales_order->id,
                    'good_id'           => $g->id,
                    'unit_id'           => $g->unit_id,
                    'unit_price'        => $g->price,
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

        return redirect()->route('sales-orders',['company_id' => $request->route('company_id')]);
    }

    public function download($company_id,$id){
        $sales_order = SalesOrder::where([
            ['company_id','=',$company_id],
            ['id','=',$id],
            ['type','=',0]
        ])->firstOrFail();
        $company = Company::findOrFail($company_id);
        $pdf = PDF::loadView('pdf.sales-order', [
            'sales_order'    => $sales_order,
            'company'       => $company
        ]);
        return $pdf->stream();
    }
}
