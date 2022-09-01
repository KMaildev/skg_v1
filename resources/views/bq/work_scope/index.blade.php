@extends('layouts.menus.bq')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            Work Scope
                        </h5>
                        <div class="card-title-elements ms-auto">
                            <a href="{{ route('work_scope.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">
                                        Create
                                    </span>
                                </span>
                            </a>
                        </div>
                    </div>

                    <table class="table table-bordered table-sm" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white !important; width: 1%;">
                                    #
                                </th>

                                <th style="color: white !important;">
                                    Title
                                </th>

                                <th style="color: white !important;">
                                    Action
                                </th>
                            </tr>
                        </thead>

                        @foreach ($work_scopes as $key => $work_scope)
                            <tr>
                                <td>
                                    {{ $key + 1 }}
                                </td>
                                <td>
                                    {{ $work_scope->title ?? '' }}
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
                                                    href="{{ route('work_scope.edit', $work_scope->id) }}">Edit</a>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
