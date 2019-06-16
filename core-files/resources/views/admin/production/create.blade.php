@extends('layouts.app')

@section('content')
    <div class="box">
        <div class="box-header">
            <h3>
                CREATE PRODUCTION
            </h3>
        </div>
    </div>
    <form action="{{ route('store-production',['company_id' => Request::segment(2)]) }}" method="post">
        @csrf
        <create-production :items="{materials: {{ $materials }},logs: {{ $logs }} }"></create-production>
    </form>
@endsection


@section('script')
    <script src="{{ asset('core-files/public/js/app.js') }}"></script>
@endsection
