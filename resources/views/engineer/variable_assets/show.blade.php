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
                                <div class="col-md-6 col-lg-6">
                                    <h4>Request code #{{ $request_info->code }}</h4>
                                    <div class="mb-2">
                                        <span class="me-1">Engineer:</span>
                                        <span class="fw-semibold">
                                            {{ $request_info->user_table->name ?? '' }}
                                        </span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Request Date:</span>
                                        <span class="fw-semibold">{{ $request_info->date }}</span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Work Scope:</span>
                                        <span class="fw-semibold">{{ $request_info->work_scope }}</span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Project Code:</span>
                                        <span class="fw-semibold">
                                            {{ $request_info->customer_table->project_code ?? '' }}
                                            @
                                            {{ $request_info->customer_table->name ?? '' }}
                                        </span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Site Location:</span>
                                        <span class="fw-semibold">
                                            {{ $request_info->customer_table->site_location ?? '' }}
                                        </span>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-6">
                                    <h4>Status</h4>
                                    <div class="mb-2">
                                        <span class="me-1">Accept or Reject :</span>
                                        <span class="fw-semibold">
                                            @include('shared.variable_assets_request.details.accept_reject_status',
                                                [
                                                    'request_info' => $request_info,
                                                ])
                                        </span>
                                    </div>

                                    <div class="mb-2">
                                        <span class="me-1">QS Team Check & Pass :</span>
                                        <span class="fw-semibold">
                                            @include('shared.variable_assets_request.details.qs_team_check_pass_status',
                                                ['request_info' => $request_info])
                                        </span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Logistics Team Check:</span>
                                        <span class="fw-semibold">
                                            @include('shared.variable_assets_request.details.logistics_team_check_status',
                                                ['request_info' => $request_info])
                                        </span>
                                    </div>

                                    <div class="mb-2">
                                        <span class="me-1">Management:</span>
                                        <span class="fw-semibold">
                                            @include('shared.variable_assets_request.details.management_status',
                                                ['request_info' => $request_info])
                                        </span>
                                    </div>


                                    <div class="mb-2">
                                        <span class="me-1">Logistics Team Send:</span>
                                        <span class="fw-semibold">
                                            @include('shared.variable_assets_request.details.logistics_team_check_send_status',
                                                ['request_info' => $request_info])
                                        </span>
                                    </div>


                                    <div class="mb-2">
                                        <span class="me-1">Transferred from :</span>
                                        <span class="fw-semibold" style="color: green;">
                                            {{ $request_info->variable_logistics_team_sends_table->main_warehouses_table->warehouse_name ?? '' }}
                                            @
                                            {{ $request_info->variable_logistics_team_sends_table->main_warehouses_table->warehouse_code ?? '' }}
                                        </span>
                                    </div>

                                    <div class="mb-2">
                                        <span class="me-1">Transferred to :</span>
                                        <span class="fw-semibold" style="color: green;">
                                            {{ $request_info->customer_table->project_code ?? '' }}
                                            @
                                            {{ $request_info->customer_table->name ?? '' }}
                                        </span>
                                    </div>

                                    <div class="mb-2">
                                        <span class="me-1">Received by Engineer :</span>
                                        <span class="fw-semibold">
                                            @include('shared.variable_assets_request.details.received_by_engineer_status',
                                                [
                                                    'request_info' => $request_info,
                                                ])
                                        </span>
                                    </div>

                                    <div class="mb-2">
                                        <span class="me-1">Actual Voucher :</span>
                                        <span class="fw-semibold">
                                            @include('shared.variable_assets_request.details.actual_voucher_status',
                                                [
                                                    'request_info' => $request_info,
                                                ])
                                        </span>
                                    </div>


                                    <div class="mb-2">
                                        <span class="me-1">Finance :</span>
                                        <span class="fw-semibold">
                                            @include('shared.variable_assets_request.details.finance_status',
                                                [
                                                    'request_info' => $request_info,
                                                ])
                                        </span>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <hr class="my-0" /><br>
                        <div class="table-responsive">
                            <h6>QS Team Check & Pass</h6>
                            <table class="table table-bordered">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="color: white; text-align: center; width: 1%;">#</th>
                                        <th style="color: white; text-align: center; width: 10%;">Request Items</th>
                                        <th style="color: white; text-align: center; width: 10%;">Size</th>
                                        <th style="color: white; text-align: center; width: 5%;">Request Qty</th>
                                        <th style="color: white; text-align: center; width: 5%;">Passed (Qty)</th>
                                        <th style="color: white; text-align: center; width: 20%;">Remark</th>
                                        <th style="color: white; text-align: center; width: 10%;">QS Team Check & Pass</th>
                                        <th style="color: white; text-align: center; width: 10%;">Action</th>
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

                                            <td>
                                                {{ $item->size ?? '' }}
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

                                            <td style="text-align: center">
                                                @foreach ($item->variable_qs_team_checks_table as $key => $qs_check)
                                                    {{ $qs_check->remark ?? '' }}
                                                @endforeach
                                            </td>

                                            <td style="text-align: center">
                                                {{ $item->qs_team_pass_users_table->name ?? '' }}
                                            </td>

                                            <td>
                                                <a href="">
                                                    Edit
                                                </a>
                                                <a href="">
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tr>
                                    <th colspan="3">Total</th>
                                    <th style="text-align: center; font-weight: bold">
                                        {{ $request_info->variable_request_items_table->sum('quantity') }}
                                    </th>
                                    <th style="text-align: center; font-weight: bold">
                                        {{ $qs_passed_qty_total }}
                                    </th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </table>
                        </div>


                        <div class="table-responsive">
                            <h6>Logistics Team Check</h6>
                            <table style="width: 100%" class="">
                                <tr style="background-color: #2e696e; color: white;">
                                    <td style="background-color: #296166; color: white; width: 1%;"># </td>
                                    <th style="color: white; text-align: center; width: 10%;">Request Items</th>
                                    <th style="color: white; text-align: center; width: 10%;">Size</th>
                                    <th style="color: white; text-align: center; width: 5%;">Qty</th>
                                    <td style="color: white; text-align: center; width: 10%;">Price </td>
                                    <td style="color: white; text-align: center; width: 2%;">Total Amt </td>
                                    <th style="color: white; text-align: center; width: 10%;">Remark</th>
                                    <th style="color: white; text-align: center; width: 10%;">Logistics Team Check</th>
                                    <td style="color: white; text-align: center; width: 2%;">
                                        Action
                                    </td>
                                </tr>
                                @php
                                    $totalAmt = 0;
                                @endphp
                                @foreach ($request_info->variable_logistics_team_checks_table as $key => $variable_logistics_team_check)
                                    <tr>
                                        <td>
                                            {{ $key + 1 }}
                                        </td>

                                        <td>
                                            {{ $variable_logistics_team_check->variable_assets_table->item_name ?? '' }}
                                        </td>

                                        <td>
                                            {{ $item->size ?? '' }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $variable_logistics_team_check->qs_passed_qty }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ number_format($variable_logistics_team_check->price, 2) }}
                                        </td>


                                        <td style="text-align: center;">
                                            {{ number_format($variable_logistics_team_check->qs_passed_qty * $variable_logistics_team_check->price, 2) }}
                                            @php
                                                $totalAmt += $variable_logistics_team_check->qs_passed_qty * $variable_logistics_team_check->price;
                                            @endphp
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $variable_logistics_team_check->remark }}
                                        </td>

                                        <td>
                                            {{ $variable_logistics_team_check->users_table->name ?? '' }}
                                        </td>

                                        <td>
                                            <a href="#">
                                                Edit
                                            </a>

                                            <a href="#">
                                                Delete
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach

                                <tr style="font-weight: bold;">
                                    <td colspan="3">
                                        Total
                                    </td>
                                    <td style="text-align: center; font-weight: bold">
                                        {{ $request_info->variable_logistics_team_checks_table->sum('qs_passed_qty') }}
                                    </td>

                                    <td style="text-align: center; font-weight: bold">
                                        {{ number_format($request_info->variable_logistics_team_checks_table->sum('price'), 2) }}
                                    </td>


                                    <td style="text-align: center; font-weight: bold">
                                        {{ number_format($totalAmt, 2) }}
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr style="background-color: #e2dede; color: black;">
                                    <td colspan="6" style="text-align: left; font-weight: bold">
                                        Total Amount
                                    </td>
                                    <td style="text-align: right;">
                                        {{ number_format($totalAmt, 2) }}
                                    </td>
                                    <td></td>
                                </tr>

                                <tr style="background-color: #e2dede; color: black;">
                                    <td colspan="6" style="text-align: left; font-weight: bold">
                                        Transportation
                                    </td>
                                    <td style="text-align: right;">
                                        {{-- {{ number_format($request_info->variable_payments_table->transportation, 2) ?? '' }} --}}
                                        {{ $request_info->variable_payments_table->transportation ?? 0 }}
                                    </td>
                                    <td></td>
                                </tr>

                                <tr style="background-color: #e2dede; color: black;">
                                    <td colspan="6" style="text-align: left; font-weight: bold">
                                        Labor
                                    </td>
                                    <td style="text-align: right;">
                                        {{-- {{ number_format($request_info->variable_payments_table->labor, 2) }} --}}
                                        {{ $request_info->variable_payments_table->labor ?? 0 }}
                                    </td>
                                    <td></td>
                                </tr>

                                <tr style="background-color: #e2dede; color: black;">
                                    <td colspan="5" style="text-align: left; font-weight: bold">
                                        Banking %
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $request_info->variable_payments_table->banking_percent ?? '' }} %
                                    </td>
                                    <td style="text-align: right;">
                                        @php
                                            $banking_percent = $request_info->variable_payments_table->banking_percent ?? 0;
                                            $banking_amount = ($totalAmt / 100) * $banking_percent;
                                            echo number_format($banking_amount, 2);
                                        @endphp
                                    </td>
                                    <td></td>
                                </tr>

                                <tr style="background-color: #e2dede; color: black;">
                                    <td colspan="6" style="text-align: left; font-weight: bold">
                                        Extra
                                    </td>
                                    <td style="text-align: right;">
                                        {{-- {{ number_format($request_info->variable_payments_table->extra, 2) }} --}}
                                        {{ $request_info->variable_payments_table->extra ?? '' }}
                                    </td>
                                    <td></td>
                                </tr>

                                <tr style="background-color: #727171; color: white;">
                                    <td colspan="6" style="text-align: left; font-weight: bold">
                                        Total
                                    </td>
                                    <td style="text-align: right;">
                                        @php
                                            $transportation = $request_info->variable_payments_table->transportation ?? 0;
                                            $labor = $request_info->variable_payments_table->labor ?? 0;
                                            $extra = $request_info->variable_payments_table->extra ?? 0;
                                            $allTotal = $totalAmt + $transportation + $labor + $banking_amount + $extra;
                                            echo number_format($allTotal, 2);
                                        @endphp
                                    </td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>

    </div>
@endsection
