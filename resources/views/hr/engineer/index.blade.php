@extends('layouts.menus.hr')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Engineers</h5>
                    </div>
                </div>

                <div class="table-responsive text-nowrap rowheaders table-scroll outer-wrapper" role="region"
                    aria-labelledby="HeadersCol" tabindex="0">
                    <table class="table table-bordered main-table">
                        <thead class="tbbg">
                            <tr>
                                <th style="background-color: #296166; color: white; text-align: center; width: 1%;">#</th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 20%;">Engineer</th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 20%;">Project Code</th>
                                <th style="background-color: #296166; color: white; text-align: center; width: 20%;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($projects_users as $key => $value)
                                <tr>
                                    <td style="text-align: center;">
                                        {{ $key + 1 }}
                                    </td>

                                    <td style="text-align: center; width: 20% !important">
                                        {{ $value->name }}
                                    </td>

                                    <td style="text-align: center; width: 20% !important">
                                        @foreach ($value->projects as $project)
                                            <span class="badge bg-primary">
                                                {{ $project->customer_table->project_code ?? '' }}
                                                @
                                                {{ $project->customer_table->name ?? '' }}
                                            </span>
                                            <br><br>
                                        @endforeach
                                    </td>

                                    <td style="text-align: center; width: 20% !important">
                                        <a href="{{ route('project_add', $value->id) }}" class="btn btn-primary btn-sm">
                                            <span class="tf-icons bx bx-plus"></span>
                                            &nbsp; Add project
                                        </a>

                                        <div class="btn-group">
                                            <button class="btn btn-success btn-xs dropdown-toggle" type="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                Action
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('engineer.show', $value->id) }}">
                                                        Manage
                                                    </a>
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
