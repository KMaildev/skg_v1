@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Fixed Assets</h5>
                        <div class="card-title-elements ms-auto">

                            <form action="{{ route('fixedassets.index') }}" method="get">
                                <input type="text" placeholder="Search: Item Name" name="q">
                            </form>

                            <a href="{{ route('fixedassets_export') }}" class="dt-button create-new btn btn-success btn-sm">
                                Excel
                            </a>

                            <a href="{{ route('fixedassets.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>

                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap rowheaders table-scroll outer-wrapper" role="region"
                    aria-labelledby="HeadersCol" tabindex="0">
                    <table class="table table-bordered main-table" id="export_excel" style="margin-bottom: 10px">

                        <thead class="tbbg">
                            <tr>
                                <th style="background-color: #296166; color: white; text-align: center; width: 1%;">#</th>
                                <th
                                    style="background-color: #296166 !important; color: white; text-align: center; width: 10%;">
                                    Item
                                    Name</th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 2%;">Unit
                                </th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 2%;">Qty</th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 10%;">Remark
                                </th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 20%;">Request
                                </th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 20%;">
                                    Approval</th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 15%;">Voucher
                                </th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 10%;">
                                    Received</th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 10%;">
                                    Unusable</th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 10%;">Actions
                                </th>
                            </tr>
                        </thead>
                        <tbody class="mytbody table-border-bottom-0 row_position" id="tablecontents">
                            @php
                                $all_total_fixed_asset_qty = [];
                            @endphp
                            @foreach ($fixed_assets as $key => $fixed_asset)
                                <tr>
                                    <td style="text-align: center;">
                                        {{ $key + 1 }}
                                    </td>

                                    <td style="text-align: center; font-size: 13px; font-weight: bold; background-color: #f2f2f2;"
                                        scope="row">
                                        {{ $fixed_asset->item_name ?? '-' }}
                                    </td>

                                    <td style="text-align: center;">
                                        {{ $fixed_asset->unit ?? '-' }}
                                    </td>

                                    <td style="text-align: center;">
                                        @php
                                            $received_qty = $fixed_asset->fixed_assets_buy_requests_table->sum('received_qty');
                                            $fixed_asset_qty = $fixed_asset->qty;
                                            $total_fixed_asset_qty = $received_qty + $fixed_asset_qty;
                                            echo number_format($total_fixed_asset_qty);
                                            $all_total_fixed_asset_qty[] = $total_fixed_asset_qty;
                                        @endphp
                                    </td>

                                    <td style="text-align: center;">
                                        {{ $fixed_asset->desciption }}
                                    </td>

                                    {{-- Request --}}
                                    <td>
                                        @include('fixed_assets.shared.request_form', [
                                            'fixed_asset' => $fixed_asset,
                                        ])
                                    </td>

                                    {{-- Approval --}}
                                    <td>
                                        @include('fixed_assets.shared.approval_status', [
                                            'fixed_asset' => $fixed_asset,
                                        ])
                                    </td>

                                    {{-- Voucher --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include('fixed_assets.status.voucher_status', [
                                            'fixed_asset' => $fixed_asset,
                                        ])
                                    </td>

                                    {{-- Received --}}
                                    <td>
                                        @include('fixed_assets.shared.received_status', [
                                            'fixed_asset' => $fixed_asset,
                                        ])
                                    </td>

                                    <td style="text-align: center; font-size: 13px;">
                                        @include('fixed_assets.status.unusable_status', [
                                            'fixed_asset' => $fixed_asset,
                                        ])
                                    </td>

                                    <td style="text-align: center;">
                                        <div class="btn-group">
                                            <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                Action
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('fixedassets.edit', $fixed_asset->id) }}">
                                                        Edit
                                                    </a>
                                                </li>

                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('fixedassets.show', $fixed_asset->id) }}">
                                                        Details
                                                    </a>
                                                </li>
                                                @can('fixed_assets_delete')
                                                    <li>
                                                        <form action="{{ route('fixedassets.destroy', $fixed_asset->id) }}"
                                                            method="POST">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button type="button" class="dropdown-item del_confirm"
                                                                id="confirm-text" data-toggle="tooltip">
                                                                Delete
                                                            </button>
                                                        </form>
                                                    </li>
                                                @endcan
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
