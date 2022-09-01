@extends('layouts.menus.bq')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            BQ
                        </h5>
                        <div class="card-title-elements ms-auto">
                            <a href="{{ route('project_bq.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">
                                        Create
                                    </span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                <table class="table table-bordered table-sm" id="export_excel">
                    <thead class="tbbg">
                        <tr>
                            <th style="color: white; width: 1%;">
                                #
                            </th>

                            <th style="color: white;">
                                Project
                            </th>

                            <th style="color: white;">
                                BQ By
                            </th>

                            <th style="color: white;">
                                Date
                            </th>

                            <th style="color: white;">
                                Actions
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($project_bqs as $key => $project_bq)
                            <tr>
                                <td>
                                    {{ $key + 1 }}
                                </td>

                                <td>
                                    {{ $project_bq->projects_table->customer_table->name ?? '' }}
                                    @
                                    {{ $project_bq->projects_table->customer_table->project_code ?? '' }}
                                </td>

                                <td>
                                    {{ $project_bq->users_table->name ?? '' }}
                                </td>

                                <td>
                                    {{ $project_bq->created_at ?? '' }}
                                </td>

                                <td>
                                    <a
                                        href="{{ route('project_bq_show', [$project_bq->id, $project_bq->project_id, $project_bq->work_scope_id, 'true_overall']) }}">
                                        Detail
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
