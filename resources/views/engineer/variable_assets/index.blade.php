@extends('layouts.menus.engineer')
@section('content')
    <div class="col-md-12 col-xl-12 col-xxl-12 mb-xxl-0  order-2 order-lg-0">

        <div class="card-title header-elements">
            <h5 class="m-0 me-2">Variable Assets Request</h5>
            <div class="card-title-elements ms-auto">
                <a href="{{ route('engineer_variable_assets.create') }}"
                    class="dt-button create-new btn btn-primary btn-sm">
                    <span>
                        <i class="bx bx-plus me-sm-2"></i>
                        <span class="d-none d-sm-inline-block">
                            Create
                        </span>
                    </span>
                </a>
            </div>
        </div>

        <div class="table-responsive text-nowrap rowheaders table-scroll outer-wrapper" role="region"
            aria-labelledby="HeadersCol" tabindex="0">
            <table class="table table-bordered main-table" id="export_excel">
                <thead class="tbbg">
                    <tr>
                        <th style="color: white; text-align: center; width: 1%; background-color: #2e696e !important">
                            #
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Engineer Request
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Request code
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Work Scope
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Request Date
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Need Date
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Request Items
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Accept / Reject
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            QS Team Check & Pass
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Logistics Team Check & Sent
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Management
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Logistics Team Send
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Transferred from
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Transferred to
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Received by Engineer
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Action
                        </th>

                    </tr>
                </thead>
                <tbody class="table-border-bottom-0" id="tablecontents">
                    @foreach ($eng_request_infos as $key => $request_info)
                        <tr style="background-color: white">

                            <td>
                                {{ $key + 1 }}
                            </td>

                            <td>
                                {{ $request_info->user_table->name ?? '' }}
                            </td>

                            <td>
                                {{ $request_info->code }}
                            </td>

                            <td>
                                <span class="short">
                                    @php
                                        echo substr($request_info->work_scope, 0, 17);
                                    @endphp
                                </span>
                                <span class="more">
                                    {{ $request_info->work_scope }}
                                </span>
                                <a href="#" class="rm">More</a>
                            </td>

                            <td>
                                {{ $request_info->date }}
                            </td>

                            <td>
                                {{ $request_info->need_date }}
                            </td>

                            <td>
                                <table style="width: 100%">
                                    <tr>
                                        <th> Items </th>
                                        <th> Unit </th>
                                        <th> Qty </th>
                                    </tr>
                                    @foreach ($request_info->variable_request_items_table as $value)
                                        <tr>
                                            <td style="text-align: left;">
                                                {{ $value->variable_assets_table->item_name ?? '' }}
                                            </td>
                                            <td style="text-align: center;">
                                                {{ $value->variable_assets_table->unit ?? '' }}
                                            </td>
                                            <td style="text-align: center;">
                                                {{ $value->quantity ?? 0 }}
                                            </td>
                                        </tr>
                                    @endforeach
                                    <tr style="font-weight: bold" hidden>
                                        <td colspan="3">Total:</td>
                                        <td style="text-align: center; font-weight: bold">
                                            {{-- {{ number_format($request_info->variable_request_items_table->sum('quantity')) }} --}}
                                        </td>
                                    </tr>
                                </table>
                            </td>

                            <td>
                                @include('shared.variable_assets_request.engineer.accept_reject_status', [
                                    'request_info' => $request_info,
                                ])
                            </td>

                            <td>
                                @include('shared.variable_assets_request.engineer.qs_team_check_pass_status',
                                    [
                                        'request_info' => $request_info,
                                    ])
                            </td>

                            <td>
                                @include('shared.variable_assets_request.engineer.logistics_team_check_status',
                                    [
                                        'request_info' => $request_info,
                                    ])
                            </td>

                            <td>
                                @include('shared.variable_assets_request.engineer.management_accept_reject_status',
                                    [
                                        'request_info' => $request_info,
                                    ])
                            </td>

                            <td>
                                @include('shared.variable_assets_request.engineer.logistics_team_send_status',
                                    [
                                        'request_info' => $request_info,
                                    ])
                            </td>

                            <td>
                                {{ $request_info->variable_logistics_team_sends_table->main_warehouses_table->warehouse_code ?? '' }}
                            </td>

                            <td>
                                {{ $request_info->variable_logistics_team_sends_table->transfer_to ?? '' }}
                            </td>

                            <td>
                                @include('shared.variable_assets_request.engineer.received_by_engineer_status',
                                    [
                                        'request_info' => $request_info,
                                    ])
                            </td>


                            <td style="text-align: center;" class="mytd">
                                <div class="btn-group">
                                    <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                        Action
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a class="dropdown-item"
                                                href="{{ route('engineer_variable_assets.show', $request_info->id) }}">
                                                Detail
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </td>

                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection

@section('script')
    <script></script>
@endsection
