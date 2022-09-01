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
                                    <h4>Request code #{{ $request_info->request_code }}</h4>
                                    <div class="mb-2">
                                        <span class="me-1">Request Date:</span>
                                        <span class="fw-semibold">{{ $request_info->request_date }}</span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Work Scope:</span>
                                        <span class="fw-semibold">{{ $request_info->work_scope }}</span>
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
                                </div>

                                <div class="mb-xl-0 mb-4">
                                    <h4>Status</h4>
                                    <div class="mb-2">
                                        <span class="me-1">Accept or Reject :</span>
                                        <span class="fw-semibold">
                                            @include(
                                                'shared.managerequest.details.accept_reject_status',
                                                ['request_info' => $request_info]
                                            )
                                        </span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">QS Team Check & Pass :</span>
                                        <span class="fw-semibold">
                                            @include(
                                                'shared.managerequest.details.qs_team_check_pass_status',
                                                ['request_info' => $request_info]
                                            )
                                        </span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Logistics Team Check & Sent :</span>
                                        <span class="fw-semibold">
                                            @include(
                                                'shared.managerequest.details.logistics_team_check_sent_status',
                                                ['request_info' => $request_info]
                                            )
                                        </span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Transferred from :</span>
                                        <span class="fw-semibold" style="color: green;">
                                            @if ($request_info->transfer_from_status == 'warehouse')
                                                {{ $request_info->main_warehouse_table->warehouse_code ?? 'Warehouse' }}
                                            @elseif ($request_info->transfer_from_status == 'other_site')
                                                {{ $request_info->request_infos_table->customer_table->project_code ?? '' }}
                                            @endif
                                        </span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Transferred to :</span>
                                        <span class="fw-semibold" style="color: green;">
                                            {{ $request_info->customer_table->project_code ?? '' }}
                                        </span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Received by Engineer :</span>
                                        <span class="fw-semibold">
                                            @include(
                                                'shared.managerequest.details.received_by_engineer_status',
                                                [
                                                    'request_info' => $request_info,
                                                ]
                                            )
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="my-0" />
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="color: white; text-align: center; width: 1%;">#</th>
                                        <th style="color: white; text-align: center; width: 20%;">Request Items</th>
                                        <th style="color: white; text-align: center; width: 20%;">Request Qty</th>
                                        <th style="color: white; text-align: center; width: 20%;">Passed (Qty)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $qs_passed_qty_total = 0;
                                    @endphp
                                    @foreach ($request_info->eng_request_items_table as $key => $item)
                                        <tr>
                                            <td>
                                                {{ $key + 1 }}
                                            </td>
                                            <td>
                                                {{ $item->fixed_assets_table->item_name ?? '' }}
                                            </td>
                                            <td style="text-align: center">
                                                {{ $item->quantity }}
                                            </td>

                                            <td style="text-align: center">
                                                @php
                                                    $qs_passed_qty = 0;
                                                @endphp
                                                @foreach ($item->qs_team_check_passes_table as $key => $qs_check)
                                                    @php
                                                        $qs_passed_qty += (float) $qs_check->qs_passed_qty;
                                                        $qs_passed_qty_total += (float) $qs_check->qs_passed_qty;
                                                    @endphp
                                                @endforeach
                                                {{ $qs_passed_qty }}
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tr>
                                    <th colspan="2">Total</th>
                                    <th style="text-align: center; font-weight: bold">
                                        {{ $request_info->eng_request_items_table->sum('quantity') }}
                                    </th>
                                    <th style="text-align: center; font-weight: bold">
                                        {{ $qs_passed_qty_total }}
                                    </th>
                                </tr>
                            </table>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>

    </div>
@endsection
