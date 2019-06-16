@extends('layouts.app')

@section('content')
    <div class="box">
        <div class="box-header">
            <h3>
                CREATE VACATION
                <a href="{{ route('vacations',['company_id' => Request::segment(2)]) }}" class="btn btn-info btn-sm pull-right"> <i class="fa fa-list"></i> Vacations</a>
            </h3>
        </div>
    </div>
    <form action="{{ route('store-vacation',['company_id' => Request::segment(2)]) }}" method="post">
        @csrf
        <vacation-form></vacation-form>
    </form>
@endsection


@section('script')
    <script src="{{ asset('core-files/public/js/app.js') }}"></script>
@endsection
