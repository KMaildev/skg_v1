@extends('layouts.menus.inventory')
@section('content')
@section('cssscript')
@endsection
<div class="card">
    <h5 class="card-header">Fixed Columns</h5>
    <div class="card-datatable text-nowrap">
        <table class="dt-fixedcolumns table table-bordered">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Position</th>
                    <th>Email</th>
                    <th>City</th>
                    <th>Date</th>
                    <th>Salary</th>
                    <th>Age</th>
                    <th>Experience</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
        </table>
    </div>
</div>
@endsection
@section('script')
@endsection
