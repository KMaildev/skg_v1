@extends('layouts.menus.inventory')
@section('content')
    <h4 class="py-3 breadcrumb-wrapper mb-4">
        <span class="text-muted fw-light">Fixed Assets /</span> Voucher
    </h4>
    <div class="card">
        <h5 class="card-header">Files</h5>
        <div class="table-responsive text-nowrap">
            <table class="table table-bordered">
                <thead class="tbbg">
                    <tr>
                        <th style="color: white; width: 1%;">#</th>
                        <th style="color: white; width: 1%;">Approval Qty</th>
                        <th style="color: white; width: 10%;">Approval Date</th>
                        <th style="color: white; width: 10%;">File Name</th>
                        <th style="color: white; width: 10%;">Download</th>
                        <th style="color: white; width: 10%;">Remark</th>
                        <th style="color: white; width: 10%;">Upload Date</th>
                        <th style="color: white; width: 10%;">Upload By</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    @foreach ($fixed_assets_vouchers as $key => $value)
                        <tr>
                            <td>
                                {{ $key + 1 }}
                            </td>

                            <td style="text-align: right">
                                {{ $value->fixed_assets_buy_requests_table->received_qty ?? '' }}
                            </td>

                            <td>
                                {{ $value->fixed_assets_buy_requests_table->approval_date ?? '' }}
                            </td>

                            <td>
                                <img src="{{ asset($value->voucher) }}" alt="" data-enlargeable=""
                                    style="width: 70px; height: 70px;">
                            </td>

                            <td>
                                <a href="{{ asset($value->voucher) }}" download="{{ $value->original_name }}">
                                    <i class="fa fa-download fa-lg text-danger"></i>
                                    <strong>Download</strong>
                                </a>
                            </td>

                            <td>
                                <strong>{{ $value->remark }}</strong>
                            </td>

                            <td>
                                <i class="fa fa-calendar fa-lg text-success"></i>
                                <strong>{{ $value->created_at }}</strong>
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
