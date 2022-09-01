@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-8 col-sm-8">
            <div class="card">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Variable Assets</h5>
                        <div class="card-title-elements ms-auto">
                            <input id="myInput" type="text" placeholder="Search..">
                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap rowheaders table-scroll outer-wrapper" role="region"
                    aria-labelledby="HeadersCol" tabindex="0">
                    <table class="table table-bordered main-table py-5" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th
                                    style="background-color: #2e696e !important; color: white; text-align: center; width: 1%;">
                                    #
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Item Name
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Unit
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Category
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Remark
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Actions
                                </th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0 row_position" id="tablecontents">
                            @foreach ($categories as $i => $category)
                                @php
                                    $categoryies = $category->category;
                                @endphp
                                <tr>
                                    <td style="background-color: #ededed;">
                                        {{ $i + 1 }}
                                    </td>
                                    <td colspan="7" style="background-color: #ededed;">
                                        {{ $category->category ?? '' }}
                                    </td>
                                </tr>
                                @php
                                    $j = 1;
                                @endphp
                                @foreach ($variable_assets as $key => $variable_asset)
                                    @if ($categoryies == $variable_asset->category)
                                        <tr class="row1" data-id="{{ $variable_asset->id }}">

                                            <td style="text-align: center;">
                                                - {{ $j++ }}
                                            </td>

                                            <td style="text-align: center;">
                                                {{ $variable_asset->item_name ?? '-' }}
                                            </td>

                                            <td style="text-align: center;">
                                                {{ $variable_asset->unit ?? '-' }}
                                            </td>

                                            <td style="text-align: center;">
                                                {{ $variable_asset->category ?? '' }}
                                            </td>

                                            <td style="text-align: center;">
                                                {{ $variable_asset->remark }}
                                            </td>

                                            <td style="text-align: center;">
                                                <button class="btn btn-info btn-xs" type="button"
                                                    onclick="setVariableAssetsTemporary({{ $variable_asset->id }})">
                                                    Add to Order
                                                </button>
                                            </td>
                                        </tr>
                                    @endif
                                @endforeach
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-lg-4 col-sm-4">
            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Variable</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('engineer_variable_assets.store') }}"
                        method="POST" id="create-form">
                        @csrf

                        <h6 class="mb-b fw-bold" style="font-weight: bold; font-size: 15px;">1. Info</h6>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Site</label>
                                        <select class="select2 form-select form-select" data-allow-clear="false"
                                            name="customer_id">
                                            <option value="">--Please Select--</option>
                                            @foreach ($projects_users as $key => $value)
                                                @foreach ($value->projects as $project)
                                                    <option value="{{ $project->customer_table->id ?? '' }}">
                                                        {{ $project->customer_table->project_code ?? '' }}
                                                        @
                                                        {{ $project->customer_table->name ?? '' }}
                                                    </option>
                                                @endforeach
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Work Scope</label>
                                        <select class="select2 form-select form-select" data-allow-clear="false"
                                            name="work_scope_id">
                                            <option value="">--Please Select Work--</option>
                                            @foreach ($work_scopes as $key => $work_scope)
                                                <option value="{{ $work_scope->id ?? '' }}">
                                                    {{ $work_scope->title ?? '' }}
                                                </option>
                                            @endforeach
                                        </select>

                                        @error('work_scope_id')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="row">
                                    <div class="">
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

                            <div class="col-md-6">
                                <div class="row">
                                    <div class="">
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
                        </div>

                        <div class="row py-5">
                            <table class="table table-bordered table-sm" id="addRemoveTable">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="color: white; text-align: center; width: 1%;">
                                            #
                                        </th>
                                        <th style="color: white; text-align: center; width: 17%;">
                                            Item Name
                                        </th>
                                        <th style="color: white; text-align: center; width: 7%;">
                                            Unit
                                        </th>
                                        <th style="color: white; text-align: center; width: 7%;">
                                            Qty
                                        </th>
                                        <th style="color: white; text-align: center; width: 5%;">
                                            Action
                                        </th>
                                    </tr>
                                </thead>
                                <tbody id="VariableAssetsTemporaries"></tbody>
                            </table>

                            <input type="submit" value="Confirm" class="btn btn-primary">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreVariableRequestInfo', '#create-form') !!}
    <script type="text/javascript">
        function setVariableAssetsTemporary(id) {
            let variable_asset_id = id;

            var url = '{{ url('add_variable_assets_temporarie') }}';
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                method: 'POST',
                url: url,
                data: {
                    variable_asset_id: variable_asset_id,
                },
                success: function(data) {
                    getVariableAssetsTemporarie();
                },
                error: function(data) {}
            });
        }

        function getVariableAssetsTemporarie() {
            var url = '{{ url('get_variable_assets_temporarie') }}';
            $.ajax({
                url: url,
                method: "GET",
                success: function(data) {
                    let temporarie_table = '';
                    $.each(JSON.parse(data), function(key, value) {
                        let k = key + 1;

                        temporarie_table +=
                            '<input type="hidden" name="variable_asset_id[]" value="' + value
                            .variable_assets_table.id + '" required />'

                        temporarie_table += '<tr>';
                        temporarie_table += '<td>' + k + '</td>' //Sr.No	

                        // item_name 
                        temporarie_table += '<td>'
                        temporarie_table += value.variable_assets_table.item_name;
                        temporarie_table += '</td>'

                        // Unit 
                        temporarie_table += '<td>'
                        temporarie_table += value.variable_assets_table.unit;
                        temporarie_table += '</td>'

                        // Qty 
                        temporarie_table += '<td style="text-align: right">'
                        temporarie_table +=
                            '<input style="width: 100%;" type="text" name="quantity[]" value="' + value
                            .qty + '" required class="update_item" data-id="' +
                            value.id + '" />'
                        temporarie_table += '</td>'

                        // Action
                        temporarie_table += '<td>'
                        temporarie_table +=
                            '<a style="color: red;" href="javascript:void(0);" class="remove_item" data-id="' +
                            value.id + '"> Remove</a>'
                        temporarie_table += '</td>'
                        temporarie_table += '</tr>';
                    });
                    $('#VariableAssetsTemporaries').html(temporarie_table);
                }
            });
        }
        getVariableAssetsTemporarie();


        $(document).on("click", ".remove_item", function() {
            var id = $(this).data('id');
            $.ajax({
                url: `/remove_variable_assets_temporarie/${id}`,
                method: "GET",
                success: function(data) {
                    getVariableAssetsTemporarie();
                }
            });
        });


        $(document).on("keyup", ".update_item", function() {
            var id = $(this).data('id');
            var qty = $(this).val();

            if (qty == null || qty == "" || isNaN(qty)) {
                // alert("Please enter numeric value only.");
                return false;
            }

            var url = '{{ url('update_variable_assets_temporarie') }}';
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                method: 'POST',
                url: url,
                data: {
                    variable_assets_temporarie_id: id,
                    update_qty: qty,
                },
                success: function(data) {
                    getVariableAssetsTemporarie();
                },
                error: function(data) {}
            });
        });
    </script>
@endsection
