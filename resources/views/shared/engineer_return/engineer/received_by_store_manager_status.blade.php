@if ($engineer_return_infos->received_store_manager_status)
    <a href="#">
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>Received</span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
            <span style="font-size: 12px; text-align: left">
                {{ $engineer_return_infos->received_store_manager_date }}
            </span>
        </div>
    </a>
@else
    <a href="#" data-bs-toggle="modal" data-bs-target="#">
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>No</span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
        </div>
    </a>
@endif
