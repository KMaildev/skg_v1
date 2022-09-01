@extends('layouts.menus.engineer')
@section('content')
    <div class="col-md-12 col-xl-12 col-xxl-12 mb-xxl-0  order-2 order-lg-0">

        <div class="card-title header-elements">
            <h5 class="m-0 me-2">Fixed Assets Request</h5>
            <div class="card-title-elements ms-auto">
                <a href="{{ route('engrequest.create') }}" class="dt-button create-new btn btn-primary btn-sm">
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
                            <a class="dropdown-item" href="{{ route('manage_my_request.show', $request_info->id) }}">
                                Item Detail
                            </a>
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
                                                Request code
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                {{ $request_info->request_code }}
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
                                                {{ $request_info->request_date }}
                                            </small>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            {{-- Accept / Reject --}}
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
                                                    'shared.managerequest.engineer.accept_reject_status',
                                                    ['request_info' => $request_info]
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
                                                    'shared.managerequest.engineer.qs_team_check_pass_status',
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
                                                Logistics Team Check & Sent
                                            </p>
                                            <small class="text-muted text-nowrap">
                                                @include(
                                                    'shared.managerequest.engineer.logistics_team_check_sent_status',
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
                                                @if ($request_info->transfer_from_status == 'warehouse')
                                                    {{ $request_info->main_warehouse_table->warehouse_code ?? 'Warehouse' }}
                                                @elseif ($request_info->transfer_from_status == 'other_site')
                                                    {{ $request_info->request_infos_table->customer_table->project_code ?? '' }}
                                                    @
                                                    {{ $request_info->request_infos_table->customer_table->name ?? '' }}
                                                @endif
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
                                                {{ $request_info->customer_table->project_code ?? '' }}
                                                @
                                                {{ $request_info->customer_table->name ?? '' }}
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
                                                    'shared.managerequest.engineer.received_by_engineer_status',
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
