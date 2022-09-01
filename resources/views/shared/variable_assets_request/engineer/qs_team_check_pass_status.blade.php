@if ($request_info->qs_team_check_status)
    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            <span>Finished</span>
        </div>
        <div class="progress" style="height: 3px;">
            <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                aria-valuemin="100" aria-valuemax="100"></div>
        </div>
        <span style="font-size: 12px; text-align: left">
            {{ $request_info->qs_team_check_date }}
        </span>
    </div>
@else
    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            <span>No</span>
        </div>
        <div class="progress" style="height: 3px;">
            <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                aria-valuemin="100" aria-valuemax="100"></div>
        </div>
    </div>
@endif
