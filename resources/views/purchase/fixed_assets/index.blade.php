@extends('layouts.menus.purchase')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Fixed Assets Purchase</h5>
                        <div class="card-title-elements ms-auto">
                            @include('layouts.includes.export')

                            <a href="{{ route('fixed_assets_purchase.create') }}"
                                class="dt-button create-new btn btn-primary btn-sm">
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
                                <th style="color: white; text-align: center; width: 5%;">Unit</th>
                                <th style="color: white; text-align: center; width: 7%;">Qty</th>
                                <th style="color: white; text-align: center; width: 7%;">Price</th>
                                <th style="color: white; text-align: center; width: 7%;">Total</th>
                                <th style="color: white; text-align: center; width: 10%;">Order Date</th>
                                <th style="color: white; text-align: center; width: 15%;">Remark</th>
                                <th style="color: white; text-align: center; width: 10%;">Representative</th>
                                <th style="color: white; text-align: center; width: 3%;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @php
                                $total_amount = [];
                            @endphp
                            @foreach ($fixed_asset_purchases as $key => $fixed_asset_purchase)
                                <tr>
                                    <td>
                                        {{ $key + 1 }}
                                    </td>

                                    <td>
                                        {{ $fixed_asset_purchase->fixed_assets_table->item_name }}
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
                                        {{ $fixed_asset_purchase->order_date }}
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
                            <th colspan="5">Total</th>
                            <th style="text-align: right; font-weight: bold;">
                                @php
                                    echo number_format(array_sum($total_amount), 2);
                                @endphp
                            </th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
