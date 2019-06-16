<?php

namespace App\Http\Controllers;

use App\Model\Company;
use App\Model\SalesChalan;
use App\Model\SalesChalanDetail;
use App\Model\SalesOrder;
use App\Model\SalesOrderDetail;
use Carbon\Carbon;
use Illuminate\Http\Request;
use PDF;

class SalesChalanController extends Controller
{
    public function index($company_id){
        $chalans = SalesChalan::where([
            ['company_id','=',$company_id],
            ['type','=',0]
        ])->orderBy('id','desc')->get();
        return view('admin.sales-chalan.index')->with([
            'chalans'   => $chalans
        ]);
    }

    public function getChalan($company_id,$id){
        $chalan = SalesChalan::where([
            'id'            => $id,
            'company_id'    => $company_id
        ])->firstOrFail();
        return view('admin.sales-chalan.details')->with([
            'chalan'    => $chalan
        ]);
    }

    public function create($company_id){

        $date = Carbon::today();
        $pd = count(SalesChalan::all()) + 1;
        $ch_no = 'CH-'.$date->year.'-' . $date->month.'-'. $date->day. '-' .str_pad($pd,4,'0',STR_PAD_LEFT);
        $sales_orders = SalesOrder::where('company_id','=',$company_id)->orderBy('id','desc')->get();
        return view('admin.sales-chalan.create')->with([
            'sales_orders'   => $sales_orders,
            'ch_auto' => $ch_no
        ]);
    }


    public function getSalesOrderItems($company_id,$id){
        $sale_order_items = SalesOrderDetail::with(['good','unit'])->where([
            ['sales_order_id','=',$id],
            ['company_id','=',$company_id]
        ])->get();
        return response()->json($sale_order_items,200);
    }

    public function store(Request $request,$company_id){


        $sales_order = SalesOrder::where([
            'company_id'    => $company_id,
            'id'            => $request->input('sales_order_id')
        ])->firstOrFail();

        $chalan = SalesChalan::create([
            'sales_order_id' => $sales_order->id,
            'chalan_date'   => $request->input('chalan_date'),
            'chalan_no'     => $request->input('chalan_no'),
            'chalan_no_manual' => $request->input('chalan_no_manual'),
            'type'  => $request->input('type') ? $request->input('type') : 0
        ]);

        $created = false;

        foreach ($request->input('sales_od') as $k => $v){
            $od = SalesOrderDetail::findOrFail($v['sales_od_id']);
            if(isset($v['quantity']) && $v['quantity'] > 0){
                SalesChalanDetail::create([
                    'chalan_id' => $chalan->id,
                    'sales_order_details_id' => $od->id,
                    'good_id' => $od->good_id,
                    'received_qty'  => $v['quantity'],
                    'product_amount' => $od->unit_price * $v['quantity'],
                ]);

                $created = true;
            }

        }
        if(!$created)
        {
            $chalan->delete();
            return redirect()->back()->with([
                'message' => [
                    'status'    => 'alert-danger',
                    'text'      => 'Please enter the valid quantity.'
                ]
            ]);
        }


        return redirect()->route('chalans',['company_id' => $request->route('company_id')])->with([
            'message' => [
                'status'    => 'alert-success',
                'text'      => 'Successfully created chalan.'
            ]
        ]);

    }

    public function download($company_id,$id){
        $chalan = SalesChalan::where([
            'company_id'    => $company_id,
            'id'            => $id
        ])->firstOrFail();
        $company = Company::findOrFail($company_id);
        $pdf = PDF::loadView('pdf.chalan', [
            'sales_order'    => $chalan,
            'company'       => $company
        ]);
        return $pdf->stream();
    }

}
