@extends('layouts.app')

@section('content')
    <div class="box">
        <div class="box-header">
            <h4>SALES ORDER DETAILS</h4>
        </div>
        <div class="box-body">
            <table class="table table-bordered">
                <tbody>
                <tr>
                    <td><strong>Date : </strong>{{ $sales_order->sold_out_date }}</td>
                    <td><strong>Customer Name : </strong>{{ $sales_order->name }}</td>
                    <td><strong>Contact No : </strong>{{ $sales_order->contact_no }}</td>
                </tr>
                <tr>
                    <td><strong>Total Amount : </strong>{{ $sales_order->total_amount }}</td>
                    <td><strong>Paid Amount : </strong>{{ $sales_order->paid_amount }}</td>
                    <td><strong>Due Amount : </strong>{{ $sales_order->due_amount }}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="box">
        <div class="box-header">
            <h4>SALES PRODUCT DETAILS</h4>
        </div>
        <div class="box-body">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Delivered Qty</th>
                    <th>Returned Qty</th>
                    <th>Received Qty</th>
                    <th>Remaining Qty</th>
                </tr>
                </thead>
                <tbody>
                @foreach($sales_order->purchaseSalesDetails as $detail)
                    <tr>
                        <td>{{ $detail->inventoryItem ? $detail->inventoryItem->materialName() ?? '' : '' }}</td>
                        <td class="text-right">{{ $detail->quantity }}</td>
                        <td class="text-right">{{ $detail->delivered_quantity }}</td>
                        <td class="text-right">{{ $detail->returned_quantity }}</td>
                        <td class="text-right">{{ $detail->received_quantity }}</td>
                        <td class="text-right">{{ $detail->remaining_quantity }}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection


@section('script')


@endsection
