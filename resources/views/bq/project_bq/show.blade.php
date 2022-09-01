@extends('layouts.menus.bq')
@section('content')
    <h4 class="breadcrumb-wrapper mb-4">
        <span class="text-muted fw-light">
            BQ /
        </span>
        {{ $project->projects_table->customer_table->name ?? '' }}
        @
        {{ $project->projects_table->customer_table->project_code ?? '' }}
    </h4>

    @include('bq.project_bq.shared.customer_info')

    <div class="row mb-5 py-5">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <p class="card-text">
                        Bill of Quantities (BQ)
                    </p>

                    <a class="btn btn-primary me-1 collapsed"
                        href="{{ route('project_bq_show', [$project->id, $project->project_id, $project->work_scope_id, 'true_overall']) }}">
                        <span class="tf-icons
                        bx bx-list-check"></span>
                        BQ (Overall)
                    </a>

                    @foreach ($project_bqs as $key => $project_bq)
                        <a class="btn btn-primary me-1 collapsed"
                            href="{{ route('project_bq_show', [$project_bq->id, $project_bq->project_id, $project_bq->work_scope_id, 'false_overall']) }}">
                            <span class="tf-icons
                            bx bx-list-check"></span>
                            {{ $project_bq->work_scopes_table->title ?? '' }}
                        </a>
                    @endforeach
                </div>

                @if ($overall_status == 'true_overall')
                    @include('bq.project_bq.shared.bq_item_overall_table')
                @elseif ($overall_status == 'false_overall')
                    @include('bq.project_bq.shared.bq_item_table')
                @endif
            </div>
        </div>
    </div>
@endsection

@section('script')
@endsection
