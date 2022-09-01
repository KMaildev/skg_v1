@extends('layouts.menus.hr')
@section('content')
    <link rel="stylesheet" href="{{ asset('assets/vendor/css/pages/page-profile.css') }}" />
    <div class="row justify-content-center">
        <div class="col-md-8 col-sm-12 col-lg-8">
            <div class="row">
                <div class="col-12">
                    <div class="card mb-4">
                        <div class="user-profile-header-banner">
                            <img src="{{ asset('assets/img/pages/profile-banner.png') }}" alt="Banner image"
                                class="rounded-top">
                        </div>
                        <div class="user-profile-header d-flex flex-column flex-sm-row text-sm-start text-center mb-4">
                            <div class="flex-shrink-0 mt-n2 mx-sm-0 mx-auto">
                                @if ($employee->passport_photo)
                                    <img src="{{ Storage::url($employee->passport_photo) }}" alt=""
                                        class="d-block h-auto ms-0 ms-sm-4 rounded-3 user-profile-img">
                                @else
                                    <img src="{{ asset('assets/data/profile.png') }}" alt="user image"
                                        class="d-block h-auto ms-0 ms-sm-4 rounded-3 user-profile-img">
                                @endif
                            </div>
                            <div class="flex-grow-1 mt-3 mt-sm-5">
                                <div
                                    class="d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start mx-4 flex-md-row flex-column gap-4">
                                    <div class="user-profile-info">
                                        <h4>{{ $employee->name }}</h4>
                                        <ul
                                            class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-2">
                                            <li class="list-inline-item fw-semibold">
                                                <i class='bx bx-pen'></i>
                                                {{ $employee->department ? $employee->department->title : '-' }}
                                            </li>
                                            <li class="list-inline-item fw-semibold">
                                                <i class='bx bx-calendar-alt'></i>
                                                Joined
                                                {{ $employee->created_at->diffForHumans() }}
                                            </li>
                                        </ul>
                                    </div>
                                    <a href="mailto:{{ $employee->email }}" class="btn btn-primary text-nowrap">
                                        <i class='bx bx-mail-send'></i> Send Mail
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <ul class="nav nav-pills flex-column flex-sm-row mb-4">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('employee.show', $employee->id) }}">
                                        <i class='bx bx-user'></i> Profile
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active" href="{{ route('members_lists.show', $employee->id) }}">
                                        <i class='bx bx-user'></i> Files
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('changepassword.index') }}">
                                        <i class='bx bx-user'></i> Change Password (Current Login Account)
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12">
                            <div class="card mb-4">
                                <div class="card-body">
                                    <small class="text-muted text-uppercase">
                                        Household Members Lists
                                    </small>
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <table class="table table-bordered">
                                            <thead class="tbbg">
                                                <tr>
                                                    <th style="color: white">#</th>
                                                    <th style="color: white">File Name</th>
                                                    <th style="color: white">Photo</th>
                                                    <th style="color: white">Download</th>
                                                    <th style="color: white">Upload Date</th>
                                                    <th style="color: white">Upload By</th>
                                                    <th style="color: white">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody class="table-border-bottom-0">
                                                @foreach ($members_lists as $key => $value)
                                                    <tr>
                                                        <td>
                                                            {{ $key + 1 }}
                                                        </td>

                                                        <td>
                                                            <strong>{{ $value->original_name }}</strong>
                                                        </td>

                                                        <td>
                                                            <img src="{{ Storage::url($value->members_list_file) }}"
                                                                alt=""
                                                                style="width: 100%; height: 100px; background-position: center; background-size: contain, cover;"
                                                                data-enlargeable="">
                                                        </td>

                                                        <td>
                                                            <a href="{{ Storage::url($value->members_list_file) }}"
                                                                download>
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

                                                        <td>
                                                            <form
                                                                action="{{ route('members_lists.destroy', $value->id) }}"
                                                                method="POST">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button type="button"
                                                                    class="btn btn-danger btn-sm del_confirm"
                                                                    id="confirm-text" data-toggle="tooltip">Delete</button>
                                                            </form>
                                                        </td>
                                                    </tr>
                                                @endforeach
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
    </div>
@endsection
