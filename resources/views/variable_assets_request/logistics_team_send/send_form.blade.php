@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-9 col-lg-9 col-sm-12">

            <div class="col-xxl">
                <div class="card mb-4">
                    <div
                        class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                        <div>
                            <h4>code #{{ $variable_request_info->code }}</h4>
                            <div class="mb-2">
                                <span class="me-1">Engineer:</span>
                                <span class="fw-semibold">{{ $variable_request_info->user_table->name ?? '' }}</span>
                            </div>
                            <div class="mb-2">
                                <span class="me-1">Date:</span>
                                <span class="fw-semibold">{{ $variable_request_info->date }}</span>
                            </div>
                            <div class="mb-2">
                                <span class="me-1">Project Code:</span>
                                <span class="fw-semibold">
                                    {{ $variable_request_info->customer_table->project_code ?? '' }}
                                </span>
                            </div>
                        </div>
                    </div>

                    <form class="card-body" autocomplete="off" action="{{ route('variable_logistics_send.store') }}"
                        method="POST" id="create-form">
                        @csrf
                        <input type="hidden" value="{{ $variable_request_info->id }}" name="variable_request_info_id"
                            readonly required>

                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-b fw-normal">1. Transfer Info</h6>


                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">
                                Transferred from
                            </label>
                            <div class="col-sm-9">
                                <select class="select2 form-select form-select-lg" data-allow-clear="true"
                                    name="transfer_from_warehouse_id">
                                    <option value="">--Select Transfer From--</option>
                                    @foreach ($mainwarehouses as $key => $mainwarehouse)
                                        <option value="{{ $mainwarehouse->id }}">
                                            {{ $mainwarehouse->warehouse_code }}
                                            @
                                            {{ $mainwarehouse->warehouse_name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">
                                Transferred to
                            </label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" readonly
                                    value="{{ $variable_request_info->customer_table->project_code ?? '' }}"
                                    name="transfer_to" />

                                <input type="hidden" class="form-control" readonly
                                    value="{{ $variable_request_info->customer_table->id ?? '' }}"
                                    name="transfer_to_customer_id" />
                            </div>
                        </div>

                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-3 fw-normal">2. Additional Info</h6>
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Sent Date</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control date_picker" name="sent_date" />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">Remark</label>
                            <div class="col-sm-9">
                                <textarea id="basic-default-message" class="form-control @error('remark') is-invalid @enderror" name="remark">{{ old('remark') }}</textarea>
                                @error('remark')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="pt-4">
                            <div class="row justify-content-end">
                                <div class="col-sm-9">
                                    <button type="submit" class="btn btn-primary me-sm-2 me-1">Save</button>
                                    <a href="{{ route('variable_assets_request.index') }}"
                                        class="btn btn-label-secondary">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreVariableLogisticsTeamSends', '#create-form') !!}
@endsection
