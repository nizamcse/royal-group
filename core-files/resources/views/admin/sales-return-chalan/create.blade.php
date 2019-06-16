@extends('layouts.app')

@section('content')
    <div class="box">
        <div class="box-header">
            <h3 class="text-success">CREATE SALES RETURN CHALAN<a href="{{ route('return-chalans',['company_id' => Request::segment(2),'id' => '']) }}" class="btn btn-sm btn-info flat pull-right"><i class="fa fa-plus-circle"></i>CHALANS</a></h3>
        </div>
    </div>
    <form action="{{ route('store-return-chalan',['company_id' => Request::segment(2)]) }}" method="post">
        {{ csrf_field() }}
        <input type="hidden" name="type" value="1">
        <div class="box">
            <div class="box-body">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="select-sales-order">SALES ORDER</label>
                            <select name="sales_order_id" id="select-sales-order" class="form-control" required>
                                <option value="">---Select Sales Order---</option>
                                @foreach($sales_orders as $sales_order)
                                    <option value="{{ $sales_order->id }}">{{ $sales_order->id }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="po-auto">CHALAN NO AUTO</label>
                            <input type="text" name="chalan_no" class="form-control" value="{{ $ch_auto }}" readonly>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="po-auto">CHALAN NO MANUAL</label>
                            <input type="text" name="chalan_no_manual" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="po-auto">CHALAN DATE</label>
                            <input type="text" name="chalan_date" class="form-control datepicker" placeholder="YYYY-MM-DD" autocomplete="off" required>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="box-header"><h4>SALES ORDER ITEM DETAILS</h4></div>
            <div class="box-body">
                <create-sales-return-chalan ref="getSalesOrderItem" uri="{{ route('sales-order-items',['company_id' => Request::segment(2),'id' => '']) }}"></create-sales-return-chalan>
            </div>
        </div>
    </form>
@endsection


@section('script')
    <script src="{{ asset('core-files/public/js/app.js') }}"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#chalanListTable").dataTable();
            $('.datepicker').datepicker({
                "format": 'yyyy-mm-dd',
                "todayHighlight": true,
                "autoclose": true,
                "startDate": new Date()
            });

        });

    </script>

@endsection
