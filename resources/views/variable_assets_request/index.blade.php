@extends('layouts.menus.inventory')
@section('content')
@section('cssscript')
    <link rel="stylesheet" href="{{ asset('css/variable_assets_table.css') }}" />
@endsection

<div class="col-md-12 col-sm-12 col-lg-12">
    <div class="card">
        <div class="card-body">
            <div class="row gx-3 gy-2 align-items-center">
                <div class="col-md-12">
                    <form action="" autocomplete="off" method="GET">
                        <div class="row">
                            <div class="col-md-4">
                                <form action="{{ route('variable_assets_request.index') }}" autocomplete="off"
                                    method="GET">
                                    <div class="input-group">
                                        <input type="text" class="form-control"
                                            placeholder="Request code / Customer Name / Project Code" name="search">
                                        <button class="btn btn-outline-primary" type="submit" id="button-addon2">
                                            Search
                                        </button>
                                    </div>
                                </form>
                            </div>

                            <div class="col-md-5">
                                <form action="{{ route('variable_assets_request.index') }}" autocomplete="off"
                                    method="GET">
                                    <div class="input-group">
                                        <input type="text" class="form-control date_picker" name="from_date">
                                        <input type="text" class="form-control date_picker" name="to_date">
                                        <input type="submit" class="btn btn-outline-primary" value="Search">
                                    </div>
                                </form>
                            </div>

                            <div class="col-md-3">
                                <div class="input-group">
                                    <form action="{{ route('variable_assets_request.index') }}" autocomplete="off"
                                        method="GET">
                                        <select class="select2 form-select" data-allow-clear="true" name="engineer_id"
                                            id="submit_form">
                                            <option value="">--Please Select--</option>
                                            @foreach ($engineers as $engineer)
                                                <option value="{{ $engineer->id }}">
                                                    {{ $engineer->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </form>
                                    @error('warehouse_code')
                                        <div class="invalid-feedback"> {{ $message }} </div>
                                    @enderror
                                </div>
                            </div>



                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="outer-wrapper">
        <div class="table-wrapper">
            <table>
                <thead>
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
                </thead>
                <tbody>
                    @php
                        $i = 1;
                        $y = 1;
                    @endphp
                    @foreach ($eng_request_infos as $key => $request_info)
                        @if ($request_info->accept_reject_status == 'accept' || $request_info->accept_reject_status == null)
                            <tr>
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
                                    <table style="width: 100%" class="sub_table">
                                        <tr>
                                            <td style="background-color: #296166; color: white;"> Items
                                            </td>
                                            <td style="background-color: #296166; color: white;"> Unit </td>
                                            <td style="background-color: #296166; color: white;"> Qty </td>
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
                                    </table>
                                </td>

                                {{-- Accept / Reject --}}
                                <td style="text-align: center" class="mytd">
                                    @include('shared.variable_assets_request.manager.accept_reject_status',
                                        [
                                            'request_info' => $request_info,
                                        ])
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
                                        [
                                            'request_info' => $request_info,
                                        ])
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

@endsection
@section('script')
<script type="text/javascript"></script>
@endsection
