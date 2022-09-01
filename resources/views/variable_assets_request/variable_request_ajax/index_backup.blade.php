@extends('layouts.menus.inventory')
@section('content')
    <style>
        .outer-wrapper {
            margin: 10px;
            margin-left: 20px;
            margin-right: 20px;
            border: 1px solid black;
            border-radius: 4px;
            box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.9);
            max-width: fit-content;
            max-height: fit-content;
        }

        .table-wrapper {
            overflow-y: scroll;
            overflow-x: scroll;
            height: fit-content;
            max-height: 66.4vh;
            margin-top: 22px;
            margin: 15px;
            padding-bottom: 20px;
        }


        table {
            min-width: max-content;
            border-collapse: separate;
            border-spacing: 0px;
        }


        table th {
            position: sticky;
            top: 0px;
            background-color: #133b5c;
            color: rgb(241, 245, 179);
            text-align: center;
            font-weight: normal;
            font-size: 18px;
            outline: 0.7px solid black;
            border: 1.5px solid black;
        }

        table th,
        table td {
            padding: 15px;
            padding-top: 10px;
            padding-bottom: 10px;

        }

        table td {
            text-align: left;
            font-size: 15px;
            border: 1px solid rgb(177, 177, 177);
            padding-left: 20px;
        }
    </style>
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12 inner-wrapper">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            Variable Assets Request
                        </h5>
                        <span style="color: red;"> / Beta Page</span>
                        <div class="card-title-elements ms-auto">
                            <div class="card-header-elements ms-auto">
                                <form action="#" method="GET" autocomplete="off">
                                    <input type="text" class="form-control form-control-sm" placeholder="Search"
                                        name="search" />
                                </form>
                            </div>
                            @include('layouts.includes.export')
                        </div>
                    </div>
                </div>

                <div>
                    <div class="outer-wrapper">
                        <div class="table-wrapper">
                            <table>
                                <thead class="tbbg">
                                    <tr class="mytr">
                                        <th>
                                            #
                                        </th>
                                        <th>
                                            Engineer Request
                                        </th>
                                        <th>
                                            Project
                                        </th>
                                        <th>
                                            Request code
                                        </th>
                                        <th>
                                            Work Scope
                                        </th>
                                        <th>
                                            Request Date
                                        </th>
                                        <th>
                                            Need Date
                                        </th>
                                        <th>
                                            Request Items
                                        </th>
                                        <th>
                                            Accept / Reject
                                        </th>
                                        <th>
                                            QS Team Check & Pass
                                        </th>
                                        <th>
                                            Logistics Team Check
                                        </th>
                                        <th>
                                            Management
                                        </th>
                                        <th>
                                            Logistics Team Send
                                        </th>
                                        <th>
                                            Transferred from
                                        </th>
                                        <th>
                                            Transferred to
                                        </th>
                                        <th>
                                            Received by Engineer
                                        </th>
                                        <th>
                                            Actual Voucher
                                        </th>
                                        <th>
                                            Finance
                                        </th>
                                        <th>
                                            Actions
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $i = 1;
                                        $y = 1;
                                    @endphp
                                    @foreach ($eng_request_infos as $key => $request_info)
                                        @if ($request_info->accept_reject_status == 'accept' || $request_info->accept_reject_status == null)
                                            <tr id="{{ $y++ }}" onclick="selectTableRow(this.id, this,'selected')">
                                                <td class="sticky-col first-col mytd">
                                                    {{ $i++ }}
                                                </td>

                                                <td class="sticky-col second-col mytd">
                                                    {{ $request_info->user_table->name ?? '' }}
                                                </td>

                                                <td class="sticky-col three-col mytd">
                                                    {{ $request_info->customer_table->name ?? '' }}
                                                    @
                                                    {{ $request_info->customer_table->project_code ?? '' }}
                                                </td>

                                                <td style="text-align: center" class="mytd">
                                                    {{ $request_info->code }}
                                                </td>

                                                <td style="text-align: center" class="mytd">
                                                    <span class="short">
                                                        @php
                                                            echo substr($request_info->work_scope, 0, 17);
                                                        @endphp
                                                    </span>
                                                    <span class="more">
                                                        {{ $request_info->work_scope }}
                                                    </span>
                                                    <br>
                                                    <a href="#" class="rm">More</a>
                                                </td>

                                                <td style="text-align: center" class="mytd">
                                                    {{ $request_info->date }}
                                                </td>

                                                <td style="text-align: center" class="mytd">
                                                    {{ $request_info->need_date }}
                                                </td>

                                                <td class="mytd">
                                                    <table style="width: 100%" class="sub_table">
                                                        <tr style="background-color: #2e696e; color: white;">
                                                            <th> Items </th>
                                                            <th> Size </th>
                                                            <th> Unit </th>
                                                            <th> Qty </th>
                                                        </tr>
                                                        @foreach ($request_info->variable_request_items_table as $value)
                                                            <tr>
                                                                <td style="text-align: left;">
                                                                    {{ $value->variable_assets_table->item_name }}
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    {{ $value->variable_assets_table->sizes }}

                                                                </td>
                                                                <td style="text-align: center;">
                                                                    {{ $value->variable_assets_table->unit }}
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    {{ $value->quantity }}
                                                                </td>
                                                            </tr>
                                                        @endforeach
                                                    </table>
                                                </td>


                                                {{-- Accept / Reject --}}
                                                <td style="text-align: center" class="mytd">
                                                    @include('shared.variable_assets_request.manager.accept_reject_status',
                                                        ['request_info' => $request_info])
                                                </td>

                                                {{-- QS Team Check & Pass --}}
                                                <td style="text-align: center" class="mytd">
                                                    @include('shared.variable_assets_request.manager.qs_team_check_pass_status',
                                                        ['request_info' => $request_info])
                                                </td>

                                                {{-- Logistics Team Check --}}
                                                <td style="text-align: center" class="mytd">
                                                    @include('shared.variable_assets_request.manager.logistics_team_check_status',
                                                        [
                                                            'request_info' => $request_info,
                                                        ])
                                                </td>

                                                {{-- Management --}}
                                                <td style="text-align: center" class="mytd">
                                                    @include('shared.variable_assets_request.manager.management_accept_reject_status',
                                                        [
                                                            'request_info' => $request_info,
                                                        ])
                                                </td>

                                                {{-- Logistics Team Send --}}
                                                <td class="mytd">
                                                    @include('shared.variable_assets_request.manager.logistics_team_send_status',
                                                        [
                                                            'request_info' => $request_info,
                                                        ])
                                                </td>

                                                {{-- Transferred from --}}
                                                <td class="mytd">
                                                    {{ $request_info->variable_logistics_team_sends_table->main_warehouses_table->warehouse_code ?? '' }}
                                                </td>

                                                {{-- Transferred to --}}
                                                <td class="mytd">
                                                    @if ($request_info->variable_logistics_team_sends_table->transfer_to ?? '')
                                                        {{ $request_info->variable_logistics_team_sends_table->transfer_to ?? '' }}
                                                        @
                                                        {{ $request_info->customer_table->name ?? '' }}
                                                    @endif
                                                </td>

                                                <!-- Received by Engineer -->
                                                <td style="text-align: center; font-size: 13px;" class="mytd">
                                                    @include('shared.variable_assets_request.manager.received_by_engineer_status',
                                                        [
                                                            'request_info' => $request_info,
                                                        ])
                                                </td>

                                                {{-- Actual Voucher --}}
                                                <td style="text-align: center; font-size: 13px;" class="mytd">
                                                    @include('shared.variable_assets_request.manager.variable_actual_voucher',
                                                        ['request_info' => $request_info])
                                                </td>


                                                {{-- Finance --}}
                                                <td style="text-align: center; font-size: 13px;" class="mytd">
                                                    @include('shared.variable_assets_request.manager.variable_finance_payment_slip',
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
                                                                    href="{{ route('variable_assets_request.show', $request_info->id) }}">
                                                                    Detail
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a class="dropdown-item"
                                                                    href="{{ route('change_request_status_completed', $request_info->id) }}">
                                                                    Completed
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endif
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="pseduo-track"></div>
            </div>
        </div>
    </div>
@endsection

@section('script')
@endsection
