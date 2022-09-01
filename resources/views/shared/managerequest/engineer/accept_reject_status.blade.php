@if ($request_info->accept_reject_status == 'accept')
    <a href="#" data-bs-toggle="modal" data-bs-target="#modalCenter">
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-start mb-1">
                <span>{{ ucfirst($request_info->accept_reject_status) }}</span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
            <span style="font-size: 12px; text-align: left">
                {{ $request_info->accept_reject_date }}
            </span>
        </div>
    </a>
@elseif ($request_info->accept_reject_status == 'reject')
    <a href="#" data-bs-toggle="modal" data-bs-target="#modalCenter">
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>{{ ucfirst($request_info->accept_reject_status) }}</span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
            <span style="font-size: 12px; text-align: left">
                {{ $request_info->accept_reject_date }}
            </span>
        </div>
    </a>
@else
    <a href="#" data-bs-toggle="modal" data-bs-target="#modalCenter">
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>Unknown</span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
        </div>
    </a>
@endif
