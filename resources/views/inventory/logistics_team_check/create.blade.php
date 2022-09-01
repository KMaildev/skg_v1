@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-9 col-lg-9 col-sm-12">


            <div class="col-xxl">
                <div class="card mb-4">
                    <div
                        class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                        <div>
                            <h4>Request code #{{ $request_info->request_code }}</h4>
                            <div class="mb-2">
                                <span class="me-1">Request Date:</span>
                                <span class="fw-semibold">{{ $request_info->request_date }}</span>
                            </div>
                            <div class="mb-2">
                                <span class="me-1">Work Scope:</span>
                                <span class="fw-semibold">{{ $request_info->work_scope }}</span>
                            </div>
                            <div class="mb-2">
                                <span class="me-1">Project Code:</span>
                                <span class="fw-semibold">
                                    {{ $request_info->customer_table->project_code ?? '' }}
                                </span>
                            </div>
                            <div class="mb-2">
                                <span class="me-1">Site Location:</span>
                                <span class="fw-semibold">
                                    {{ $request_info->customer_table->site_location ?? '' }}
                                </span>
                            </div>
                        </div>
                    </div>


                    <form class="card-body" autocomplete="off" action="{{ route('logistics_team_check.store') }}"
                        method="POST" id="create-form">
                        @csrf
                        <input type="hidden" value="{{ $request_info->id }}" name="request_info_id" readonly>
                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-b fw-normal">1. Transfer Info</h6>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Transferred
                                from</label>

                            <div class="col-sm-9 col-md-9 col-lg-9">
                                <div class="row">
                                    <div class="col-md mb-md-0 mb-2">
                                        <div class="form-check custom-option custom-option-basic">
                                            <label class="form-check-label custom-option-content" for="TransferWarehouse">
                                                <input name="transfer_from" class="form-check-input" type="radio"
                                                    value="warehouse" id="TransferWarehouse" />
                                                <span class="custom-option-header">
                                                    <span class="h6 mb-0">
                                                        Transfer from Warehouse
                                                    </span>
                                                </span>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="col-md mb-md-0 mb-2">
                                        <div class="form-check custom-option custom-option-basic">
                                            <label class="form-check-label custom-option-content" for="TransferOtherSite">
                                                <input name="transfer_from" class="form-check-input" type="radio"
                                                    value="other_site" id="TransferOtherSite" />
                                                <span class="custom-option-header">
                                                    <span class="h6 mb-0">
                                                        Transfer from Other Site
                                                    </span>
                                                </span>
                                            </label>
                                        </div>
                                    </div>

                                    <br><br><br>
                                    <div id="SelectWarehouse">
                                        <select class="select2 form-select form-select-lg" data-allow-clear="true"
                                            name="main_warehouse_id">
                                            <option value="0">--Select Transfer From--</option>
                                            @foreach ($mainwarehouses as $key => $mainwarehouse)
                                                <option value="{{ $mainwarehouse->id }}">
                                                    {{ $mainwarehouse->warehouse_code }}
                                                    @
                                                    {{ $mainwarehouse->warehouse_name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div id="SelectOtherSite">
                                        <select class="select2 form-select form-select-lg" data-allow-clear="true"
                                            name="eng_request_info_id">
                                            <option value="0">--Select Transfer From--</option>
                                            @foreach ($request_info_lists as $key => $request_info_list)
                                                <option value="{{ $request_info_list->id }}">
                                                    {{ $request_info_list->customer_table->project_code }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>

                                </div>
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">
                                Transferred to
                            </label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" readonly
                                    value="{{ $request_info->customer_table->project_code ?? '' }}"
                                    name="transferred_to" />
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
                                <textarea id="basic-default-message" class="form-control @error('remark') is-invalid @enderror"
                                    name="remark">{{ old('remark') }}</textarea>
                                @error('remark')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="pt-4">
                            <div class="row justify-content-end">
                                <div class="col-sm-9">
                                    <button type="submit" class="btn btn-primary me-sm-2 me-1">Save</button>
                                    <a href="{{ route('managerequest.index') }}"
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
    {!! JsValidator::formRequest('App\Http\Requests\StoreTransferInfo', '#create-form') !!}
    <script>
        $(document).ready(function() {
            $("#TransferWarehouse").click(function(event) {
                $("#SelectWarehouse").show();
                $("#SelectOtherSite").hide();
            });

            $("#TransferOtherSite").click(function(event) {
                $("#SelectWarehouse").hide();
                $("#SelectOtherSite").show();
            });
        });

        $("#SelectWarehouse").hide();
        $("#SelectOtherSite").hide();
    </script>
@endsection
