<li class="d-flex mb-2">
    <div class="avatar avatar-sm flex-shrink-0 me-3">
        @if ($fixed_asset->voucher_status == 'finished')
            <span class="avatar-initial rounded-circle bg-label-success">
                <i class="bx bx-check"></i>
            </span>
        @else
            <span class="avatar-initial rounded-circle bg-label-danger">
                <i class="bx bx-x"></i>
            </span>
        @endif
    </div>
    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            @if ($fixed_asset->voucher_status == 'finished')
                <span>
                    Finished &nbsp;&nbsp;
                </span>
                <span class="text-muted">
                    {{ $fixed_asset->voucher_date }}
                </span>
            @endif
        </div>
        <div class="progress" style="height:6px;">
            @if ($fixed_asset->voucher_status == 'finished')
                <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            @else
                <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            @endif

        </div>
        <div class="d-flex justify-content-between mb-1">
            <span>
                <a href="{{ route('fixed_assets_voucher.show', $fixed_asset->id) }}">
                    View File
                </a>
            </span>
            <span>
                <a href="{{ route('fixed_assets_voucher_create', $fixed_asset->id) }}">
                    Upload Voucher
                    <i class="bx bx-upload"></i>
                </a>
            </span>
        </div>
    </div>
</li>
