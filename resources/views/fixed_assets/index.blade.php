@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Fixed Assets</h5>
                        <div class="card-title-elements ms-auto">
                            @include('layouts.includes.export')

                            <a href="{{ route('fixedassets.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered table-sm" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center; width: 10%;">Item Name</th>
                                <th style="color: white; text-align: center; width: 2%;">Unit</th>
                                <th style="color: white; text-align: center; width: 2%;">Qty</th>
                                <th style="color: white; text-align: center; width: 10%;">Remark</th>
                                <th style="color: white; text-align: center; width: 20%;">Request</th>
                                <th style="color: white; text-align: center; width: 20%;">Approval</th>
                                <th style="color: white; text-align: center; width: 15%;">Voucher</th>
                                <th style="color: white; text-align: center; width: 10%;">Received</th>
                                <th style="color: white; text-align: center; width: 10%;">Unusable</th>
                                <th style="color: white; text-align: center; width: 10%;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @php
                                $all_total_fixed_asset_qty = [];
                            @endphp
                            @foreach ($fixed_assets as $key => $fixed_asset)
                                <tr>
                                    <td style="text-align: center;">
                                        {{ $key + 1 }}
                                    </td>

                                    <td style="text-align: center;">
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
                                            echo number_format($total_fixed_asset_qty, 2);
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
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                        <tr>
                            <th colspan="3">Total</th>
                            <th style="text-align: center; font-weight: bold">
                                @php
                                    $all_total_fixed_asset_qty = array_sum($all_total_fixed_asset_qty);
                                    echo number_format($all_total_fixed_asset_qty, 2);
                                @endphp
                            </th>
                        </tr>
                    </table>
                    {{ $fixed_assets->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
