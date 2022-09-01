@extends('layouts.main')
@section('content')
    <div class="row justify-content-center py-5">
        <div class="col-md-8 col-sm-12 col-lg-8">
            <div class="row">

                @can('accept_inventory_module')
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                        <a href="{{ route('inventorydashboard.index') }}">
                            <div class="card">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-md mx-auto mb-3">
                                        <span class="avatar-initial rounded-circle bg-label-danger">
                                            <i class='fa fa-chart-bar fs-3'></i>
                                        </span>
                                    </div>
                                    <span class="d-block mb-1 text-nowrap">Warehouse</span>
                                </div>
                            </div>
                        </a>
                    </div>
                @endcan

                @can('accept_project_module')
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                        <a href="{{ route('projectdashboard.index') }}">
                            <div class="card">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-md mx-auto mb-3">
                                        <span class="avatar-initial rounded-circle bg-label-primary">
                                            <i class='fa fa-building fs-3'></i>
                                        </span>
                                    </div>
                                    <span class="d-block mb-1 text-nowrap">Project</span>
                                </div>
                            </div>
                        </a>
                    </div>
                @endcan

                <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                    <a href="{{ route('bq_dashboard.index') }}">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="avatar avatar-md mx-auto mb-3">
                                    <span class="avatar-initial rounded-circle bg-label-primary">
                                        <i class='fa fa-check fs-3'></i>
                                    </span>
                                </div>
                                <span class="d-block mb-1 text-nowrap">
                                    BQ
                                </span>
                            </div>
                        </div>
                    </a>
                </div>

                @can('accept_purchase_module')
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4" hidden>
                        <a href="{{ route('fixed_assets_purchase.index') }}">
                            <div class="card">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-md mx-auto mb-3">
                                        <span class="avatar-initial rounded-circle bg-label-success">
                                            <i class='bx bx-purchase-tag fs-3'></i>
                                        </span>
                                    </div>
                                    <span class="d-block mb-1 text-nowrap">Purchase</span>
                                </div>
                            </div>
                        </a>
                    </div>
                @endcan

                @can('accept_engineer_module')
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                        <a href="{{ route('engineerdashboard.index') }}">
                            <div class="card">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-md mx-auto mb-3">
                                        <span class="avatar-initial rounded-circle bg-label-info">
                                            <i class="fa fa-user-check fs-3"></i>
                                        </span>
                                    </div>
                                    <span class="d-block mb-1 text-nowrap">Engineer</span>
                                </div>
                            </div>
                        </a>
                    </div>
                @endcan

                @can('accept_accounting_module')
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4" hidden>
                        <a href="{{ route('accountingdashboard.index') }}">
                            <div class="card">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-md mx-auto mb-3">
                                        <span class="avatar-initial rounded-circle bg-label-info">
                                            <i class="fa fa-calculator fs-3"></i>
                                        </span>
                                    </div>
                                    <span class="d-block mb-1 text-nowrap">Accounting</span>
                                </div>
                            </div>
                        </a>
                    </div>
                @endcan

                @can('accept_qs_module')
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4" hidden>
                        <a href="#">
                            <div class="card">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-md mx-auto mb-3">
                                        <span class="avatar-initial rounded-circle bg-label-info">
                                            <i class="fa fa-user-check fs-3"></i>
                                        </span>
                                    </div>
                                    <span class="d-block mb-1 text-nowrap">QS</span>
                                </div>
                            </div>
                        </a>
                    </div>
                @endcan


                @can('accept_sale_module')
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4" hidden>
                        <a href="#">
                            <div class="card">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-md mx-auto mb-3">
                                        <span class="avatar-initial rounded-circle bg-label-info">
                                            <i class="bx bx-purchase-tag fs-3"></i>
                                        </span>
                                    </div>
                                    <span class="d-block mb-1 text-nowrap">Sale</span>
                                </div>
                            </div>
                        </a>
                    </div>
                @endcan


                @can('accept_hr_module')
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                        <a href="{{ route('hrdashboard.index') }}">
                            <div class="card">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-md mx-auto mb-3">
                                        <span class="avatar-initial rounded-circle bg-label-info">
                                            <i class="fa fa-user-check fs-3"></i>
                                        </span>
                                    </div>
                                    <span class="d-block mb-1 text-nowrap">HR</span>
                                </div>
                            </div>
                        </a>
                    </div>
                @endcan


                @can('accept_file_manager_module')
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                        <a href="{{ route('file_manager.index') }}">
                            <div class="card">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-md mx-auto mb-3">
                                        <span class="avatar-initial rounded-circle bg-label-warning">
                                            <i class='bx bx-dock-top fs-3'></i>
                                        </span>
                                    </div>
                                    <span class="d-block mb-1 text-nowrap">File Manager</span>
                                </div>
                            </div>
                        </a>
                    </div>
                @endcan


                @can('accept_setting_module')
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                        <a href="">
                            <div class="card">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-md mx-auto mb-3">
                                        <span class="avatar-initial rounded-circle bg-label-danger">
                                            <i class='fa fa-cogs fs-3'></i>
                                        </span>
                                    </div>
                                    <span class="d-block mb-1 text-nowrap">Setting</span>
                                </div>
                            </div>
                        </a>
                    </div>
                @endcan


                @can('accept_activities_module')
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                        <a href="{{ route('activity.index') }}">
                            <div class="card">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-md mx-auto mb-3">
                                        <span class="avatar-initial rounded-circle bg-label-danger">
                                            <i class='bx bx-history fs-3'></i>
                                        </span>
                                    </div>
                                    <span class="d-block mb-1 text-nowrap">Activities</span>
                                </div>
                            </div>
                        </a>
                    </div>
                @endcan


                <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                    <a href="{{ route('weekly_photo.index') }}">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="avatar avatar-md mx-auto mb-3">
                                    <span class="avatar-initial rounded-circle bg-label-primary">
                                        <i class='bx bx-file fs-3'></i>
                                    </span>
                                </div>
                                <span class="d-block mb-1 text-nowrap">
                                    Weekly photo
                                </span>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                    <a href="{{ route('profile.index') }}">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="avatar avatar-md mx-auto mb-3">
                                    <span class="avatar-initial rounded-circle bg-label-success">
                                        <i class='bx bx-user fs-3'></i>
                                    </span>
                                </div>
                                <span class="d-block mb-1 text-nowrap">Profile</span>
                            </div>
                        </div>
                    </a>
                </div>

            </div>

            <div class="row py-5">
                <div class="col-md-12">
                    <a href="{{ asset('application/skg.apk') }}" download="">
                        Download Android App for <span style="color: red">Engineer</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
@endsection
