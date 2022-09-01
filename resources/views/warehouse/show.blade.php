@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <h4 class="breadcrumb-wrapper">
                <span class="text-muted fw-light">{{ $fixed_asset->item_name }} /</span> Details
            </h4>

            <div class="card">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            <span style="color: red;">{{ $fixed_asset->item_name }}</span>
                            - Request History
                        </h5>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="table-responsive text-nowrap table-scroll-v2 outer-wrapper">
                        <table class="table table-bordered">
                            <thead class="tbbg">
                                <tr>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 1%">#
                                    </th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 10%">
                                        Request Engineer</th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 10%">
                                        Request Code</th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 12%">
                                        Request Date</th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 14%">Work
                                        Scope</th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 17%">Site
                                    </th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 10%">
                                        Accept Reject</th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 14%">
                                        QS Team Check & Pass
                                    </th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 14%">
                                        Logistics Team Check & Sent
                                    </th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 7%">
                                        Request Qty</th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 7%">
                                        Passed (Qty)</th>
                                    <th
                                        style="color: white; background-color: #296166; background-color: #296166; text-align: center; width: 14%">
                                        Received by Engineer
                                    </th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 14%">
                                        Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $passed_qty_total = [];
                                    $request_qty_total = [];
                                @endphp
                                @foreach ($fixed_asset->eng_request_items_table as $key => $request_item)
                                    <tr>
                                        <td>
                                            {{ $key + 1 }}
                                        </td>

                                        <td>
                                            {{ $request_item->users_table->name ?? '' }}
                                        </td>

                                        <td>
                                            {{ $request_item->request_info_table->request_code ?? '' }}
                                        </td>

                                        <td>
                                            {{ $request_item->request_info_table->request_date ?? '' }}
                                        </td>

                                        <td>
                                            {{ $request_item->request_info_table->work_scope ?? '' }}
                                        </td>

                                        <td>
                                            {{ $request_item->customer_table->name ?? '' }}
                                            @
                                            {{ $request_item->customer_table->project_code ?? '' }}
                                        </td>

                                        <td>
                                            @include('shared.managerequest.accept_reject_status', [
                                                'request_info' => $request_item->request_info_table,
                                            ])
                                        </td>

                                        {{-- QS Team Check & Pass --}}
                                        <td style="text-align: center">
                                            @include('shared.managerequest.qs_team_check_pass_status', [
                                                'request_info' => $request_item->request_info_table,
                                            ])
                                        </td>

                                        {{-- Logistics Team Check & Sent --}}
                                        <td style="text-align: center">
                                            @include(
                                                'shared.managerequest.logistics_team_check_sent_status',
                                                ['request_info' => $request_item->request_info_table]
                                            )
                                        </td>

                                        <td style="text-align: right; font-weight: bold;">
                                            @php
                                                $request_qty = $request_item->quantity ?? '';
                                                echo number_format($request_qty);
                                                $request_qty_total[] = $request_qty;
                                            @endphp
                                        </td>

                                        <td style="text-align: right; font-weight: bold;">
                                            @php
                                                $passed_qty = $request_item->qs_team_check_passes_table->sum('qs_passed_qty');
                                                echo number_format($passed_qty);
                                                $passed_qty_total[] = $passed_qty;
                                            @endphp
                                        </td>

                                        {{-- Received by Engineer --}}
                                        <td style="text-align: center">
                                            @include('shared.managerequest.received_by_engineer_status', [
                                                'request_info' => $request_item->request_info_table,
                                            ])
                                        </td>

                                        <td style="text-align: center; font-weight: bold;">
                                            <div class="btn-group">
                                                <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                    data-bs-toggle="dropdown" aria-expanded="false">
                                                    Action
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('managerequest.show', $request_item->request_info_table->id) }}">
                                                            More Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                            <tr>
                                <th colspan="9">Total</th>
                                {{-- Request Qty --}}
                                <th style="text-align: right; font-weight: bold">
                                    @php
                                        echo number_format(array_sum($request_qty_total));
                                    @endphp
                                </th>

                                {{-- Site On Hand [Total] --}}
                                <th style="text-align: right; font-weight: bold">
                                    @php
                                        echo number_format(array_sum($passed_qty_total));
                                    @endphp
                                </th>
                            </tr>
                        </table>
                    </div>
                    <div class="pseduo-track"></div>
                </div>
            </div>




            {{-- Return History --}}
            <br><br>
            <div class="card ">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            <span style="color: red;">{{ $fixed_asset->item_name }}</span>
                            - Return History
                        </h5>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="table-responsive text-nowrap table-scroll-v2 outer-wrapper">
                        <table class="table table-bordered">
                            <thead class="tbbg">
                                <tr>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 1%">#
                                    </th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 10%">
                                        Return Engineer</th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 10%">
                                        Return Code</th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 12%">
                                        Return Date</th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 17%">
                                        Return From
                                    </th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 10%">
                                        QS Team Check & Pass
                                    </th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 14%">
                                        Logistics Team Check & Sent
                                    </th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 14%">
                                        Received by Store Manager
                                    </th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 7%">
                                        Return Qty</th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 7%">
                                        Passed (Qty)</th>
                                    <th style="color: white; background-color: #296166; text-align: center; width: 14%">
                                        Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $return_qty_total[] = 0;
                                    $return_passed_qty_total[] = 0;
                                @endphp
                                @foreach ($fixed_asset->return_items_table as $key => $return_item)
                                    <tr>
                                        <td>
                                            {{ $key + 1 }}
                                        </td>

                                        <td>
                                            {{ $return_item->users_table->name ?? '' }}
                                        </td>

                                        <td>
                                            {{ $return_item->engineer_return_infos_table->return_code ?? '' }}
                                        </td>

                                        <td>
                                            {{ $return_item->engineer_return_infos_table->return_date ?? '' }}
                                        </td>

                                        <td>
                                            {{ $return_item->engineer_return_infos_table->customer_table->name ?? '' }}
                                            @
                                            {{ $return_item->engineer_return_infos_table->customer_table->project_code ?? '' }}
                                        </td>

                                        <td style="text-align: center">
                                            @include('shared.engineer_return.qs_team_check_pass_status', [
                                                'engineer_return_infos' => $return_item->engineer_return_infos_table,
                                            ])
                                        </td>

                                        <td style="text-align: center">
                                            @include(
                                                'shared.engineer_return.logistics_team_check_sent_status',
                                                ['engineer_return_infos' => $return_item->engineer_return_infos_table]
                                            )
                                        </td>

                                        <td style="text-align: center">
                                            @include(
                                                'shared.engineer_return.received_by_store_manager_status',
                                                ['engineer_return_infos' => $return_item->engineer_return_infos_table]
                                            )
                                        </td>

                                        <td style="text-align: right; font-weight: bold;">
                                            @php
                                                $return_qty = $return_item->quantity ?? 0;
                                                echo number_format($return_qty);
                                                $return_qty_total[] = $return_qty;
                                            @endphp
                                        </td>

                                        <td style="text-align: right; font-weight: bold;">
                                            @php
                                                $return_passed_qty = $return_item->return_qs_team_check_passes_table->qs_passed_qty ?? 0;
                                                echo number_format($return_passed_qty);
                                                $return_passed_qty_total[] = $return_passed_qty;
                                            @endphp
                                        </td>

                                        <td>
                                            <div class="btn-group">
                                                <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                    data-bs-toggle="dropdown" aria-expanded="false">
                                                    Action
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('inventory_engineer_return.show', $return_item->engineer_return_infos_table->id) }}">
                                                            More Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                            <tr>
                                <th colspan="8">Total</th>
                                {{-- Request Qty --}}
                                <th style="text-align: right; font-weight: bold">
                                    @php
                                        echo number_format(array_sum($return_qty_total));
                                    @endphp
                                </th>

                                {{-- Site On Hand [Total] --}}
                                <th style="text-align: right; font-weight: bold">
                                    @php
                                        echo number_format(array_sum($return_passed_qty_total));
                                    @endphp
                                </th>
                            </tr>
                        </table>
                    </div>
                    <div class="pseduo-track"></div>
                </div>
            </div>
        </div>
    </div>
@endsection
