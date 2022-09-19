@extends('layouts.menus.inventory')
@section('content')
    <div class="row">

        <!-- Statistics cards & Revenue Growth Chart -->
        <div class="col-lg-12 col-12">
            <div class="row">

                <div class="col-6 col-md-3 col-lg-3 mb-4">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <div class="avatar mx-auto mb-2">
                                <span class="avatar-initial rounded-circle bg-label-danger">
                                    <i class="bx bx-cart fs-4"></i>
                                </span>
                            </div>
                            <span class="d-block text-nowrap">
                                Fixed Assets
                            </span>
                            <h2 class="mb-0">
                                {{ $total_fixed_assets ?? 0 }}
                            </h2>
                        </div>
                    </div>
                </div>

                <div class="col-6 col-md-3 col-lg-3 mb-4">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <div class="avatar mx-auto mb-2">
                                <span class="avatar-initial rounded-circle bg-label-success">
                                    <i class="bx bx-purchase-tag fs-4"></i>
                                </span>
                            </div>
                            <span class="d-block text-nowrap">
                                Fixed Assets Request
                            </span>
                            <h2 class="mb-0">
                                {{ $total_fixed_assets_request_infos ?? 0 }}
                            </h2>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-3 col-lg-3 mb-4">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <div class="avatar mx-auto mb-2">
                                <span class="avatar-initial rounded-circle bg-label-danger">
                                    <i class="bx bx-cart fs-4"></i>
                                </span>
                            </div>
                            <span class="d-block text-nowrap">
                                Rejected Request
                            </span>
                            <h2 class="mb-0">
                                {{ $total_fixed_assets_reject ?? 0 }}
                            </h2>
                        </div>
                    </div>
                </div>

                <div class="col-6 col-md-3 col-lg-3 mb-4">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <div class="avatar mx-auto mb-2">
                                <span class="avatar-initial rounded-circle bg-label-danger">
                                    <i class="bx bx-cart fs-4"></i>
                                </span>
                            </div>
                            <span class="d-block text-nowrap">
                                Completed Request
                            </span>
                            <h2 class="mb-0">
                                {{ $total_fixed_assets_completed ?? 0 }}
                            </h2>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--/ Statistics cards & Revenue Growth Chart -->


        <!-- Marketing Campaigns -->
        <div class="col-xl-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="card-title mb-0">Today Need</h5>
                    <span style="color: red">
                        in progress
                    </span>
                </div>
                <div class="table-responsive">
                    <table class="table border-top">
                        <thead>
                            <tr>
                                <th>Engineer Request</th>
                                <th>Project</th>
                                <th>Request code </th>
                                <th>Work Scope </th>
                                <th>Request Date </th>
                                <th>Need Date </th>
                                <th>Request Items </th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
        <!--/ Marketing Campaigns -->
    </div>
@endsection
