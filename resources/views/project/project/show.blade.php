@extends('layouts.menus.project')
@section('content')
    <h4 class="breadcrumb-wrapper mb-4">
        <span class="text-muted fw-light">Project /</span> {{ $project->customer_table->project_code ?? '' }}
    </h4>

    <div class="row">
        <div class="col-md-4 col-lg-4 col-xl-4 mb-6 order-0">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="card-title mb-0">Customer Information</h5>
                </div>
                <div class="card-body pb-3">
                    <ul class="p-0 m-0">
                        <li class="d-flex mb-3">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-primary"><i
                                        class='bx bx-user'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Name</p>
                                    <small class="text-muted">{{ $project->customer_table->name ?? '' }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-3">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-info"><i class='bx bx-phone'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Phone</p>
                                    <small class="text-muted">{{ $project->customer_table->phone ?? '' }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-3">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-danger"><i
                                        class='bx bx-mail-send'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Email</p>
                                    <small class="text-muted">{{ $project->customer_table->email ?? '' }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-3">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-success"><i
                                        class='bx bx-map-alt'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Address</p>
                                    <small class="text-muted">{{ $project->customer_table->address ?? '' }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-success">
                                    <i class='bx bx-calendar'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Joined on</p>
                                    <small class="text-muted">
                                        {{ $project->customer_table->created_at->diffForHumans() ?? '' }}
                                    </small>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-md-5 col-lg-5 col-xl-5 mb-6 order-0">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="card-title mb-0">Site Information</h5>
                </div>
                <div class="card-body pb-3">
                    <ul class="p-0 m-0">
                        <li class="d-flex mb-3">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-primary"><i
                                        class='bx bx-map'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Site Location</p>
                                    <small
                                        class="text-muted">{{ $project->customer_table->site_location ?? '-' }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-3">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-info"><i class='bx bx-area'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Building Area</p>
                                    <small
                                        class="text-muted">{{ $project->customer_table->building_area ?? '-' }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-3">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-danger"><i
                                        class='bx bx-building'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Construction Type</p>
                                    <small
                                        class="text-muted">{{ $project->customer_table->construction_type ?? '-' }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-3">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-success">
                                    <i class='bx bx-briefcase'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Job Scope</p>
                                    <small class="text-muted">{{ $project->customer_table->job_scope ?? '-' }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-success">
                                    <i class='bx bx-building-house'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Storeyed (Number of Storeyed)</p>
                                    <small class="text-muted">{{ $project->customer_table->storeyed ?? '-' }}</small>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-xl-3 col-xxl-3 mb-xxl-0 mb-4 order-1 order-lg-0">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Project Status</h5>
                </div>
                <div class="card-body">
                    <ul class="p-0 m-0">

                        <li class="d-flex mb-2 pb-10">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span
                                    class="avatar-initial rounded-circle bg-label-{{ $project->floor_plan_status == 'finished' ? 'success' : 'danger' }}">
                                    <i class='bx bx-{{ $project->floor_plan_status == 'finished' ? 'check' : 'x' }}'></i>
                                </span>
                            </div>
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Floor Plan</span>
                                </div>
                                <div class="progress" style="height:6px;">
                                    <div class="progress-bar bg-{{ $project->floor_plan_status == 'finished' ? 'success' : 'danger' }}"
                                        style="width: 100%" role="progressbar" aria-valuenow="40" aria-valuemin="0"
                                        aria-valuemax="100"></div>
                                </div>
                            </div>
                        </li>

                        <li class="d-flex mb-2 pb-10">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span
                                    class="avatar-initial rounded-circle bg-label-{{ $project->quotation_proposal_status == 'finished' ? 'success' : 'danger' }}">
                                    <i
                                        class='bx bx-{{ $project->quotation_proposal_status == 'finished' ? 'check' : 'x' }}'></i>
                                </span>
                            </div>
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Quotation Proposal</span>
                                </div>
                                <div class="progress" style="height:6px;">
                                    <div class="progress-bar bg-{{ $project->quotation_proposal_status == 'finished' ? 'success' : 'danger' }}"
                                        style="width: 100%" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                                        aria-valuemax="100"></div>
                                </div>
                            </div>
                        </li>

                        <li class="d-flex mb-2 pb-10">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span
                                    class="avatar-initial rounded-circle bg-label-{{ $project->exterior_design_fees == null ? 'danger' : 'success' }}">
                                    <i class='bx bx-{{ $project->exterior_design_fees == null ? 'x' : 'check' }}'></i>
                                </span>
                            </div>
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Exterior Design Fees</span>
                                </div>
                                <div class="progress" style="height:6px;">
                                    <div class="progress-bar bg-{{ $project->exterior_design_fees == null ? 'danger' : 'success' }}"
                                        style="width: 100%" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                                        aria-valuemax="100"></div>
                                </div>
                            </div>
                        </li>

                        <li class="d-flex mb-2 pb-10">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span
                                    class="avatar-initial rounded-circle bg-label-{{ $project->structure_design_fees == null ? 'danger' : 'success' }}">
                                    <i class='bx bx-{{ $project->structure_design_fees == null ? 'x' : 'check' }}'></i>
                                </span>
                            </div>
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Structure Design Fees </span>
                                </div>
                                <div class="progress" style="height:6px;">
                                    <div class="progress-bar bg-{{ $project->structure_design_fees == null ? 'danger' : 'success' }}"
                                        style="width: 100%" role="progressbar" aria-valuenow="25" aria-valuemin="0"
                                        aria-valuemax="100"></div>
                                </div>
                            </div>
                        </li>

                        <li class="d-flex mb-2 pb-10">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span
                                    class="avatar-initial rounded-circle bg-label-{{ $project->archi_exterior_design_status == 'finished' ? 'success' : 'danger' }}">
                                    <i
                                        class='bx bx-{{ $project->archi_exterior_design_status == 'finished' ? 'check' : 'x' }}'></i>
                                </span>
                            </div>
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Archi Exterior Design </span>
                                </div>
                                <div class="progress" style="height:6px;">
                                    <div class="progress-bar bg-{{ $project->archi_exterior_design_status == 'finished' ? 'success' : 'danger' }}"
                                        style="width: 100%" role="progressbar" aria-valuenow="25" aria-valuemin="0"
                                        aria-valuemax="100"></div>
                                </div>
                            </div>
                        </li>

                        <li class="d-flex mb-2 pb-10">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span
                                    class="avatar-initial rounded-circle bg-label-{{ $project->structure_design_status == 'finished' ? 'success' : 'danger' }}">
                                    <i
                                        class='bx bx-{{ $project->structure_design_status == 'finished' ? 'check' : 'x' }}'></i>
                                </span>
                            </div>
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Structure Design</span>
                                </div>
                                <div class="progress" style="height:6px;">
                                    <div class="progress-bar bg-{{ $project->structure_design_status == 'finished' ? 'success' : 'danger' }}"
                                        style="width: 100%" role="progressbar" aria-valuenow="25" aria-valuemin="0"
                                        aria-valuemax="100"></div>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="row mb-5 py-5">
        <div class="col-md-12">
            <div class="card text-center mb-3">

                <div class="card-header border-bottom">
                    <ul class="nav nav-tabs card-header-tabs" id="nav-tabs" role="tablist">

                        <li class="nav-item">
                            <button class="nav-link active" id="ProcessingFile-tab" data-bs-toggle="tab"
                                data-bs-target="#ProcessingFile" role="tab" aria-controls="ProcessingFile"
                                aria-selected="true">
                                Processing File
                            </button>
                        </li>

                        <li class="nav-item">
                            <button class="nav-link" id="FloorPlan-tab" data-bs-toggle="tab"
                                data-bs-target="#FloorPlan" role="tab" aria-controls="FloorPlan" aria-selected="true">
                                Floor Plan
                            </button>
                        </li>

                        <li class="nav-item">
                            <button class="nav-link" id="QuotationProposal-tab" data-bs-toggle="tab"
                                data-bs-target="#QuotationProposal" role="tab" aria-controls="QuotationProposal"
                                aria-selected="false">Quotation Proposal</button>
                        </li>

                        <li class="nav-item">
                            <button class="nav-link" id="ExteriorDesignFees-tab" data-bs-toggle="tab"
                                data-bs-target="#ExteriorDesignFees" role="tab" aria-controls="profile"
                                aria-selected="false">Exterior Design Fees</button>
                        </li>

                        <li class="nav-item">
                            <button class="nav-link" id="profile-tab" data-bs-toggle="tab"
                                data-bs-target="#StructureDesignFees" role="tab" aria-controls="profile"
                                aria-selected="false">Structure Design Fees</button>
                        </li>

                        <li class="nav-item">
                            <button class="nav-link" id="ApprovedBy-tab" data-bs-toggle="tab"
                                data-bs-target="#ApprovedBy" role="tab" aria-controls="profile"
                                aria-selected="false">Approved By</button>
                        </li>

                        <li class="nav-item">
                            <button class="nav-link" id="profile-tab" data-bs-toggle="tab"
                                data-bs-target="#ArchiExteriorDesign" role="tab" aria-controls="profile"
                                aria-selected="false">Archi Exterior Design</button>
                        </li>

                        <li class="nav-item">
                            <button class="nav-link" id="StructureDesign-tab" data-bs-toggle="tab"
                                data-bs-target="#StructureDesign" role="tab" aria-controls="profile"
                                aria-selected="false">Structure Design</button>
                        </li>

                        <li class="nav-item">
                            <button class="nav-link" id="Permit-tab" data-bs-toggle="tab" data-bs-target="#Permit"
                                role="tab" aria-controls="profile" aria-selected="false">Permit</button>
                        </li>

                        <li class="nav-item">
                            <button class="nav-link" id="Contract-tab" data-bs-toggle="tab"
                                data-bs-target="#Contract" role="tab" aria-controls="profile"
                                aria-selected="false">Contract</button>
                        </li>

                    </ul>
                </div>

                <div class="tab-content" id="myTabContent">

                    {{-- Processing File --}}
                    <div class="tab-pane fade show active" id="ProcessingFile" role="tabpanel"
                        aria-labelledby="ProcessingFile-tab">
                        <div class="col-md-12 col-lg-12 col-xl-12 mb-6 order-0">
                            <div class="row">
                                <div class="table-responsive text-nowrap">
                                    <table class="table table-bordered">
                                        <thead class="tbbg">
                                            <tr>
                                                <th style="color: white;">#</th>
                                                <th style="color: white;">File Name</th>
                                                <th style="color: white;">Download</th>
                                                <th style="color: white;">Upload Date</th>
                                                <th style="color: white;">Upload By</th>
                                                @can('project_file_delete')
                                                    <th style="color: white;">Action</th>
                                                @endcan
                                            </tr>
                                        </thead>
                                        <tbody class="table-border-bottom-0">
                                            @if (count($processing_files) > 0)
                                                @foreach ($processing_files as $key => $value)
                                                    <tr>
                                                        <td>
                                                            {{ $key + 1 }}
                                                        </td>

                                                        <td>
                                                            <strong>{{ $value->original_name }}</strong>
                                                        </td>
                                                        <td>
                                                            <a href="{{ Storage::url($value->processing_file) }}"
                                                                download="">
                                                                <i class="fa fa-download fa-lg text-danger"></i>
                                                                <strong>Download</strong>
                                                            </a>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-calendar fa-lg text-success"></i>
                                                            <strong>{{ $value->created_at }}</strong>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-user fa-lg text-success"></i>
                                                            <strong>{{ $value->users_table->name ?? '' }}</strong>
                                                        </td>
                                                        @can('project_file_delete')
                                                            <td>
                                                                <form
                                                                    action="{{ route('processingfile.destroy', $value->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button"
                                                                        class="del_confirm btn btn-danger btn-sm"
                                                                        id="confirm-text">Delete</button>
                                                                </form>
                                                            </td>
                                                        @endcan
                                                    </tr>
                                                @endforeach
                                            @else
                                                <p style="color: red;">Record not found</p>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>


                    {{-- Floor Plan --}}
                    <div class="tab-pane fade" id="FloorPlan" role="tabpanel" aria-labelledby="FloorPlan-tab">
                        <div class="col-md-12 col-lg-12 col-xl-12 mb-6 order-0">
                            <div class="row">
                                <div class="table-responsive text-nowrap">
                                    <table class="table table-bordered">
                                        <thead class="tbbg">
                                            <tr>
                                                <th style="color: white;">#</th>
                                                <th style="color: white;">File Name</th>
                                                <th style="color: white;">Download</th>
                                                <th style="color: white;">Upload Date</th>
                                                <th style="color: white;">Upload By</th>
                                                @can('project_file_delete')
                                                    <th style="color: white;">Action</th>
                                                @endcan
                                            </tr>
                                        </thead>
                                        <tbody class="table-border-bottom-0">
                                            @if (count($floor_plan_images) > 0)
                                                @foreach ($floor_plan_images as $key => $value)
                                                    <tr>
                                                        <td>
                                                            {{ $key + 1 }}
                                                        </td>

                                                        <td>
                                                            <strong>{{ $value->original_name }}</strong>
                                                        </td>
                                                        <td>
                                                            <a href="{{ Storage::url($value->floor_plan_image) }}"
                                                                download="">
                                                                <i class="fa fa-download fa-lg text-danger"></i>
                                                                <strong>Download</strong>
                                                            </a>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-calendar fa-lg text-success"></i>
                                                            <strong>{{ $value->created_at }}</strong>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-user fa-lg text-success"></i>
                                                            <strong>{{ $value->users_table->name ?? '' }}</strong>
                                                        </td>
                                                        @can('project_file_delete')
                                                            <td>
                                                                <form action="{{ route('floorplan.destroy', $value->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button"
                                                                        class="del_confirm btn btn-danger btn-sm"
                                                                        id="confirm-text">Delete</button>
                                                                </form>
                                                            </td>
                                                        @endcan
                                                    </tr>
                                                @endforeach
                                            @else
                                                <p style="color: red;">Record not found</p>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- Quotation Proposal --}}
                    <div class="tab-pane fade" id="QuotationProposal" role="tabpanel"
                        aria-labelledby="QuotationProposal-tab">
                        <div class="col-md-12 col-lg-12 col-xl-12 mb-6 order-0">
                            <div class="row">
                                <div class="table-responsive text-nowrap">
                                    <table class="table table-bordered">
                                        <thead class="tbbg">
                                            <tr>
                                                <th style="color: white;">#</th>
                                                <th style="color: white;">File Name</th>
                                                <th style="color: white;">Download</th>
                                                <th style="color: white;">Upload Date</th>
                                                <th style="color: white;">Upload By</th>
                                                @can('project_file_delete')
                                                    <th style="color: white;">Action</th>
                                                @endcan
                                            </tr>
                                        </thead>
                                        <tbody class="table-border-bottom-0">
                                            @if (count($quotationproposals) > 0)
                                                @foreach ($quotationproposals as $key => $value)
                                                    <tr>
                                                        <td>
                                                            {{ $key + 1 }}
                                                        </td>

                                                        <td>
                                                            <strong>{{ $value->original_name }}</strong>
                                                        </td>
                                                        <td>
                                                            <a href="{{ Storage::url($value->quotation_file) }}"
                                                                download="">
                                                                <i class="fa fa-download fa-lg text-danger"></i>
                                                                <strong>Download</strong>
                                                            </a>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-calendar fa-lg text-success"></i>
                                                            <strong>{{ $value->created_at }}</strong>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-user fa-lg text-success"></i>
                                                            <strong>{{ $value->users_table->name ?? '' }}</strong>
                                                        </td>

                                                        @can('project_file_delete')
                                                            <td>
                                                                <form
                                                                    action="{{ route('quotationproposal.destroy', $value->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button"
                                                                        class="del_confirm btn btn-danger btn-sm"
                                                                        id="confirm-text">Delete</button>
                                                                </form>
                                                            </td>
                                                        @endcan

                                                    </tr>
                                                @endforeach
                                            @else
                                                <p style="color: red;">Record not found</p>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- ExteriorDesignFees --}}
                    <div class="tab-pane fade" id="ExteriorDesignFees" role="tabpanel"
                        aria-labelledby="ExteriorDesignFees-tab">
                        <div class="col-md-12 col-lg-12 col-xl-12 mb-6 order-0">
                            <div class="row">
                                <div class="table-responsive text-nowrap">
                                    <table class="table table-bordered">
                                        <thead class="tbbg">
                                            <tr>
                                                <th style="color: white;">#</th>
                                                <th style="color: white;">File Name</th>
                                                <th style="color: white;">Download</th>
                                                <th style="color: white;">Upload Date</th>
                                                <th style="color: white;">Upload By</th>
                                                @can('project_file_delete')
                                                    <th style="color: white;">Action</th>
                                                @endcan
                                            </tr>
                                        </thead>
                                        <tbody class="table-border-bottom-0">
                                            @if (count($exterior_design_fees) > 0)
                                                @foreach ($exterior_design_fees as $key => $value)
                                                    <tr>
                                                        <td>
                                                            {{ $key + 1 }}
                                                        </td>

                                                        <td>
                                                            <strong>{{ $value->original_name }}</strong>
                                                        </td>
                                                        <td>
                                                            <a href="{{ Storage::url($value->exterior_design_fees) }}"
                                                                download="">
                                                                <i class="fa fa-download fa-lg text-danger"></i>
                                                                <strong>Download</strong>
                                                            </a>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-calendar fa-lg text-success"></i>
                                                            <strong>{{ $value->created_at }}</strong>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-user fa-lg text-success"></i>
                                                            <strong>{{ $value->users_table->name ?? '' }}</strong>
                                                        </td>

                                                        @can('project_file_delete')
                                                            <td>
                                                                <form
                                                                    action="{{ route('exteriordesign.destroy', $value->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button"
                                                                        class="del_confirm btn btn-danger btn-sm"
                                                                        id="confirm-text">Delete</button>
                                                                </form>
                                                            </td>
                                                        @endcan

                                                    </tr>
                                                @endforeach
                                            @else
                                                <p style="color: red;">Record not found</p>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- StructureDesignFees --}}
                    <div class="tab-pane fade" id="StructureDesignFees" role="tabpanel"
                        aria-labelledby="StructureDesignFees-tab">
                        <div class="col-md-12 col-lg-12 col-xl-12 mb-6 order-0">
                            <div class="row">
                                <div class="table-responsive text-nowrap">
                                    <table class="table table-bordered">
                                        <thead class="tbbg">
                                            <tr>
                                                <th style="color: white;">#</th>
                                                <th style="color: white;">File Name</th>
                                                <th style="color: white;">Download</th>
                                                <th style="color: white;">Upload Date</th>
                                                <th style="color: white;">Upload By</th>
                                                @can('project_file_delete')
                                                    <th style="color: white;">Action</th>
                                                @endcan
                                            </tr>
                                        </thead>
                                        <tbody class="table-border-bottom-0">
                                            @if (count($structure_design_fees) > 0)
                                                @foreach ($structure_design_fees as $key => $value)
                                                    <tr>
                                                        <td>
                                                            {{ $key + 1 }}
                                                        </td>

                                                        <td>
                                                            <strong>{{ $value->original_name }}</strong>
                                                        </td>

                                                        <td>
                                                            <a href="{{ Storage::url($value->structure_design_fees) }}"
                                                                download="">
                                                                <i class="fa fa-download fa-lg text-danger"></i>
                                                                <strong>Download</strong>
                                                            </a>
                                                        </td>

                                                        <td>
                                                            <i class="fa fa-calendar fa-lg text-success"></i>
                                                            <strong>{{ $value->created_at }}</strong>
                                                        </td>

                                                        <td>
                                                            <i class="fa fa-user fa-lg text-success"></i>
                                                            <strong>{{ $value->users_table->name ?? '' }}</strong>
                                                        </td>

                                                        @can('project_file_delete')
                                                            <td>
                                                                <form
                                                                    action="{{ route('structuredesignfees.destroy', $value->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button"
                                                                        class="del_confirm btn btn-danger btn-sm"
                                                                        id="confirm-text">Delete</button>
                                                                </form>
                                                            </td>
                                                        @endcan

                                                    </tr>
                                                @endforeach
                                            @else
                                                <p style="color: red;">Record not found</p>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>


                    {{-- ApprovedBy --}}
                    <div class="tab-pane fade" id="ApprovedBy" role="tabpanel" aria-labelledby="ApprovedBy-tab">
                        <div class="col-md-12 col-lg-12 col-xl-12 mb-6 order-0">
                            <div class="row">
                                <div class="table-responsive text-nowrap">
                                    <table class="table table-bordered">
                                        <thead class="tbbg">
                                            <tr>
                                                <th style="color: white;">#</th>
                                                <th style="color: white;">File Name</th>
                                                <th style="color: white;">Download</th>
                                                <th style="color: white;">Upload Date</th>
                                                <th style="color: white;">Upload By</th>
                                                @can('project_file_delete')
                                                    <th style="color: white;">Action</th>
                                                @endcan
                                            </tr>
                                        </thead>
                                        <tbody class="table-border-bottom-0">
                                            @if (count($approved_bies) > 0)
                                                @foreach ($approved_bies as $key => $value)
                                                    <tr>
                                                        <td>
                                                            {{ $key + 1 }}
                                                        </td>

                                                        <td>
                                                            <strong>{{ $value->original_name }}</strong>
                                                        </td>
                                                        <td>
                                                            <a href="{{ Storage::url($value->approved_file) }}"
                                                                download="">
                                                                <i class="fa fa-download fa-lg text-danger"></i>
                                                                <strong>Download</strong>
                                                            </a>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-calendar fa-lg text-success"></i>
                                                            <strong>{{ $value->created_at }}</strong>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-user fa-lg text-success"></i>
                                                            <strong>{{ $value->users_table->name ?? '' }}</strong>
                                                        </td>

                                                        @can('project_file_delete')
                                                            <td>
                                                                <form action="{{ route('approvedby.destroy', $value->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button"
                                                                        class="del_confirm btn btn-danger btn-sm"
                                                                        id="confirm-text">Delete</button>
                                                                </form>
                                                            </td>
                                                        @endcan

                                                    </tr>
                                                @endforeach
                                            @else
                                                <p style="color: red;">Record not found</p>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>


                    {{-- Archi Exterior Design --}}
                    <div class="tab-pane fade" id="ArchiExteriorDesign" role="tabpanel"
                        aria-labelledby="ArchiExteriorDesign-tab">
                        <div class="col-md-12 col-lg-12 col-xl-12 mb-6 order-0">
                            <div class="row">
                                <div class="table-responsive text-nowrap">
                                    <table class="table table-bordered">
                                        <thead class="tbbg">
                                            <tr>
                                                <th style="color: white;">#</th>
                                                <th style="color: white;">File Name</th>
                                                <th style="color: white;">Download</th>
                                                <th style="color: white;">Upload Date</th>
                                                <th style="color: white;">Upload By</th>
                                                @can('project_file_delete')
                                                    <th style="color: white;">Action</th>
                                                @endcan
                                            </tr>
                                        </thead>
                                        <tbody class="table-border-bottom-0">
                                            @if (count($archi_exterior_designs) > 0)
                                                @foreach ($archi_exterior_designs as $key => $value)
                                                    <tr>
                                                        <td>
                                                            {{ $key + 1 }}
                                                        </td>

                                                        <td>
                                                            <strong>{{ $value->original_name }}</strong>
                                                        </td>
                                                        <td>
                                                            <a href="{{ Storage::url($value->archi_exterior_design_file) }}"
                                                                download="">
                                                                <i class="fa fa-download fa-lg text-danger"></i>
                                                                <strong>Download</strong>
                                                            </a>
                                                        </td>

                                                        <td>
                                                            <i class="fa fa-calendar fa-lg text-success"></i>
                                                            <strong>{{ $value->created_at }}</strong>
                                                        </td>

                                                        <td>
                                                            <i class="fa fa-user fa-lg text-success"></i>
                                                            <strong>{{ $value->users_table->name ?? '' }}</strong>
                                                        </td>

                                                        @can('project_file_delete')
                                                            <td>
                                                                <form
                                                                    action="{{ route('archiexteriordesign.destroy', $value->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button"
                                                                        class="del_confirm btn btn-danger btn-sm"
                                                                        id="confirm-text">Delete</button>
                                                                </form>
                                                            </td>
                                                        @endcan

                                                    </tr>
                                                @endforeach
                                            @else
                                                <p style="color: red;">Record not found</p>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>


                    {{-- StructureDesign --}}
                    <div class="tab-pane fade" id="StructureDesign" role="tabpanel" aria-labelledby="StructureDesign-tab">

                        <div class="col-md-12 col-lg-12 col-xl-12 mb-6 order-0">
                            <div class="row">
                                <div class="table-responsive text-nowrap">
                                    <table class="table table-bordered">
                                        <thead class="tbbg">
                                            <tr>
                                                <th style="color: white;">#</th>
                                                <th style="color: white;">File Name</th>
                                                <th style="color: white;">Download</th>
                                                <th style="color: white;">Upload Date</th>
                                                <th style="color: white;">Upload By</th>
                                                @can('project_file_delete')
                                                    <th style="color: white;">Action</th>
                                                @endcan
                                            </tr>
                                        </thead>
                                        <tbody class="table-border-bottom-0">
                                            @if (count($structure_designs) > 0)
                                                @foreach ($structure_designs as $key => $value)
                                                    <tr>
                                                        <td>
                                                            {{ $key + 1 }}
                                                        </td>

                                                        <td>
                                                            <strong>{{ $value->original_name }}</strong>
                                                        </td>
                                                        <td>
                                                            <a href="{{ Storage::url($value->structure_design_file) }}"
                                                                download="">
                                                                <i class="fa fa-download fa-lg text-danger"></i>
                                                                <strong>Download</strong>
                                                            </a>
                                                        </td>

                                                        <td>
                                                            <i class="fa fa-calendar fa-lg text-success"></i>
                                                            <strong>{{ $value->created_at }}</strong>
                                                        </td>

                                                        <td>
                                                            <i class="fa fa-user fa-lg text-success"></i>
                                                            <strong>{{ $value->users_table->name ?? '' }}</strong>
                                                        </td>

                                                        @can('project_file_delete')
                                                            <td>
                                                                <form
                                                                    action="{{ route('structuredesign.destroy', $value->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button"
                                                                        class="del_confirm btn btn-danger btn-sm"
                                                                        id="confirm-text">Delete</button>
                                                                </form>
                                                            </td>
                                                        @endcan
                                                    </tr>
                                                @endforeach
                                            @else
                                                <p style="color: red;">Record not found</p>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>


                    {{-- Permit Proposal --}}
                    <div class="tab-pane fade" id="Permit" role="tabpanel" aria-labelledby="Permit-tab">
                        <div class="col-md-12 col-lg-12 col-xl-12 mb-6 order-0">
                            <div class="row">
                                <div class="table-responsive text-nowrap">
                                    <table class="table table-bordered">
                                        <thead class="tbbg">
                                            <tr>
                                                <th style="color: white;">#</th>
                                                <th style="color: white;">File Name</th>
                                                <th style="color: white;">Download</th>
                                                <th style="color: white;">Upload Date</th>
                                                <th style="color: white;">Upload By</th>
                                                @can('project_file_delete')
                                                    <th style="color: white;">Action</th>
                                                @endcan
                                            </tr>
                                        </thead>
                                        <tbody class="table-border-bottom-0">
                                            @if (count($permits) > 0)
                                                @foreach ($permits as $key => $value)
                                                    <tr>
                                                        <td>
                                                            {{ $key + 1 }}
                                                        </td>

                                                        <td>
                                                            <strong>{{ $value->original_name }}</strong>
                                                        </td>

                                                        <td>
                                                            <a href="{{ Storage::url($value->permit_file) }}"
                                                                download="">
                                                                <i class="fa fa-download fa-lg text-danger"></i>
                                                                <strong>Download</strong>
                                                            </a>
                                                        </td>

                                                        <td>
                                                            <i class="fa fa-calendar fa-lg text-success"></i>
                                                            <strong>{{ $value->created_at }}</strong>
                                                        </td>

                                                        <td>
                                                            <i class="fa fa-user fa-lg text-success"></i>
                                                            <strong>{{ $value->users_table->name ?? '' }}</strong>
                                                        </td>

                                                        @can('project_file_delete')
                                                            <td>
                                                                <form action="{{ route('permit.destroy', $value->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button"
                                                                        class="del_confirm btn btn-danger btn-sm"
                                                                        id="confirm-text">Delete</button>
                                                                </form>
                                                            </td>
                                                        @endcan

                                                    </tr>
                                                @endforeach
                                            @else
                                                <p style="color: red;">Record not found</p>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>


                    {{-- Contract Proposal --}}
                    <div class="tab-pane fade" id="Contract" role="tabpanel" aria-labelledby="Contract-tab">
                        <div class="col-md-12 col-lg-12 col-xl-12 mb-6 order-0">
                            <div class="row">
                                <div class="table-responsive text-nowrap">
                                    <table class="table table-bordered">
                                        <thead class="tbbg">
                                            <tr>
                                                <th style="color: white;">#</th>
                                                <th style="color: white;">File Name</th>
                                                <th style="color: white;">Download</th>
                                                <th style="color: white;">Upload Date</th>
                                                <th style="color: white;">Upload By</th>
                                                @can('project_file_delete')
                                                    <th style="color: white;">Action</th>
                                                @endcan
                                            </tr>
                                        </thead>
                                        <tbody class="table-border-bottom-0">
                                            @if (count($contracts) > 0)
                                                @foreach ($contracts as $key => $value)
                                                    <tr>
                                                        <td>
                                                            {{ $key + 1 }}
                                                        </td>

                                                        <td>
                                                            <strong>{{ $value->original_name }}</strong>
                                                        </td>
                                                        <td>
                                                            <a href="{{ Storage::url($value->contract_file) }}"
                                                                download="">
                                                                <i class="fa fa-download fa-lg text-danger"></i>
                                                                <strong>Download</strong>
                                                            </a>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-calendar fa-lg text-success"></i>
                                                            <strong>{{ $value->created_at }}</strong>
                                                        </td>
                                                        <td>
                                                            <i class="fa fa-user fa-lg text-success"></i>
                                                            <strong>{{ $value->users_table->name ?? '' }}</strong>
                                                        </td>

                                                        @can('project_file_delete')
                                                            <td>
                                                                <form action="{{ route('contract.destroy', $value->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button"
                                                                        class="del_confirm btn btn-danger btn-sm"
                                                                        id="confirm-text">Delete</button>
                                                                </form>
                                                            </td>
                                                        @endcan

                                                    </tr>
                                                @endforeach
                                            @else
                                                <p style="color: red;">Record not found</p>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
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
