@extends('layouts.app')

@section('content')
    <div class="box">
        <div class="box-header">
            <h3>
                CREATE SALES ORDER
            </h3>
        </div>
    </div>
    <form action="{{ route('store-sales-order',['company_id' => Request::segment(2)]) }}" method="post">
        @csrf
        <div class="box">
            <div class="box-header">
                <h4>CUSTOMER DETAILS</h4>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Customer Name</label>
                            <input type="text" class="form-control" name="name" required>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Contact Number</label>
                            <input type="text" class="form-control" name="contact_no" required>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Customer Address</label>
                            <input type="text" class="form-control" name="address" required>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Delivery Date</label>
                            <input type="text" class="form-control datepicker" name="sold_out_date" required>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <create-sales-order :items="{products: {{ $goods }} }"></create-sales-order>
    </form>
@endsection


@section('script')
    <script src="{{ asset('core-files/public/js/app.js') }}"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.datepicker').datepicker({
                "format": 'yyyy-mm-dd',
                "todayHighlight": true,
                "autoclose": true
            });
        });
    </script>

@endsection
