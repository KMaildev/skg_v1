@extends('layouts.menus.project')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Customers</h5>
                        <div class="card-title-elements ms-auto">
                            <div class="card-header-elements ms-auto">
                                <form action="{{ route('customers.index') }}" method="GET">
                                    <input type="text" class="form-control form-control-sm" placeholder="Search"
                                        name="search" />
                                </form>
                            </div>

                            <a href="{{ route('customer_export') }}" class="dt-button create-new btn btn-success btn-sm">
                                Excel
                            </a>

                            <a href="{{ route('customers.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                {{-- table-responsive text-nowrap --}}
                <div class="table-responsive rowheaders table-scroll outer-wrapper" role="region"
                    aria-labelledby="HeadersCol" tabindex="0">
                    <table class="table table-bordered main-table">
                        <thead class="tbbg">
                            <tr>
                                <th style="background-color: #296166; color: white;  width: 1%;">#</th>
                                <th style="background-color: #296166; color: white; width: 10%;">Name</th>
                                <th style="background-color: #296166; color: white; width: 30%;">Site Location</th>
                                <th style="background-color: #296166; color: white; width: 20%;">Building Area</th>
                                <th style="background-color: #296166; color: white; width: 15%;">Construction Type</th>
                                <th style="background-color: #296166; color: white; width: 10%;">Job Scope</th>
                                <th style="background-color: #296166; color: white; width: 20%;">Date</th>
                                @can('customer_edit_delete')
                                    <th style="background-color: #296166; color: white; width: 20%;">Actions</th>
                                @endcan
                            </tr>
                        </thead>
                        <tbody class="mytbody table-border-bottom-0">
                            @foreach ($customers as $key => $customer)
                                <tr>
                                    <td>
                                        {{ $key + 1 }}
                                    </td>
                                    <td>
                                        {{ $customer->name }}
                                    </td>
                                    <td>
                                        {{ $customer->site_location }}
                                    </td>
                                    <td>
                                        {{ $customer->building_area }}
                                    </td>
                                    <td>
                                        {{ $customer->construction_type }}
                                    </td>
                                    <td>
                                        {{ $customer->job_scope }}
                                    </td>
                                    <td>
                                        {{ $customer->created_date }}
                                    </td>

                                    @can('customer_edit_delete')
                                        <td style="text-align: center;">
                                            <div class="btn-group">
                                                <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                    data-bs-toggle="dropdown" aria-expanded="false">
                                                    Action
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('customers.edit', $customer->id) }}">Edit</a>
                                                    </li>
                                                    <li>
                                                        <form action="{{ route('customers.destroy', $customer->id) }}"
                                                            method="POST">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button type="button" class="dropdown-item del_confirm"
                                                                id="confirm-text" data-toggle="tooltip">Delete</button>
                                                        </form>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    @endcan

                                </tr>
                            @endforeach
                        </tbody>
                        <caption class="ms-1">
                            {!! $customers->links() !!}
                        </caption>
                    </table>
                </div>

            </div>
        </div>
    </div>
@endsection
