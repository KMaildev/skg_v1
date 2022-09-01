@extends('layouts.menus.engineer')
@section('content')
    <div class="col-md-12 col-xl-12 col-xxl-12 mb-xxl-0 mb-4 order-2 order-lg-0">
        @foreach ($projects_users as $key => $value)
            @foreach ($value->projects as $project)
                <div class="card">

                    <div class="card-header d-flex align-items-center justify-content-between">
                        <h5 class="card-title m-0 me-2">
                            {{ $project->customer_table->project_code ?? '' }}
                        </h5>
                        <div class="dropdown">
                            <button class="btn p-0" type="button" id="timelineWapper" data-bs-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="timelineWapper" style="">
                                <a class="dropdown-item" href="{{ route('engrequest_create', $project->id) }}">
                                    Request
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
                                                    Customer
                                                </p>
                                                <small class="text-muted text-nowrap">
                                                    {{ $project->customer_table->name ?? '' }}
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
                                                    Phone
                                                </p>
                                                <small class="text-muted text-nowrap">
                                                    {{ $project->customer_table->phone ?? '' }}
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
                                                    Project Code
                                                </p>
                                                <small class="text-muted text-nowrap">
                                                    {{ $project->customer_table->project_code ?? '' }}
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
                                                    Site Location
                                                </p>
                                                <small class="text-muted text-nowrap">
                                                    {{ $project->customer_table->site_location ?? '' }}
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
                                                    Building Area
                                                </p>
                                                <small class="text-muted text-nowrap">
                                                    {{ $project->customer_table->building_area ?? '' }}
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
                                                    Construction Type
                                                </p>
                                                <small class="text-muted text-nowrap">
                                                    {{ $project->customer_table->construction_type ?? '' }}
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
                                                    Job Scope
                                                </p>
                                                <small class="text-muted text-nowrap">
                                                    {{ $project->customer_table->job_scope ?? '' }}
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
                                                    Storeyed
                                                </p>
                                                <small class="text-muted text-nowrap">
                                                    {{ $project->customer_table->storeyed ?? '' }}
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
        @endforeach
    </div>
@endsection
