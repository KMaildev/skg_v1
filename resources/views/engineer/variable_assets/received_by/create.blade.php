@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="row invoice-preview">
            <div class="col-xl-12 col-md-12 mb-md-0">
                @foreach ($eng_request_items as $key => $request_info)
                    <div class="card invoice-preview-card m-2">
                        <div class="card-body">
                            <div
                                class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                                <div>
                                    <h4>Request code #{{ $request_info->code }}</h4>
                                    <div class="mb-2">
                                        <span class="me-1">Request Date:</span>
                                        <span class="fw-semibold">{{ $request_info->date }}</span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Project Code:</span>
                                        <span class="fw-semibold">
                                            {{ $request_info->customer_table->project_code ?? '' }}
                                        </span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Site Location:</span>
                                        <span class="fw-semibold">
                                            {{ $request_info->customer_table->site_location ?? '' }}
                                        </span>
                                    </div>

                                    @if ($request_info->received_by_engineer_status != null)
                                        <div class="mb-2">
                                            <span class="me-1">Status:</span>
                                            <span class="fw-semibold" style="color: green">
                                                {{ $request_info->received_by_engineer_status ?? '' }}
                                                @
                                                {{ $request_info->received_date ?? '' }}
                                                By
                                                {{ $request_info->variable_received_by_engineers_table->users_table->name ?? '' }}
                                            </span>
                                        </div>
                                    @endif

                                </div>
                            </div>
                        </div>

                        <hr class="my-0" />
                        <div class="table-responsive">
                            @if ($request_info->received_by_engineer_status == null)
                                <form autocomplete="off" action="{{ route('store_variable_received_by_engineer') }}"
                                    method="POST" id="create-form">
                                    @csrf
                                    <input type="hidden" value="{{ $request_info->id }}" name="request_info_id" required>

                                    <table class="table-bordered" style="width: 100%;">
                                        <thead class="tbbg">
                                            <tr>
                                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                                <th style="color: white; text-align: center; width: 20%;">Request Items</th>
                                                <th style="color: white; text-align: center; width: 20%;">Request Qty</th>
                                                <th style="color: white; text-align: center; width: 20%;">Passed (Qty)</th>
                                                <th style="color: white; text-align: center; width: 20%;">Received (Qty
                                                    Entry)
                                                </th>
                                                <th style="color: white; text-align: center; width: 20%;">
                                                    Remark
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @php
                                                $qs_passed_qty_total = 0;
                                            @endphp
                                            @foreach ($request_info->variable_request_items_table as $key => $item)
                                                <tr>
                                                    <td>
                                                        {{ $key + 1 }}
                                                    </td>

                                                    <td>
                                                        {{ $item->variable_assets_table->item_name ?? '' }}
                                                    </td>

                                                    <td style="text-align: center">
                                                        {{ $item->quantity }}
                                                    </td>

                                                    <td style="text-align: center">
                                                        @php
                                                            $qs_passed_qty = 0;
                                                        @endphp
                                                        @foreach ($item->variable_qs_team_checks_table as $key => $qs_check)
                                                            @php
                                                                $qs_passed_qty += (float) $qs_check->qs_passed_qty;
                                                                $qs_passed_qty_total += (float) $qs_check->qs_passed_qty;
                                                            @endphp
                                                        @endforeach
                                                        {{ $qs_passed_qty }}
                                                    </td>

                                                    <td style="text-align: center;">
                                                        <input type="hidden" value="{{ $item->id }}"
                                                            name="request_item_id[]">

                                                        <input type="text" value="0" style="text-align:right;"
                                                            name="received_qty[]" class="form-control">
                                                    </td>

                                                    <td>
                                                        <input type="text" style="width: 100%;" name="remark[]"
                                                            class="form-control">
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                        <tr>
                                            <th colspan="2">Total</th>
                                            <th style="text-align: center; font-weight: bold">
                                                {{ $request_info->variable_request_items_table->sum('quantity') }}
                                            </th>
                                            <th style="text-align: center; font-weight: bold">
                                                {{ $qs_passed_qty_total }}
                                            </th>
                                            <td></td>
                                            <th style="text-align: center">
                                                <input type="submit" class="btn btn-success" value="Save">
                                            </th>
                                        </tr>
                                    </table>
                                </form>
                            @else
                                <table class="table-bordered" style="width: 100%;">
                                    <thead class="tbbg">
                                        <tr>
                                            <th style="color: white; text-align: center; width: 1%;">#</th>
                                            <th style="color: white; text-align: center; width: 20%;">Request Items</th>
                                            <th style="color: white; text-align: center; width: 20%;">Request Qty</th>
                                            <th style="color: white; text-align: center; width: 20%;">Passed (Qty)</th>
                                            <th style="color: white; text-align: center; width: 20%;">Received (Qty)
                                            </th>
                                            <th style="color: white; text-align: center; width: 20%;">
                                                Remark
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                            $qs_passed_qty_total = 0;
                                            $totla_received_qty = [];
                                        @endphp
                                        @foreach ($request_info->variable_request_items_table as $key => $item)
                                            <tr>
                                                <td>
                                                    {{ $key + 1 }}
                                                </td>

                                                <td>
                                                    {{ $item->variable_assets_table->item_name ?? '' }}
                                                </td>

                                                <td style="text-align: center">
                                                    {{ $item->quantity }}
                                                </td>

                                                <td style="text-align: center">
                                                    @php
                                                        $qs_passed_qty = 0;
                                                    @endphp
                                                    @foreach ($item->variable_qs_team_checks_table as $key => $qs_check)
                                                        @php
                                                            $qs_passed_qty += (float) $qs_check->qs_passed_qty;
                                                            $qs_passed_qty_total += (float) $qs_check->qs_passed_qty;
                                                        @endphp
                                                    @endforeach
                                                    {{ $qs_passed_qty }}
                                                </td>

                                                <td style="text-align: center;">
                                                    {{ $item->received_qty ?? '' }}
                                                    @php
                                                        $totla_received_qty[] = $item->received_qty ?? 0;
                                                    @endphp
                                                </td>

                                                <td>
                                                    {{ $item->received_remark ?? '' }}
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    <tr>
                                        <th colspan="2">Total</th>
                                        <th style="text-align: center; font-weight: bold">
                                            {{ $request_info->variable_request_items_table->sum('quantity') }}
                                        </th>
                                        <th style="text-align: center; font-weight: bold">
                                            {{ $qs_passed_qty_total }}
                                        </th>
                                        <td style="text-align: center; font-weight: bold">
                                            @php
                                                $totla_received_qty = array_sum($totla_received_qty);
                                                echo number_format($totla_received_qty, 2);
                                            @endphp
                                        </td>
                                    </tr>
                                </table>
                            @endif

                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
