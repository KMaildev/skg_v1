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

        @foreach ($eng_request_infos as $key => $request_info)
            <div class="card">

                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="card-title m-0 me-2">
                        {{ $request_info->request_code }}
                    </h5>
                    <div class="dropdown">
                        <button class="btn p-0" type="button" id="timelineWapper" data-bs-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="timelineWapper" style="">

                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table mb-1">

                        <tbody>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Engineer Request
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                {{ $request_info->user_table->name ?? '' }}
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Request code
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                {{ $request_info->code }}
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Work Scope
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                {{ $request_info->work_scope }}
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Request Date
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                {{ $request_info->date }}
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Need Date
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                {{ $request_info->need_date }}
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <p class="mb-0 lh-1 text-nowrap">
                                        Request Items
                                    </p>
                                    <table style="width: 100%">
                                        <tr>
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
                                                    {{ $value->size }}
                                                </td>
                                                <td style="text-align: center;">
                                                    {{ $value->variable_assets_table->unit }}
                                                </td>
                                                <td style="text-align: center;">
                                                    {{ $value->quantity }}
                                                </td>
                                            </tr>
                                        @endforeach
                                        <tr style="font-weight: bold">
                                            <td colspan="3">Total:</td>
                                            <td style="text-align: center; font-weight: bold">
                                                {{-- {{ number_format($request_info->variable_request_items_table->sum('quantity')) }} --}}
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Accept / Reject
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                @include(
                                                    'shared.variable_assets_request.engineer.accept_reject_status',
                                                    [
                                                        'request_info' => $request_info,
                                                    ]
                                                )
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                QS Team Check & Pass
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                @include(
                                                    'shared.variable_assets_request.engineer.qs_team_check_pass_status',
                                                    [
                                                        'request_info' => $request_info,
                                                    ]
                                                )
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Logistics Team Check
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                @include(
                                                    'shared.variable_assets_request.engineer.logistics_team_check_status',
                                                    [
                                                        'request_info' => $request_info,
                                                    ]
                                                )
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>



                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Management
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                @include(
                                                    'shared.variable_assets_request.engineer.management_accept_reject_status',
                                                    [
                                                        'request_info' => $request_info,
                                                    ]
                                                )
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Logistics Team Send
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                @include(
                                                    'shared.variable_assets_request.engineer.logistics_team_send_status',
                                                    [
                                                        'request_info' => $request_info,
                                                    ]
                                                )
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Transferred from
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                {{ $request_info->variable_logistics_team_sends_table->main_warehouses_table->warehouse_code ?? '' }}
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Transferred to
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                {{ $request_info->variable_logistics_team_sends_table->transfer_to ?? '' }}
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm flex-shrink-0 me-2">
                                            <span class="avatar-initial rounded-circle bg-label-primary">
                                                <i class="bx bx-check"></i>
                                            </span>
                                        </div>
                                        <div class="">
                                            <p class="mb-0 lh-1 text-nowrap">
                                                Received by Engineer
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                @include(
                                                    'shared.variable_assets_request.engineer.received_by_engineer_status',
                                                    [
                                                        'request_info' => $request_info,
                                                    ]
                                                )
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        @endforeach
    </div>
@endsection

@section('script')
    <script>

    </script>
@endsection
