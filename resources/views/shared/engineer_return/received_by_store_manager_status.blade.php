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
    <a href="#" data-bs-toggle="modal" data-bs-target="#modalCenter-{{ $engineer_return_infos->id }}">
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
    <form action="{{ route('received_by_store_manager.store') }}" method="POST" id="create-form">
        @csrf
        <div>
            <div class="modal fade" id="modalCenter-{{ $engineer_return_infos->id }}" tabindex="-1"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalCenterTitle">
                                Received by Store Manager
                            </h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="row mb-3">
                                <input type="hidden" value="{{ $engineer_return_infos->id }}"
                                    name="engineer_return_infos_id" required>
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
