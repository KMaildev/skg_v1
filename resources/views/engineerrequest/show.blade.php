@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="row invoice-preview">

            <div class="col-xl-9 col-md-9 mb-md-0">

                <div class="card invoice-preview-card m-2">
                    <div class="card-body">
                        <div
                            class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                            <div>
                                <h4>Request code #220201</h4>
                                <div class="mb-2">
                                    <span class="me-1">Request Date:</span>
                                    <span class="fw-semibold">2021-12-5</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Work Scope:</span>
                                    <span class="fw-semibold">For Ground Floor</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Project Code:</span>
                                    <span class="fw-semibold">SKG-220101</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Site Location:</span>
                                    <span class="fw-semibold">Nyaung Shwe Township </span>
                                </div>
                            </div>
                            <div class="mb-xl-0 mb-4">
                                <h4>Status</h4>
                                <div class="mb-2">
                                    <span class="me-1">QS Department:</span>
                                    <span class="fw-semibold" style="color: green">Approved</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Ready to Dispatch:</span>
                                    <span class="fw-semibold" style="color: green;">Done</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Dispatch to Site:</span>
                                    <span class="fw-semibold" style="color: green">Yes</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Recevied by Engnieer:</span>
                                    <span class="fw-semibold" style="color: green;">Recevied</span>
                                </div>
                            </div>

                        </div>
                    </div>
                    <hr class="my-0" />
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead class="tbbg">
                                <tr>
                                    <th style="color: white; text-align: center; width: 1%;">#</th>
                                    <th style="color: white; text-align: center; width: 20%;">Item</th>
                                    <th style="color: white; text-align: center; width: 20%;">Quantity</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td class="text-nowrap">Cement</td>
                                    <td>558.00</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="text-nowrap">Sand</td>
                                    <td>50</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td class="text-nowrap">River Shingle</td>
                                    <td>22</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td class="text-nowrap">Jungle Wood </td>
                                    <td>30.00</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td class="text-nowrap">Nails</td>
                                    <td>140.00</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td class="text-nowrap">Hardcore </td>
                                    <td>5.00</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td class="text-nowrap">Earth </td>
                                    <td>8.00</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td class="text-nowrap">Brick</td>
                                    <td>26553.00</td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td class="text-nowrap">Binding Wire</td>
                                    <td>3396.00</td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td class="text-nowrap">Bamboo ( Wahya )</td>
                                    <td>4.31</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <span class="fw-semibold">Request Note:</span>
                                <span>It was a pleasure working with you and your team. We hope you will keep us in mind for
                                    future freelance
                                    projects. Thank You!</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card invoice-preview-card m-2">
                    <div class="card-body">
                        <div
                            class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                            <div>
                                <h4>Request code #220202</h4>
                                <div class="mb-2">
                                    <span class="me-1">Request Date:</span>
                                    <span class="fw-semibold">2022-1-3</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Work Scope:</span>
                                    <span class="fw-semibold">For First Floor</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Project Code:</span>
                                    <span class="fw-semibold">SKG-220101</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Site Location:</span>
                                    <span class="fw-semibold">Nyaung Shwe Township </span>
                                </div>
                            </div>
                            <div class="mb-xl-0 mb-4">
                                <h4>Status</h4>
                                <div class="mb-2">
                                    <span class="me-1">QS Department:</span>
                                    <span class="fw-semibold" style="color: green">Approved</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Ready to Dispatch:</span>
                                    <span class="fw-semibold" style="color: green;">Done</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Dispatch to Site:</span>
                                    <span class="fw-semibold" style="color: red;">Ready</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Recevied by Engnieer:</span>
                                    <span class="fw-semibold" style="color: red;">No</span>
                                </div>
                            </div>

                        </div>
                    </div>
                    <hr class="my-0" />
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead class="tbbg">
                                <tr>
                                    <th style="color: white; text-align: center; width: 1%;">#</th>
                                    <th style="color: white; text-align: center; width: 20%;">Item</th>
                                    <th style="color: white; text-align: center; width: 20%;">Quantity</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td class="text-nowrap">Cement</td>
                                    <td>558.00</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="text-nowrap">Sand</td>
                                    <td>50</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td class="text-nowrap">River Shingle</td>
                                    <td>22</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td class="text-nowrap">Jungle Wood </td>
                                    <td>30.00</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td class="text-nowrap">Nails</td>
                                    <td>140.00</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td class="text-nowrap">Hardcore </td>
                                    <td>5.00</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td class="text-nowrap">Earth </td>
                                    <td>8.00</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td class="text-nowrap">Brick</td>
                                    <td>26553.00</td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td class="text-nowrap">Binding Wire</td>
                                    <td>3396.00</td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td class="text-nowrap">Bamboo ( Wahya )</td>
                                    <td>4.31</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <span class="fw-semibold">Request Note:</span>
                                <span>It was a pleasure working with you and your team. We hope you will keep us in mind for
                                    future freelance
                                    projects. Thank You!</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card invoice-preview-card m-2">
                    <div class="card-body">
                        <div
                            class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                            <div>
                                <h4>Request code #220201</h4>
                                <div class="mb-2">
                                    <span class="me-1">Request Date:</span>
                                    <span class="fw-semibold">2022-02-3</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Work Scope:</span>
                                    <span class="fw-semibold">For First Floor</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Project Code:</span>
                                    <span class="fw-semibold">SKG-220101</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Site Location:</span>
                                    <span class="fw-semibold">Nyaung Shwe Township </span>
                                </div>
                            </div>
                            <div class="mb-xl-0 mb-4">
                                <h4>Status</h4>
                                <div class="mb-2">
                                    <span class="me-1">QS Department:</span>
                                    <span class="fw-semibold" style="color: red;">Pending</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Ready to Dispatch:</span>
                                    <span class="fw-semibold" style="color: red;">No</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Dispatch to Site:</span>
                                    <span class="fw-semibold" style="color: red;">No</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Recevied by Engnieer:</span>
                                    <span class="fw-semibold" style="color: red;">No</span>
                                </div>
                            </div>

                        </div>
                    </div>
                    <hr class="my-0" />
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead class="tbbg">
                                <tr>
                                    <th style="color: white; text-align: center; width: 1%;">#</th>
                                    <th style="color: white; text-align: center; width: 20%;">Item</th>
                                    <th style="color: white; text-align: center; width: 20%;">Quantity</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td class="text-nowrap">Cement</td>
                                    <td>558.00</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="text-nowrap">Sand</td>
                                    <td>50</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td class="text-nowrap">River Shingle</td>
                                    <td>22</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td class="text-nowrap">Jungle Wood </td>
                                    <td>30.00</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td class="text-nowrap">Nails</td>
                                    <td>140.00</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td class="text-nowrap">Hardcore </td>
                                    <td>5.00</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td class="text-nowrap">Earth </td>
                                    <td>8.00</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td class="text-nowrap">Brick</td>
                                    <td>26553.00</td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td class="text-nowrap">Binding Wire</td>
                                    <td>3396.00</td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td class="text-nowrap">Bamboo ( Wahya )</td>
                                    <td>4.31</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <span class="fw-semibold">Request Note:</span>
                                <span>It was a pleasure working with you and your team. We hope you will keep us in mind for
                                    future freelance
                                    projects. Thank You!</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Invoice -->

            <div class="col-xl-3 col-md-3 invoice-actions mb-md-0 py-2">

                <div class="card">
                    <div class="card-body text-center">
                        <div class="mx-auto mb-3">
                            <img src="{{ asset('assets/img/avatars/9.png') }}" alt="Avatar Image"
                                class="rounded-circle w-px-100" />
                        </div>
                        <h5 class="mb-1 card-title">Alex Jones</h5>
                        <div class="d-flex align-items-center justify-content-center my-3 gap-2">
                            <a href="javascript:;" class="me-1"><span
                                    class="badge bg-label-info">Engineer</span></a>

                        </div>
                        <div class="d-flex align-items-center justify-content-center">
                            <a href="tel:09444161997" class="btn btn-primary d-flex align-items-center me-3"><i
                                    class="bx bx-phone me-1"></i>Call</a>
                            <a href="mailto:mgmg@gmail.com" class="btn btn-label-secondary btn-icon"><i
                                    class="bx bx-envelope"></i></a>
                        </div>
                    </div>
                </div>


                <br>
                <div class="card">
                    <div class="card-header d-flex align-items-center justify-content-between mb-3">
                        <h5 class="card-title mb-0">Request History</h5>
                    </div>
                    <div class="card-body">
                        <ul class="p-0 m-0">
                            <li class="d-flex mb-4">
                                <div class="avatar avatar-sm flex-shrink-0 me-3">
                                    <span class="avatar-initial rounded-circle bg-label-primary">
                                        <i class='bx bx-cube'></i></span>
                                </div>
                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                    <div class="me-2">
                                        <p class="mb-0 lh-1">#220201</p>
                                        <small class="text-muted">For Ground Floor</small>
                                    </div>
                                    <div class="item-progress">2021-12-5</div>
                                </div>
                            </li>

                            <li class="d-flex mb-4">
                                <div class="avatar avatar-sm flex-shrink-0 me-3">
                                    <span class="avatar-initial rounded-circle bg-label-primary">
                                        <i class='bx bx-cube'></i></span>
                                </div>
                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                    <div class="me-2">
                                        <p class="mb-0 lh-1">#220202</p>
                                        <small class="text-muted">For First Floor</small>
                                    </div>
                                    <div class="item-progress">2022-1-3</div>
                                </div>
                            </li>

                            <li class="d-flex mb-4">
                                <div class="avatar avatar-sm flex-shrink-0 me-3">
                                    <span class="avatar-initial rounded-circle bg-label-primary">
                                        <i class='bx bx-cube'></i></span>
                                </div>
                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                    <div class="me-2">
                                        <p class="mb-0 lh-1">#220201</p>
                                        <small class="text-muted">For First Floor</small>
                                    </div>
                                    <div class="item-progress">2022-02-3</div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
