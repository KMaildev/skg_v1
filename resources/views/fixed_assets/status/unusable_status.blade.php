<li class="d-flex mb-2">
    <div class="avatar avatar-sm flex-shrink-0 me-3">
        @if ($fixed_asset->unusable_status == 'true')
            <span class="avatar-initial rounded-circle bg-label-danger">
                <i class="bx bx-x"></i>
            </span>
        @else
            <span class="avatar-initial rounded-circle bg-label-success">
                <i class="bx bx-check"></i>
            </span>
        @endif
    </div>

    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            @if ($fixed_asset->unusable_status == 'true')
                <span>
                    Unusable &nbsp;&nbsp;
                </span>
                <span class="text-muted">
                    {{ $fixed_asset->voucher_date }}
                </span>
            @endif
        </div>
        <div class="progress" style="height:6px;">
            @if ($fixed_asset->unusable_status == 'true')
                <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            @else
                <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            @endif

        </div>
        <div class="d-flex justify-content-between mb-1">
            <span>
                <a href="{{ route('unusable_fixed_assets.show', $fixed_asset->id) }}">
                    View
                </a>
            </span>
            <span>
                <a href="{{ route('unusable_fixed_asset_create', $fixed_asset->id) }}">
                    Unusable
                    <i class="bx bx-upload"></i>
                </a>
            </span>
        </div>
    </div>
</li>
