@if ($request_info->received_by_engineer_status)
    <a href="#">
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>Received</span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
        </div>
    </a>
@else
    <a href="#" data-bs-toggle="modal" data-bs-target="#modalCenter-{{ $request_info->id }}">
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

<div class="col-lg-4 col-md-6">
    <form action="{{ route('received_by_engineer.store') }}" method="POST" id="create-form">
        @csrf
        <div>
            <div class="modal fade" id="modalCenter-{{ $request_info->id }}" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalCenterTitle">
                                Received by Engineer
                            </h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="row mb-3">
                                <input type="hidden" value="{{ $request_info->id }}" name="request_info_id" required>
                                <label class="col-sm-2 col-form-label" for="basic-default-name">
                                    Received Date
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control date_picker" name="received_date" required>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-label-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreReceivedByEngineer', '#create-form') !!}
@endsection
