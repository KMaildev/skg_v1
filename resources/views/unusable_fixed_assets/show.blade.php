@extends('layouts.menus.inventory')
@section('content')
    <h4 class="py-3 breadcrumb-wrapper mb-4">
        <span class="text-muted fw-light">Fixed Assets /</span> Unusable
    </h4>
    <div class="card">
        <h5 class="card-header">Unusable</h5>
        <div class="table-responsive text-nowrap">
            <table class="table table-bordered">
                <thead class="tbbg">
                    <tr>
                        <th style="color: white; widht: 1%;">#</th>
                        <th style="color: white; widht: 7%;">Item Name </th>
                        <th style="color: white; widht: 7%;">Qty</th>
                        <th style="color: white; widht: 20%;">Reason</th>
                        <th style="color: white; widht: 20%;">Remark</th>
                        <th style="color: white; widht: 7%;">Date</th>
                        <th style="color: white; widht: 7%;">Upload By</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    @foreach ($unusable_fixed_assets as $key => $value)
                        <tr>
                            <td>
                                {{ $key + 1 }}
                            </td>
                            <td>
                                {{ $value->fixed_assets_table->item_name ?? '' }}
                            </td>
                            <td style="text-align: right; font-weight: bold">
                                {{ $value->qty ?? 0 }}
                            </td>
                            <td>
                                {{ $value->reason ?? 0 }}
                            </td>
                            <td>
                                {{ $value->remark ?? 0 }}
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
                <tr>
                    <th colspan="2">Total</th>
                    <th style="text-align: right; font-weight: bold">
                        {{ $unusable_fixed_assets->sum('qty') }}
                    </th>
                </tr>
            </table>
        </div>
    </div>
@endsection
