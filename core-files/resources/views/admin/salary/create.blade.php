@extends('layouts.app')

@section('content')
    <div class="box">
        <div class="box-header">
            <h3>
                CREATE SALARY
                <a href="{{ route('employee-salaries',['company_id' => Request::segment(2)]) }}" class="btn btn-info btn-sm pull-right flat"> <i class="fa fa-list"></i> Salaries</a>
            </h3>
        </div>
    </div>
    <form action="{{ route('store-salary',['company_id' => Request::segment(2)]) }}" method="post">
        @csrf
        <create-salary :items="{employees: {{ $employees }},apiUrl:'{{ route('get-salary-details',['company_id' => Request::segment(2)]) }}',deductions: {{ $deductions }},bonuses: {{ $bonuses }} }"></create-salary>
    </form>
@endsection


@section('script')
    <script src="{{ asset('core-files/public/js/app.js') }}"></script>
@endsection
