@extends('layouts.menus.hr')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-6 col-sm-12">
            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Edit site</h5>
                    <form class="card-body" autocomplete="off"
                        action="{{ route('engineer.update', $projects_users->id) }}" method="POST" id="edit-form">
                        @csrf
                        @method('PUT')
                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-3 fw-normal">1. Engineer</h6>
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">
                                Engineer
                            </label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" readonly
                                    value="{{ $projects_users->users_table->name }}" />
                                <input type="hidden" name="engineering_id" value="{{ $projects_users->user_id }}"
                                    required />
                                @error('engineering_id')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>
                        <br>
                        <h6 class="mb-b fw-normal">2. Project Info</h6>
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="CustomerId">Site Code</label>
                            <div class="col-sm-9">
                                <select id="CustomerId" class="select2 form-select form-select-lg" data-allow-clear="false"
                                    name="project_id">
                                    <option value="">--Please Select Customer--</option>
                                    @foreach ($projects as $project)
                                        <option value="{{ $project->id }}"
                                            @if ($project->id == $projects_users->projects_id) selected @endif>
                                            {{ $project->customer_table->name ?? '' }}
                                            @
                                            {{ $project->customer_table->project_code ?? '' }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('customer')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
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


                        <div class="pt-4">
                            <div class="row justify-content-end">
                                <div class="col-sm-9">
                                    <button type="submit" class="btn btn-primary me-sm-2 me-1">Save</button>
                                    <a href="{{ route('engineer.index') }}" class="btn btn-label-secondary">Cancel</a>
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
    {!! JsValidator::formRequest('App\Http\Requests\UpdateProjectsUsers', '#edit-form') !!}

    <script type="text/javascript">
        $(document).ready(function() {
            $('select[name="project_id"]').on('change', function() {
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


            function ajaxAutoCall() {
                var customer_id = '{{ $projects_users->projects_id }}';
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
            ajaxAutoCall();
        });
    </script>
@endsection
