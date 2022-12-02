@if (!auth()->user()->can('fixed_assets_request'))
    @php
        $permission_denied = 'permission_denied';
    @endphp
@endif

<a href="#" data-bs-toggle="modal" data-bs-target="#modalCenter-{{ $fixed_asset->id }}"
    class="{{ $permission_denied ?? '' }}">
    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            <span>
                Request Form
            </span>
        </div>
        <div class="progress" style="height: 3px;">
            <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                aria-valuemin="100" aria-valuemax="100">
            </div>
        </div>
        <span style="font-size: 12px;">
            Total Request Qty : {{ $fixed_asset->fixed_assets_buy_requests_table->sum('request_qty') }}
        </span>
    </div>
</a>


@can('fixed_assets_request')
    <div class="col-lg-4 col-md-6">
        <form action="{{ route('fixed_assets_buy_request.store') }}" method="POST" id="create-form">
            @csrf
            <div>
                <div class="modal fade" id="modalCenter-{{ $fixed_asset->id }}" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="modalCenterTitle">
                                    Request Form
                                </h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="mb-3">

                                        <input type="hidden" value="{{ $fixed_asset->id }}" name="fixed_asset_id" required>

                                        <input type="text" placeholder="Request Qty" name="request_qty"
                                            class="form-control" required>

                                        <br>
                                        <input type="text" placeholder="Remark" name="remark" class="form-control"
                                            id="remark">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-label-secondary"
                                    data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endcan

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreFixedAssetsBuyRequest', '#create-form') !!}
@endsection
