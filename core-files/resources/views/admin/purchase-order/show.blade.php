@extends('layouts.app')

@section('content')
    <div class="box">
        <div class="box-header">
            <h4>PURCHASE ORDER DETAILS</h4>
        </div>
        <div class="box-body">
            <table class="table table-bordered">
                <tbody>
                <tr>
                    <td><strong>Date : </strong>{{ $purchase_order->purchase_date }}</td>
                    <td><strong>Vendor : </strong>{{ $purchase_order->vendor->name }}</td>
                    <td><strong>Chalan No : </strong>{{ $purchase_order->challan_no_mannual }}</td>
                </tr>
                <tr>
                    <td><strong>Total Amount : </strong>{{ $purchase_order->amount }}</td>
                    <td><strong>Paid Amount : </strong>{{ $purchase_order->paid_amount }}</td>
                    <td><strong>Due Amount : </strong>{{ $purchase_order->due_amount }}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    @if(count($purchase_order->rawMaterials))
        <div class="box">
            <div class="box-body">
                <table class="table table-bordered list-table">
                    <thead>
                    <tr>
                        <th>Item Name</th>
                        <th>Unit</th>
                        <th class="w-100">Unit Price</th>
                        <th class="w-100">Quantity</th>
                        <th>Amount</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($purchase_order->rawMaterials as $material)
                        <tr>
                            <td>{{ $material->materialName() }}</td>
                            <td>{{ $material->unit ? $material->unit->name : '' }}</td>
                            <td class="w-100">{{ $material->price_per_unit }}</td>
                            <td class="w-100">{{ $material->quantity }}</td>
                            <td class="w-100 text-right">{{ number_format($material->amount,2) }}</td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    @endif
    @if(count($purchase_order->otherMaterials))
        <div class="box">
            <div class="box-body">
                <table class="table table-bordered list-table">
                    <thead>
                    <tr>
                        <th>Item Name</th>
                        <th>Thickness</th>
                        <th>Size</th>
                        <th>Unit</th>
                        <th class="w-100">Unit Price</th>
                        <th class="w-100">Quantity</th>
                        <th>Amount</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($purchase_order->otherMaterials as $material)
                        <tr>
                            <td>{{ $material->materialName() }}</td>
                            <td>{{ $material->rawMaterial->thickness ??  '' }}</td>
                            <td>{{ $material->rawMaterial->size ?? '' }}</td>
                            <td>{{ $material->unit ? $material->unit->name : '' }}</td>
                            <td class="w-100">{{ $material->price_per_unit }}</td>
                            <td class="w-100">{{ $material->quantity }}</td>
                            <td class="w-100 text-right">{{ number_format($material->amount,2) }}</td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    @endif
    @if(count($purchase_order->logs))
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">PURCHASE LOG SUMMARY</h3>
            </div>
            <div class="box-body">
                <table class="table table-bordered list-table">
                    <thead>
                    <tr>
                        <th>Category</th>
                        <th>Grade</th>
                        <th>Quantity</th>
                        <th>Amount</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($log_data as $data)
                        @php
                            $grade_index = 1;
                        @endphp
                        @foreach($data['data'] as $grade => $logs)
                            <tr>
                                @if($grade_index == 1)
                                    <td rowspan="{{ count($data['data'],COUNT_RECURSIVE) }}">{{ $data['category']->name  ?? '' }}</td>
                                @endif
                                <td>{{ $grade }}</td>
                                <td>{{ $logs->sum('quantity') }}</td>
                                <td>{{ number_format($logs->sum('total_price'),2) }}</td>
                            </tr>
                            @php
                                $grade_index++;
                            @endphp
                        @endforeach
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">PURCHASE LOG DETAILS</h3>
            </div>
            <div class="box-body">
                <table class="table table-bordered list-table">
                    <thead>
                    <tr>
                        <th>Category</th>
                        <th>Grade</th>
                        <th>SL NO#</th>
                        <th>Radius</th>
                        <th>Height</th>
                        <th>Quantity</th>
                        <th>Amount</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($log_data as $data)
                        @php
                            $grade_index = 1;
                        @endphp
                        @foreach($data['data'] as $grade => $logs)
                            @php
                                $log_index = 1;
                            @endphp
                            @foreach($logs as $k => $log)
                                <tr>
                                    <td>{{ $data['category']->name  ?? '' }}</td>
                                    <td>{{ $grade }}</td>
                                    <td>{{ $log->log_no }}</td>
                                    <td>{{ $log->radius }}</td>
                                    <td>{{ $log->height }}</td>
                                    <td>{{ $log->quantity }}</td>
                                    <td>{{ number_format($log->total_price,2) }}</td>
                                </tr>
                                @php
                                    $log_index++;
                                @endphp
                            @endforeach
                            @php
                                $grade_index++;
                            @endphp
                        @endforeach
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    @endif
@endsection

