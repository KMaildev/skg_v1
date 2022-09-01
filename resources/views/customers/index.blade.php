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

                            @include('layouts.includes.export')

                            <a href="{{ route('customers.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered table-sm" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center;">Name</th>
                                <th style="color: white; text-align: center;">Site Location</th>
                                <th style="color: white; text-align: center;">Building Area</th>
                                <th style="color: white; text-align: center;">Construction Type</th>
                                <th style="color: white; text-align: center;">Job Scope</th>
                                <th style="color: white; text-align: center;">Date</th>
                                @can('customer_edit_delete')
                                    <th style="color: white; text-align: center;">Actions</th>
                                @endcan
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($customers as $key => $customer)
                                <tr>
                                    <td style="text-align: center;">
                                        {{ $key + 1 }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $customer->name }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $customer->site_location }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $customer->building_area }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $customer->construction_type }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $customer->job_scope }}
                                    </td>
                                    <td style="text-align: center;">
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
