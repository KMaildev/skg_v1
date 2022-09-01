@if ($request_info->actual_voucher_upload)
    <div class="d-flex mb-2">
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>Finished &nbsp;</span>
                <span class="text-muted">
                    {{ $request_info->actual_voucher_upload_date }}
                </span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
            <div class="d-flex justify-content-between mb-1">
                <span style="font-size: 12px;">
                    <a href="{{ route('variable_actual_voucher_upload', ['id' => $request_info->id]) }}"
                        style="text-align: left">
                        Upload Voucher
                    </a>
                </span>

                <span style="font-size: 12px;">
                    <a href="{{ route('variable_actual_voucher.show', $request_info->id) }}"
                        style="text-align: right">
                        View Voucher
                    </a>
                </span>
            </div>
        </div>
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
        <div class="d-flex justify-content-start mb-1">
            <span style="font-size: 12px; text-align: left">
                <a href="{{ route('variable_actual_voucher_upload', ['id' => $request_info->id]) }}">
                    Upload Voucher
                </a>
            </span>
        </div>
    </div>
@endif
