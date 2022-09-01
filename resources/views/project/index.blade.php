@extends('layouts.menus.project')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-lg-12 mb-0">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="card-title m-0 me-2">Activity Timeline</h5>
                    <div class="dropdown">
                        <button class="btn p-0" type="button" id="timelineWapper" data-bs-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="timelineWapper">
                            <a class="dropdown-item" href="javascript:void(0);">Select All</a>
                            <a class="dropdown-item" href="javascript:void(0);">Refresh</a>
                            <a class="dropdown-item" href="javascript:void(0);">Share</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <!-- Activity Timeline -->
                    <ul class="timeline">
                        <li class="timeline-item timeline-item-transparent ps-4">
                            <span class="timeline-point timeline-point-primary"></span>
                            <div class="timeline-event pb-2">
                                <div class="timeline-header mb-1">
                                    <h6 class="mb-0">12 Invoices have been paid</h6>
                                    <small class="text-muted">12 min ago</small>
                                </div>
                                <p class="mb-2">Invoices have been paid to the company</p>
                                <div class="d-flex">
                                    <a href="javascript:void(0)" class="me-3">
                                        <img src="../../assets/img/icons/misc/pdf.png" alt="PDF image" width="23"
                                            class="me-2">
                                        <span class="fw-bold text-body">Invoices.pdf</span>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-item timeline-item-transparent ps-4">
                            <span class="timeline-point timeline-point-warning"></span>
                            <div class="timeline-event pb-2">
                                <div class="timeline-header mb-1">
                                    <h6 class="mb-0">Client Meeting</h6>
                                    <small class="text-muted">45 min ago</small>
                                </div>
                                <p class="mb-2">Project meeting with john @10:15am</p>
                                <div class="d-flex flex-wrap">
                                    <div class="avatar me-3">
                                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                                    </div>
                                    <div>
                                        <h6 class="mb-0">John Doe (Client)</h6>
                                        <span class="text-muted">CEO of Pixinvent</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-item timeline-item-transparent ps-4">
                            <span class="timeline-point timeline-point-info"></span>
                            <div class="timeline-event pb-0">
                                <div class="timeline-header mb-1">
                                    <h6 class="mb-0">Create a new project for client</h6>
                                    <small class="text-muted">2 Day Ago</small>
                                </div>
                                <p class="mb-2">5 team members in a project</p>
                                <div class="d-flex align-items-center avatar-group">
                                    <div class="avatar avatar-sm pull-up" data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom" data-bs-placement="top" title="Vinnie Mostowy">
                                        <img src="../../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle">
                                    </div>
                                    <div class="avatar avatar-sm pull-up" data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom" data-bs-placement="top" title="Marrie Patty">
                                        <img src="../../assets/img/avatars/12.png" alt="Avatar" class="rounded-circle">
                                    </div>
                                    <div class="avatar avatar-sm pull-up" data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom" data-bs-placement="top" title="Jimmy Jackson">
                                        <img src="../../assets/img/avatars/9.png" alt="Avatar" class="rounded-circle">
                                    </div>
                                    <div class="avatar avatar-sm pull-up" data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom" data-bs-placement="top" title="Kristine Gill">
                                        <img src="../../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle">
                                    </div>
                                    <div class="avatar avatar-sm pull-up" data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom" data-bs-placement="top" title="Nelson Wilson">
                                        <img src="../../assets/img/avatars/14.png" alt="Avatar" class="rounded-circle">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-end-indicator">
                            <i class="bx bx-check-circle"></i>
                        </li>
                    </ul>
                    <!-- /Activity Timeline -->
                </div>
            </div>
        </div>
    </div>
@endsection
