@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-9 col-lg-9 col-sm-12">


            <div class="col-xxl">
                <div class="card mb-4">
                    <div
                        class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                        <div>
                            <h4>Return code #{{ $return_info->return_code }}</h4>
                            <div class="mb-2">
                                <span class="me-1">Return Date:</span>
                                <span class="fw-semibold">{{ $return_info->return_date }}</span>
                            </div>
                            <div class="mb-2">
                                <span class="me-1">Project Code:</span>
                                <span class="fw-semibold">
                                    {{ $return_info->customer_table->project_code ?? '' }}
                                </span>
                            </div>
                        </div>
                    </div>


                    <form class="card-body" autocomplete="off"
                        action="{{ route('return_logistics_team_check.store') }}" method="POST" id="create-form">
                        @csrf
                        <input type="hidden" value="{{ $return_info->id }}" name="engineer_return_info_id" readonly>

                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-b fw-normal">1. Transfer Info</h6>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">
                                Transferred from
                            </label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" readonly
                                    value="{{ $return_info->customer_table->project_code ?? '' }}" name="transfer_from" />
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">
                                Transferred to
                            </label>
                            <div class="col-sm-9">
                                <select class="select2 form-select form-select-lg" data-allow-clear="true"
                                    name="transfer_to_warehouse_id">
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
                                    <a href="{{ route('inventory_engineer_return.index') }}"
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
