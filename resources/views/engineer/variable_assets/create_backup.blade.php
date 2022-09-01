@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-10 col-lg-10 col-sm-12">

            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Variable</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('engineer_variable_assets.store') }}"
                        method="POST" id="create-form">
                        @csrf

                        <h6 class="mb-b fw-bold" style="font-weight: bold; font-size: 15px;">1. Info</h6>
                        <div class="row g-3">

                            <div class="col-md-3">
                                <div class="row">
                                    <div class="mb-3">
                                        <label class="form-label" for="basic-default-fullname"
                                            style="font-weight: bold">Request Code</label>
                                        <input type="text" class="form-control @error('code') is-invalid @enderror"
                                            name="code" />
                                        @error('code')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="row">
                                    <div class="mb-3">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Site</label>
                                        <select class="select2 form-select form-select" data-allow-clear="false"
                                            name="customer_id">
                                            <option value="">--Please Site--</option>
                                            @foreach ($projects_users as $key => $value)
                                                @foreach ($value->projects as $project)
                                                    <option value="{{ $project->customer_table->id ?? '' }}">
                                                        {{ $project->customer_table->project_code ?? '' }}
                                                    </option>
                                                @endforeach
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="row">
                                    <div class="mb-3">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Request Date</label>
                                        <input type="text" class="form-control date_picker" placeholder="Month DD, YYYY"
                                            id="flatpickr-human-friendly" name="date" />
                                        @error('date')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="row">
                                    <div class="mb-3">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Need Date</label>
                                        <input type="text" class="form-control date_picker" placeholder="Month DD, YYYY"
                                            id="flatpickr-human-friendly" name="need_date" />
                                        @error('need_date')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="mb-3">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Work Scope</label>
                                        <input type="text" class="form-control" name="work_scope" />
                                        @error('work_scope')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                        </div>


                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-3 fw-bold" style="font-weight: bold; font-size: 15px;">2. Items</h6>
                        <div>
                            <table class="table table-bordered" id="dynamicAddRemove" style="margin-bottom: 20px;">
                                <tr>
                                    <th style="width: 40%; text-align: center;">Item Name & Size</th>
                                    <th style="width: 10%; text-align: center;">Size</th>
                                    <th style="width: 10%; text-align: center;">Quantity</th>
                                    <th style="width: 10%; text-align: center;">Action</th>
                                </tr>
                                <tr>
                                    <td>
                                        <select class="select2 form-select form-select-lg" data-allow-clear="false"
                                            name="returnItemFields[0][item_name]" id="item_name">
                                            <option value="">--Item Name--</option>
                                            @foreach ($variable_assets as $key => $value)
                                                <option value="{{ $value->id }}">
                                                    {{ $value->item_name ?? '-' }}
                                                    @if ($value->sizes)
                                                        = Size :
                                                        {{ $value->sizes }}
                                                    @endif
                                                </option>
                                            @endforeach
                                        </select>
                                    </td>

                                    <td>
                                        <input type="text" class="form-control" name="returnItemFields[0][size]" />
                                        @error('size')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </td>

                                    <td>
                                        <input type="text" class="form-control" name="returnItemFields[0][quantity]" />
                                        @error('quantity')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </td>

                                    <td>
                                        <button type="button"
                                            class="btn btn-outline-danger remove-input-field btn-sm">Remove</button>
                                    </td>
                                </tr>
                            </table>
                            <button type="button" class="btn btn-dark btn-sm" id="dynamic-ar">
                                Add a line
                            </button>
                        </div>
                        <hr>
                        <input type="submit" value="save" class="btn btn-success">
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreVariableRequestInfo', '#create-form') !!}

    <script>
        $(document).ready(function() {
            var i = 0;
            $("#dynamic-ar").click(function() {
                ++i;
                $("#dynamicAddRemove").append('<tr><td><select class="select2 form-select" data-allow-clear="false" name="returnItemFields[' + i + '][item_name]" id="item_name"><option value="">--Item Name--</option> @foreach ($variable_assets as $key => $value) <option value="{{ $value->id }}"> {{ $value->item_name ?? '-' }} @if ($value->sizes) = Size : {{ $value->sizes }} @endif </option> @endforeach </select></td> <td> <input type="text" class = "form-control" name = "returnItemFields[' + i + '][size]" /> </td> <td> <input type= "text" class="form-control" name="returnItemFields[' + i + '][quantity]" /> </td><td><button type="button" class="btn btn-outline-danger remove-input-field btn-sm">Remove</button></td></tr>');
            });
            $(document).on('click', '.remove-input-field', function() {
                $(this).parents('tr').remove();
            });
        });
    </script>


    <script type="text/javascript">
        function getVariableAssetsSizes(sel) {
            var variable_asset_id = sel.value;
            if (variable_asset_id) {
                $.ajax({
                    url: '/variable_assets_size_ajax/' + variable_asset_id,
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        console.log(data)
                    }
                });
            }
        }
    </script>
@endsection
