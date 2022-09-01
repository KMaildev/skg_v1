@if ($request_info->accept_reject_status == 'accept')
    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            <span>{{ ucfirst($request_info->accept_reject_status) }}</span>
        </div>
        <div class="progress" style="height: 3px;">
            <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                aria-valuemin="100" aria-valuemax="100"></div>
        </div>
        <span style="font-size: 12px;">
            {{ $request_info->accept_reject_date }}
        </span>
    </div>
@elseif ($request_info->accept_reject_status == 'reject')
    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            <span>{{ ucfirst($request_info->accept_reject_status) }}</span>
        </div>
        <div class="progress" style="height: 3px;">
            <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                aria-valuemin="100" aria-valuemax="100"></div>
        </div>
        <span style="font-size: 12px;">
            {{ $request_info->accept_reject_date }}
        </span>
    </div>
@else
    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            <span>Unknown</span>
        </div>
        <div class="progress" style="height: 3px;">
            <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                aria-valuemin="100" aria-valuemax="100"></div>
        </div>
    </div>
@endif
