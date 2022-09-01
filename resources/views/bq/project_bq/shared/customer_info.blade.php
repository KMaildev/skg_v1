<div class="row">
    <div class="col-md-12 col-lg-12 col-xl-12 mb-6 order-0">
        <div class="card">
            <div class="card-header d-flex align-items-center justify-content-between">
                <h5 class="card-title mb-0">Customer Information</h5>
            </div>
            <div class="card-body pb-3">
                <ul class="p-0 m-0">
                    <li class="d-flex mb-3">
                        <div class="avatar avatar-sm flex-shrink-0 me-3">
                            <span class="avatar-initial rounded-circle bg-label-primary">
                                <i class='bx bx-user'></i>
                            </span>
                        </div>
                        <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                                <p class="mb-0 lh-1">Name</p>
                                <small class="text-muted">
                                    {{ $project->projects_table->customer_table->name ?? '' }}
                                </small>
                            </div>
                        </div>
                    </li>
                    <li class="d-flex mb-3">
                        <div class="avatar avatar-sm flex-shrink-0 me-3">
                            <span class="avatar-initial rounded-circle bg-label-info">
                                <i class='bx bx-phone'></i>
                            </span>
                        </div>
                        <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                                <p class="mb-0 lh-1">Phone</p>
                                <small class="text-muted">
                                    {{ $project->projects_table->customer_table->phone ?? '' }}
                                </small>
                            </div>
                        </div>
                    </li>
                    <li class="d-flex mb-3">
                        <div class="avatar avatar-sm flex-shrink-0 me-3">
                            <span class="avatar-initial rounded-circle bg-label-danger">
                                <i class='bx bx-mail-send'></i>
                            </span>
                        </div>
                        <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                                <p class="mb-0 lh-1">Email</p>
                                <small class="text-muted">
                                    {{ $project->projects_table->customer_table->email ?? '' }}
                                </small>
                            </div>
                        </div>
                    </li>
                    <li class="d-flex mb-3">
                        <div class="avatar avatar-sm flex-shrink-0 me-3">
                            <span class="avatar-initial rounded-circle bg-label-success">
                                <i class='bx bx-map-alt'></i>
                            </span>
                        </div>
                        <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                                <p class="mb-0 lh-1">Address</p>
                                <small class="text-muted">
                                    {{ $project->projects_table->customer_table->address ?? '' }}
                                </small>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
