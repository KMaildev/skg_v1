@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="row invoice-preview">
            <div class="col-xl-12 col-md-12 mb-md-0">
                <div class="card invoice-preview-card m-2">
                    <div class="card-body">
                        <div class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                            <div class="col-md-8 col-lg-8">
                                <h4>Return code #{{ $return_info->return_code }}</h4>
                                <div class="mb-2">
                                    <span class="me-1">Return Engineer:</span>
                                    <span class="fw-semibold">{{ $return_info->user_table->name }}</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Return Date:</span>
                                    <span class="fw-semibold">{{ $return_info->return_date }}</span>
                                </div>

                                <div class="mb-2">
                                    <span class="me-1">Transferred From:</span>
                                    <span class="fw-semibold">
                                        {{ $return_info->customer_table->project_code ?? '' }}
                                        @ 
                                        {{ $return_info->customer_table->name ?? '' }}
                                    </span>
                                </div>

                                <div class="mb-2">
                                    <span class="me-1">Transferred To:</span>
                                    <span class="fw-semibold">
                                        {{ $return_info->return_transfer_info_table->main_warehouses_table->warehouse_name ?? '' }}
                                    </span>
                                </div>
                            </div>

                            <div class="col-md-4 col-lg-4">
                                <h4>Status</h4>
                                <div class="mb-2">
                                    <span class="me-1">QS Team Check & Pass :</span>
                                    <span class="fw-semibold">
                                        @include(
                                            'shared.engineer_return.details.qs_team_check_pass_status',
                                            ['engineer_return_infos' => $return_info]
                                        )
                                    </span>
                                </div>

                                <div class="mb-2">
                                    <span class="me-1">Logistics Team Check & Sent :</span>
                                    <span class="fw-semibold">
                                        @include(
                                            'shared.engineer_return.details.logistics_team_check_sent_status',
                                            [
                                                'engineer_return_infos' => $return_info,
                                            ]
                                        )
                                    </span>
                                </div>

                                <div class="mb-2">
                                    <span class="me-1">Received by Store Manager :</span>
                                    <span class="fw-semibold">
                                        @include(
                                            'shared.engineer_return.details.received_by_store_manager_status',
                                            [
                                                'engineer_return_infos' => $return_info,
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
                                    <th style="color: white; text-align: center; width: 20%;">Return Items</th>
                                    <th style="color: white; text-align: center; width: 20%;">Return Qty</th>
                                    <th style="color: white; text-align: center; width: 20%;">Passed (Qty)</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $PassedQty = 0;
                                @endphp
                                @foreach ($return_info->return_items_table as $key => $return_item_list)
                                    <tr>
                                        <td style="text-align: center;">
                                            {{ $key + 1 }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $return_item_list->fixed_assets_table->item_name }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $return_item_list->quantity }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $return_item_list->return_qs_team_check_passes_table->qs_passed_qty ?? 0 }}
                                            @php
                                                $PassedQty += $return_item_list->return_qs_team_check_passes_table->qs_passed_qty ?? 0;
                                            @endphp
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                            <tr>
                                <th colspan="2">Total</th>
                                <th style="text-align: center; font-weight: bold">
                                    {{ $return_info->return_items_table->sum('quantity') }}
                                </th>

                                <th style="text-align: center; font-weight: bold">
                                    {{ $PassedQty }}
                                </th>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection

@section('script')
    <script>

    </script>
@endsection
