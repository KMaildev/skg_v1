<a href="{{ route('fixed_assets_received_create', $fixed_asset->id) }}">
    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            <span>
                Received Form
            </span>
        </div>
        <div class="progress" style="height: 3px;">
            <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                aria-valuemin="100" aria-valuemax="100">
            </div>
        </div>
        <span style="font-size: 12px;">
            Total Received Qty : {{ $fixed_asset->fixed_assets_buy_requests_table->sum('received_qty') }}
        </span>
    </div>
</a>
