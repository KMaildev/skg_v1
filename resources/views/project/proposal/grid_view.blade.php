@extends('layouts.menus.project')
@section('content')
<style>

</style>
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Proposal</h5>
                        <div class="card-title-elements ms-auto">
                            <div class="card-header-elements ms-auto">
                                <form action="{{ route('proposal.index') }}" method="GET" autocomplete="off">
                                    <input type="text" class="form-control form-control-sm" placeholder="Search"
                                        name="search" />
                                </form>
                            </div>

                            @include('layouts.includes.export')

                            <a href="{{ route('project.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 col-lg-4 col-xl-4 mb-4 order-0">
                        <div class="card">
                            <div class="card-header d-flex align-items-center justify-content-between">
                                <h5 class="card-title mb-0">Latest Update</h5>
                                <div class="dropdown">
                                    <button class="btn btn-sm btn-outline-secondary dropdown-toggle" type="button"
                                        id="orederStatistics" data-bs-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        2021
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                                        <a class="dropdown-item" href="javascript:void(0);">2020</a>
                                        <a class="dropdown-item" href="javascript:void(0);">2021</a>
                                        <a class="dropdown-item" href="javascript:void(0);">2022</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body pb-3">
                                <ul class="p-0 m-0">
                                    <li class="d-flex mb-3">
                                        <div class="avatar avatar-sm flex-shrink-0 me-3">
                                            <span class="avatar-initial rounded-circle bg-label-primary"><i
                                                    class='bx bx-cube'></i></span>
                                        </div>
                                        <div
                                            class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                            <div class="me-2">
                                                <p class="mb-0 lh-1">Total Products</p>
                                                <small class="text-muted">2k New Products</small>
                                            </div>
                                            <div class="item-progress">10k</div>
                                        </div>
                                    </li>
                                    <li class="d-flex mb-3">
                                        <div class="avatar avatar-sm flex-shrink-0 me-3">
                                            <span class="avatar-initial rounded-circle bg-label-info"><i
                                                    class='bx bx-pie-chart-alt'></i></span>
                                        </div>
                                        <div
                                            class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                            <div class="me-2">
                                                <p class="mb-0 lh-1">Total Sales</p>
                                                <small class="text-muted">39k New Sales</small>
                                            </div>
                                            <div class="item-progress">26M</div>
                                        </div>
                                    </li>
                                    <li class="d-flex mb-3">
                                        <div class="avatar avatar-sm flex-shrink-0 me-3">
                                            <span class="avatar-initial rounded-circle bg-label-danger"><i
                                                    class='bx bx-credit-card'></i></span>
                                        </div>
                                        <div
                                            class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                            <div class="me-2">
                                                <p class="mb-0 lh-1">Total Revenue</p>
                                                <small class="text-muted">43k New Revenue</small>
                                            </div>
                                            <div class="item-progress">15M</div>
                                        </div>
                                    </li>
                                    <li class="d-flex">
                                        <div class="avatar avatar-sm flex-shrink-0 me-3">
                                            <span class="avatar-initial rounded-circle bg-label-success"><i
                                                    class='bx bx-dollar'></i></span>
                                        </div>
                                        <div
                                            class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                            <div class="me-2">
                                                <p class="mb-0 lh-1">Total Cost</p>
                                                <small class="text-muted">Total Expenses</small>
                                            </div>
                                            <div class="item-progress">2B</div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection

@section('script')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script>
        $(function() {
            $("#tablecontents").sortable({
                delay: 150,
                items: "tr",
                cursor: 'move',
                opacity: 0.6,
                update: function() {
                    sendOrderToServer();
                }
            });

            function sendOrderToServer() {
                var order = [];
                var token = $('meta[name="csrf-token"]').attr('content');
                $('tr.row1').each(function(index, element) {
                    order.push({
                        id: $(this).attr('data-id'),
                        position: index + 1,
                    });
                });

                $.ajax({
                    type: "POST",
                    dataType: "json",
                    // url: "{{ url('projectsortable') }}",
                    url: "/projectsortable",
                    data: {
                        order: order,
                        _token: token
                    },
                    success: function(response) {
                        if (response.status == "success") {
                            console.log(response);
                            alert(response);
                            alert("w");
                        } else {
                            console.log(response);
                            alert(response);
                            alert("E");
                        }
                    }
                });
            }
        });
    </script>
@endsection
