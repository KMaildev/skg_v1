@extends('layouts.menus.inventory')
@section('content')
    <h4 class="py-3 breadcrumb-wrapper mb-4">
        <span class="text-muted fw-light">Variable Assets /</span> View Voucher
    </h4>
    <div class="card">
        <h5 class="card-header">Files</h5>
        <div class="table-responsive text-nowrap">
            <table class="table table-bordered">
                <thead class="tbbg">
                    <tr>
                        <th style="color: white; width: 1%;">#</th>
                        <th style="color: white">File Name</th>
                        <th style="color: white">Photo</th>
                        <th style="color: white">Download</th>
                        <th style="color: white">Remark</th>
                        <th style="color: white">Upload Date</th>
                        <th style="color: white">Upload By</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    @foreach ($variable_actual_vouchers as $key => $value)
                        <tr>
                            <td>
                                {{ $key + 1 }}
                            </td>

                            <td>
                                <strong>{{ $value->original_name }}</strong>
                            </td>

                            <td>
                                <img src="{{ Storage::url($value->actual_voucher_file) }}" alt=""
                                    style="width: 100%; height: 50px; object-fit: cover; background-size: corver;"
                                    data-enlargeable="">
                            </td>

                            <td>
                                <a href="{{ Storage::url($value->actual_voucher_file) }}" download>
                                    <i class="fa fa-download fa-lg text-danger"></i>
                                    <strong>Download</strong>
                                </a>
                            </td>

                            <td>
                                {{ $value->remark ?? '' }}
                            </td>

                            <td>
                                <i class="fa fa-calendar fa-lg text-success"></i>
                                <strong> {{ $value->actual_voucher_upload_date }}</strong>
                            </td>
                            <td>
                                <i class="fa fa-user fa-lg text-success"></i>
                                <strong>{{ $value->users_table->name ?? '' }}</strong>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
