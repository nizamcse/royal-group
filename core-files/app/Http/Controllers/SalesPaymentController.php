<?php

namespace App\Http\Controllers;

use App\Model\PaymentType;
use App\Model\SalesOrder;
use App\Model\SalesPayment;
use Illuminate\Http\Request;

class SalesPaymentController extends Controller
{
    public function index($company_id){
        $sales_payments = SalesPayment::with(['fields'])->where('company_id','=',$company_id)->get();
        return view('admin.sales-payment.index')->with([
            'sales_payments' => $sales_payments
        ]);
    }

    public function create($company_id){
        $payment_types = PaymentType::with(['fields'])->where('company_id','=',$company_id)->get();
        $sales_orders = SalesOrder::where([
            ['company_id','=',$company_id],
            ['due_amount','>',0]
        ])->get();

        return view('admin.sales-payment.create')->with([
            'payment_types'     => $payment_types,
            'sales_orders'   => $sales_orders
        ]);
    }

    public function store(Request $request,$company_id){
        $sales_payment = SalesPayment::create($request->except('fields'));
        $field_data = [];
        $fields = $request->fields ? $request->fields : [];

        foreach ($fields as $k => $value){
            if(!empty($value)){
                $field_data[$k] = [
                    'field_value'   => $value,
                    'payment_type_field_id' => $k,
                    'sales_payment_id'  => $sales_payment->id,
                    'company_id'    => $company_id
                ];
            }
        }

        $sales_payment->fields()->sync($field_data);
        return redirect()->route('sales-payments',['company_id' => $request->route('company_id')]);
    }
}
