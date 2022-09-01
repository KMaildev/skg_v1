@extends('layouts.menus.project')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-6 col-sm-12">


            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Project</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('project.store') }}" method="POST"
                        id="create-form">
                        @csrf

                        <h6 class="mb-b fw-normal">1. Customer Info</h6>
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="CustomerId">Customer</label>
                            <div class="col-sm-9">
                                <select id="CustomerId" class="select2 form-select form-select-lg" data-allow-clear="false"
                                    name="customer">
                                    <option value="">--Please Select Customer--</option>
                                    @foreach ($customers as $customer)
                                        <option value="{{ $customer->id }}">
                                            {{ $customer->name }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('customer')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Address</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="Address" readonly />
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Site
                                Location</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="siteLocation" readonly />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Building
                                Area</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="buildingArea" readonly />
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Construction
                                Type</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="constructionType" readonly />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Job Scope</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="jobScope" readonly />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Storeyed (Number of
                                Storeyed)</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="Storeyed" readonly />
                            </div>
                        </div>


                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-3 fw-normal">2. Project Info</h6>
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Project Code</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="ProjectCode" readonly />
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
                                    <a href="{{ route('proposal.index') }}" class="btn btn-label-secondary">Cancel</a>
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
    {!! JsValidator::formRequest('App\Http\Requests\StoreProject', '#create-form') !!}

    <script type="text/javascript">
        $(document).ready(function() {
            $('select[name="customer"]').on('change', function() {
                var customer_id = $(this).val();
                if (customer_id) {
                    $.ajax({
                        url: '/customerdependent/ajax/' + customer_id,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            $("#Address").val(data.address);
                            $("#siteLocation").val(data.site_location);
                            $("#buildingArea").val(data.building_area);
                            $("#constructionType").val(data.construction_type);
                            $("#jobScope").val(data.job_scope);
                            $("#Storeyed").val(data.storeyed);
                            $("#ProjectCode").val(data.project_code);
                        }
                    });
                }

            });
        });
    </script>
@endsection
