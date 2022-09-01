@extends('layouts.menus.inventory')
@section('content')
    <h4 class="breadcrumb-wrapper">
        <span class="text-muted fw-light">
            Fixed Assets /
        </span>
        {{ $fixed_assets->item_name }}
    </h4>

    <div class="row">

        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            Fixed Assets Purchase Order History
                        </h5>
                    </div>
                </div>

                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered table-sm" id="export_excel" style="margin-bottom: 20px !important">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center; width: 10%;">Referencee</th>
                                <th style="color: white; text-align: center; width: 10%;">Order Date</th>
                                <th style="color: white; text-align: center; width: 5%;">Unit</th>
                                <th style="color: white; text-align: center; width: 7%;">Qty</th>
                                <th style="color: white; text-align: center; width: 7%;">Price</th>
                                <th style="color: white; text-align: center; width: 7%;">Total</th>
                                <th style="color: white; text-align: center; width: 15%;">Remark</th>
                                <th style="color: white; text-align: center; width: 10%;">Representative</th>
                                <th style="color: white; text-align: center; width: 3%;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @php
                                $total_amount = [];
                            @endphp
                            @php
                                $i = 1;
                            @endphp
                            @foreach ($fixed_asset_purchases as $key => $fixed_asset_purchase)
                                <tr>
                                    <td>
                                        {{ $i++ }}
                                    </td>

                                    <td>
                                        {{ $fixed_asset_purchase->reference }}
                                    </td>

                                    <td>
                                        {{ $fixed_asset_purchase->order_date }}
                                    </td>

                                    <td>
                                        {{ $fixed_asset_purchase->fixed_assets_table->unit }}
                                    </td>

                                    <td style="text-align: right; font-weight: bold;">
                                        {{ number_format($fixed_asset_purchase->qty) }}
                                    </td>

                                    <td style="text-align: right; font-weight: bold;">
                                        {{ number_format($fixed_asset_purchase->price, 2) }}
                                    </td>

                                    <td style="text-align: right; font-weight: bold;">
                                        @php
                                            $total = $fixed_asset_purchase->qty * $fixed_asset_purchase->price;
                                            echo number_format($total, 2);
                                            $total_amount[] = $total;
                                        @endphp
                                    </td>

                                    <td>
                                        {{ $fixed_asset_purchase->desciption }}
                                    </td>

                                    <td>
                                        {{ $fixed_asset_purchase->users_table->name }}
                                    </td>

                                    <td style="text-align: center;">
                                        <div class="btn-group">
                                            <button class="btn btn-success btn-xs dropdown-toggle" type="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                Action
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('fixed_assets_purchase.edit', $fixed_asset_purchase->id) }}">
                                                        Edit
                                                    </a>
                                                </li>

                                                <li>
                                                    <form
                                                        action="{{ route('fixed_assets_purchase.destroy', $fixed_asset_purchase->id) }}"
                                                        method="POST">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="button" class="dropdown-item del_confirm"
                                                            id="confirm-text" data-toggle="tooltip">Delete</button>
                                                    </form>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                        <tr>
                            <th colspan="4">Total</th>
                            <th style="text-align: right; font-weight: bold;">
                                {{ number_format($fixed_asset_purchases->sum('qty')) }}
                            </th>
                            <th style="text-align: right; font-weight: bold;">
                                {{ number_format($fixed_asset_purchases->sum('price'), 2) }}
                            </th>
                            <th style="text-align: right; font-weight: bold;">
                                @php
                                    echo number_format(array_sum($total_amount), 2);
                                @endphp
                            </th>
                        </tr>
                    </table>

                    <div class="row">
                        <div class="col-md-8"></div>
                        <div class="col-md-4">
                            <table style="width: 100%">
                                <tr>
                                    <td style="width: 50%; font-weight: bold;">
                                        Purchase Order:
                                    </td>
                                    <td style="width: 50%; font-weight: bold;">
                                        {{ number_format($fixed_asset_purchases->sum('qty')) }}
                                    </td>
                                </tr>

                                <tr>
                                    <td style="width: 50%; font-weight: bold;">
                                        Quantity on Hand:
                                    </td>
                                    <td style="width: 50%; font-weight: bold;">
                                        @php
                                            $purchase_order = $fixed_asset_purchases->sum('qty');
                                            $qty_on_hand = $fixed_assets->qty;
                                            $qty_on_hand_total = $qty_on_hand - $purchase_order;
                                            echo number_format($qty_on_hand_total);
                                        @endphp
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <br><br>
                </div>
            </div>
        </div>
    </div>
@endsection
