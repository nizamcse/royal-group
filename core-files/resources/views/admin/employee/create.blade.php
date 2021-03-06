@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-header">
                    <h3>Create New Employee <a href="{{ route('employees',['company_id' => Request::segment(2)]) }}" class="btn btn-sm btn-info pull-right">Employee List</a></h3>
                </div>
                <!-- /.panel-heading -->
                <div class="box-body">
                    <form action="{{ route('store-employee',['company_id' => Request::segment(2)]) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Name *</label>
                                            <input type="text" class="form-control" name="name">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Designation</label>
                                            <select name="designation_id" class="form-control">
                                                <option value="">Select Designation</option>
                                                @foreach($designations as $designation)
                                                    <option value="{{ $designation->id }}">{{ $designation->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Contact No *</label>
                                            <input type="text" class="form-control" name="contact_no">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Nid No</label>
                                            <input type="text" class="form-control" name="nid">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Present Address</label>
                                            <input type="text" class="form-control" name="present_address">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Permanent Address</label>
                                            <input type="text" class="form-control" name="permanent_address">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" class="form-control" name="email">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>In Time</label>
                                            <date-time :inputs="{format: 'HH:mm',name: 'in_time' }"></date-time>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Exit Time</label>
                                            <date-time :inputs="{format: 'HH:mm',name: 'exit_time' }"></date-time>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Salary Type</label>
                                            <select name="salary_type" class="form-control" required>
                                                <option value="">Select Salary Type</option>
                                                <option value="1">Hourly</option>
                                                <option value="2">Monthly</option>
                                                <option value="3">Production Base</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Shift</label>
                                            <select name="shift" class="form-control">
                                                <option value="0">Day</option>
                                                <option value="2">Night</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Salary</label>
                                            <input type="text" name="salary" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group user-image-upload">
                                    <img id="preview" src="#" alt="" class="img-responsive">
                                    <input id="photo" type="file" class="form-control" name="photo">
                                </div>
                            </div>
                        </div>
                        <div class="form-group text-right">
                            <button type="submit" class="btn btn-sm btn-info">Create Employee</button>
                        </div>
                    </form>
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
@endsection


@section('styles')
@endsection


@section('script')
    <script src="{{ asset('core-files/public/js/app.js') }}"></script>
    <script>
        $(document).ready(function() {
            function readURL(input) {

                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        $('#preview').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                }
            }

            $("#photo").change(function() {
                console.log("fired");
                readURL(this);
            });
        });
    </script>
@endsection
