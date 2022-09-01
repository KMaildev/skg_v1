@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-lg-12 col-sm-12">
            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Engineer Request</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('engrequest.store') }}" method="POST"
                        id="create-form">
                        @csrf
                        {{-- {{ $project->id }} --}}
                        <input type="hidden" name="project_id" value="0" id="project_id">

                        <h6 class="mb-b fw-bold" style="font-weight: bold; font-size: 15px;">1. Request Info</h6>
                        <div class="row g-3">

                            {{-- <div class="col-md-3">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="basic-default-fullname"
                                            style="font-weight: bold">Request Code</label>
                                        @php
                                            $code_count = count($request_infos);
                                            $increment1 = sprintf('%06d', $code_count + 1);
                                            $increment2 = sprintf('%06d', $code_count + 2);
                                            $increment3 = sprintf('%06d', $code_count + 3);
                                        @endphp
                                        <select class="form-select select2entry @error('request_code') is-invalid @enderror"
                                            name="request_code">
                                            <option value="R-{{ $increment1 }}">R-{{ $increment1 }}</option>
                                            <option value="R-{{ $increment2 }}">R-{{ $increment2 }}</option>
                                            <option value="R-{{ $increment3 }}">R-{{ $increment3 }}</option>
                                        </select>
                                        @error('request_code')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div> --}}

                            <div class="col-md-3">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Site</label>
                                        <select class="select2 form-select form-select" data-allow-clear="false"
                                            name="projects_users_id">
                                            <option value="">--Please Site--</option>
                                            @foreach ($projects_users as $key => $value)
                                                <option value="{{ $value->id ?? 0 }}">
                                                    {{ $value->projects_table->customer_table->project_code ?? '' }}
                                                    @
                                                    {{ $value->projects_table->customer_table->name ?? '' }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Request Date</label>
                                        <input type="text" class="form-control date_picker" name="request_date"
                                            value="{{ date('Y-m-d') }}" />
                                        @error('request_date')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-3">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="basic-default-fullname"
                                            style="font-weight: bold">Work Scope</label>
                                        <input type="text" class="form-control @error('work_scope') is-invalid @enderror"
                                            name="work_scope" />
                                        @error('work_scope')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row py-5">
                            <table class="table table-bordered table-sm" id="addRemoveTable">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="color: white; text-align: center;">Item Name & Size</th>
                                        <th style="color: white; text-align: center;">Qty</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td id="col0">
                                        <select class="form-select" data-allow-clear="false" name="fixed_assets_id[]">
                                            @foreach ($fixed_assets as $key => $value)
                                                <option value="{{ $value->id }}">
                                                    {{ $value->item_name ?? '-' }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </td>

                                    <td id="col1">
                                        <input type="text" class="form-control" name="quantity[]" required />
                                        @error('quantity')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </td>
                                </tr>
                            </table>
                        </div>

                        <div class="col-md-12">
                            <input type="button" value="Add Row" class="btn btn-info btn-sm" onclick="addRows()">
                            <input type="button" value="Delete Row" class="btn btn-danger btn-sm" onclick="deleteRows()" />
                            <input type="submit" value="Save" class="btn btn-primary btn-sm">
                        </div>

                        <input type="hidden" class="form-control" id="customerID" readonly name="customer_id" required />
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreRequestInfo', '#create-form') !!}
    <script type="text/javascript">
        $(document).ready(function() {
            $('select[name="projects_users_id"]').on('change', function() {
                var projects_users_id = $(this).val();
                if (projects_users_id) {
                    $.ajax({
                        url: '/projects_users/ajax/' + projects_users_id,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            getProjectsTable(data.projects_id)
                        }
                    });
                }
            });

            function getProjectsTable(id) {
                if (id) {
                    $.ajax({
                        url: '/get_projects_ajax/ajax/' + id,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            $("#customerID").val(data.customer_id);
                        }
                    });
                }
            }
        });
    </script>
@endsection
