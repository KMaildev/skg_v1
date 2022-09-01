@extends('layouts.menus.hr')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Employees</h5>
                        <div class="card-title-elements ms-auto">
                            <div class="card-header-elements ms-auto">
                                <input type="text" class="form-control form-control-sm" placeholder="Search" />
                            </div>

                            @include('layouts.includes.export')

                            <a href="{{ route('employee.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered table-sm">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center;">Employee ID</th>
                                <th style="color: white; text-align: center;">Name</th>
                                <th style="color: white; text-align: center;">Email</th>
                                <th style="color: white; text-align: center;">Phone</th>
                                <th style="color: white; text-align: center;">Passport</th>
                                <th style="color: white; text-align: center;">Department</th>
                                <th style="color: white; text-align: center;">Role (or) Designation</th>
                                <th style="color: white; text-align: center;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($employees as $key => $value)
                                <tr>
                                    <td style="text-align: center;">
                                        {{ $key + 1 }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $value->employee_id }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $value->name }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $value->email }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $value->phone }}
                                    </td>
                                    <td style="text-align: center;">
                                        @if ($value->passport_photo)
                                            <img src="{{ Storage::url($value->passport_photo) }}" alt=""
                                                style="width: 50px; height: 50px; background-position: center; background-size: contain, cover;">
                                        @endif
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $value->department->title ?? '' }}
                                    </td>
                                    <td style="text-align: center;">
                                        @foreach ($value->roles as $role)
                                            <span class="badge bg-primary">{{ $role->name }}</span>
                                        @endforeach
                                    </td>
                                    <td style="text-align: center;">
                                        <div class="btn-group">
                                            <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                Action
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('employee.edit', $value->id) }}">Edit</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('leave.edit', $value->id) }}">
                                                        Leave
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('employee.show', $value->id) }}">View Profile</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
@endsection
