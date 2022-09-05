@extends('layouts.menus.bq')
@section('content')
    <div class="row invoice-add justify-content-center">
        <div class="col-lg-12 col-12 mb-lg-0 mb-4">
            <form action="{{ route('project_bq.store') }}" method="POST" autocomplete="off" id="create-form">
                @csrf
                <div class="card invoice-preview-card">
                    <div class="card-body">

                        <div class="row p-sm-3 p-0">
                            <div class="col-md-6">
                                <dl class="row mb-2">

                                    <div class="row mb-3">
                                        <label class="col-sm-3 col-form-label">Name</label>
                                        <div class="col-sm-9">
                                            <select id="CustomerId" class="select2 form-select form-select-lg"
                                                data-allow-clear="false" name="project_id">
                                                <option value="">--Please Select Customer--</option>
                                                @foreach ($projects as $project)
                                                    <option value="{{ $project->id }}"
                                                        @if ($project_id == $project->id) selected @endif>
                                                        {{ $project->customer_table->name ?? '' }}
                                                        @
                                                        {{ $project->customer_table->project_code ?? '' }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            @error('customer')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label class="col-sm-3 col-form-label" for="alignment-username">
                                            Site Location
                                        </label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="siteLocation" readonly />
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label class="col-sm-3 col-form-label" for="alignment-username">
                                            Building Area
                                        </label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="buildingArea" readonly />
                                        </div>
                                    </div>
                                </dl>
                            </div>

                            <div class="col-md-6">

                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label" for="alignment-username">
                                        Construction Type
                                    </label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="constructionType" readonly />
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label" for="alignment-username">
                                        Job Scope
                                    </label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="jobScope" readonly />
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label" for="alignment-username">
                                        Storeyed
                                    </label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="Storeyed" readonly />
                                    </div>
                                </div>


                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label">Work Scope</label>
                                    <div class="col-sm-9">
                                        <select class="select2 form-select form-select-sm" data-allow-clear="false"
                                            name="work_scope_id">
                                            <option value="">--Please Select Work Scope--</option>
                                            @foreach ($work_scopes as $work_scope)
                                                <option value="{{ $work_scope->id }}">
                                                    {{ $work_scope->title ?? '' }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-sm-3 col-form-label" for="alignment-username">
                                        Remark
                                    </label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="Remark" name="remark" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="mx-n4" />

                        <div class="row">
                            <table class="table table-bordered table-sm">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="color: white; text-align: center; width: 1%;">
                                            Sr
                                        </th>
                                        <th style="color: white; text-align: center; width: 15%;">
                                            Particular
                                        </th>
                                        <th style="color: white; text-align: center; width: 5%;">
                                            Unit
                                        </th>
                                        <th style="color: white; text-align: center; width: 2%;">
                                            Quantity
                                        </th>
                                        <th style="color: white; text-align: center; width: 10%;">
                                            Rate (Kyats)
                                        </th>
                                        <th style="color: white; text-align: center; width: 5%;">
                                            Per
                                        </th>
                                        <th style="color: white; text-align: center; width: 10%;">
                                            Amount
                                        </th>
                                        <th style="color: white; text-align: center; width: 10%;">
                                            Remark
                                        </th>
                                        <th style="color: white; text-align: center; width: 5%;">
                                            Action
                                        </th>
                                    </tr>
                                </thead>

                                <tr>

                                    <td></td>

                                    {{-- Particular --}}
                                    <td>
                                        <select class="select2 form-select form-select-sm" data-allow-clear="false"
                                            id="VariableAssetId">
                                            <option value="">
                                                --Select Variable Assets--
                                            </option>
                                            @foreach ($categories as $i => $category)
                                                @php
                                                    $categoryies = $category->category;
                                                @endphp
                                                <optgroup label=" - {{ $category->category ?? '' }}">
                                                    @foreach ($variable_assets as $key => $variable_asset)
                                                        @if ($categoryies == $variable_asset->category)
                                                            <option value="{{ $variable_asset->id ?? 0 }}">
                                                                {{ $variable_asset->item_name ?? '' }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                </optgroup>
                                            @endforeach
                                        </select>
                                    </td>

                                    {{-- Unit --}}
                                    <td>
                                        <input type="text" class="form-control" id="Unit" readonly>
                                    </td>

                                    {{-- Quantity --}}
                                    <td>
                                        <input type="text" class="form-control" required id="Qty" value="0"
                                            oninput="SetCalculator()" style="text-align:right;" />
                                    </td>

                                    {{-- Rate (Kyats) --}}
                                    <td>
                                        <input type="text" class="form-control" id="Rate"
                                            oninput="SetCalculator()" value="0" style="text-align:right;">
                                    </td>

                                    {{-- Per --}}
                                    <td>
                                        <input type="text" class="form-control" id="Per" readonly>
                                    </td>

                                    {{-- Amount --}}
                                    <td>
                                        <input type="text" class="form-control" id="Amount"
                                            style="text-align:right;">
                                    </td>

                                    <td>
                                        <input type="text" class="form-control" id="Remark"
                                            style="text-align:right;">
                                    </td>

                                    <td>
                                        <input type="button" value="Add" class="btn btn-sm btn-primary"
                                            onclick="setBqTemporary()">
                                    </td>
                                </tr>

                                <tbody id="BQTemporaries"></tbody>
                                <tr>
                                    <td colspan="6">
                                        Total Material Cost
                                    </td>
                                    <td>
                                        <input type="text" id="TotalMaterialCost"
                                            style="width: 100%; text-align: right;" readonly>
                                    </td>
                                    <td colspan="2"></td>
                                </tr>
                            </table>

                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" style='float: right;'>
                                    Save
                                </button>
                            </div>
                        </div>

                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreProjectBq', '#create-form') !!}
    <script type="text/javascript">
        $(document).ready(function() {
            // Customer Info 
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

            function ajaxCallProjectData() {
                var customer_id = '{{ $project_id }}'
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
            }
            ajaxCallProjectData();




            // Bill of Quantities
            $('select[id="VariableAssetId"]').on('change', function() {
                var VariableAssetId = $(this).val();
                if (VariableAssetId) {
                    $.ajax({
                        url: '/get_variable_assets_ajax/' + VariableAssetId,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            Unit.value = data.unit;
                            Per.value = data.unit;
                        }
                    });
                }
            });
        });


        function SetCalculator() {
            var Qty = document.getElementById("Qty").value;
            var Rate = document.getElementById("Rate").value;
            if (Qty == null || Qty == "" || isNaN(Qty)) {
                alert("Enter Numeric value only.");
                return false;
            } else if (Rate == null || Rate == "" || isNaN(Rate)) {
                alert("Enter Numeric value only.");
                return false;
            }
            var AmountTotal = Qty * Rate;
            Amount.value = AmountTotal;
        }


        function setBqTemporary() {
            var VariableAssetId = document.getElementById("VariableAssetId").value;
            var Qty = document.getElementById("Qty").value;
            var Rate = document.getElementById("Rate").value;
            var Remark = document.getElementById("Remark").value;


            if (VariableAssetId == null || VariableAssetId == "") {
                alert("Please Select  Particular");
                return false;
            } else if (Qty == null || Qty == "" || isNaN(Qty)) {
                alert("Enter Numeric value only.");
                return false;
            } else if (Rate == null || Rate == "" || isNaN(Rate)) {
                alert("Enter Numeric value only.");
                return false;
            }

            var url = '{{ url('store_bq_temporary') }}';
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                method: 'POST',
                url: url,
                data: {
                    variable_asset_id: VariableAssetId,
                    qty: Qty,
                    rate: Rate,
                    remark: Remark,
                },
                success: function(data) {
                    getBqTemporaries();
                },
                error: function(data) {}
            });
        }


        function getBqTemporaries() {
            var url = '{{ url('get_bq_temporary') }}';
            $.ajax({
                url: url,
                method: "GET",
                success: function(data) {
                    let bq_temporaries = '';
                    var totalAmount = 0;
                    $.each(JSON.parse(data), function(key, value) {
                        let k = key + 1;
                        totalAmount += value.qty * value.rate;
                        bq_temporaries += '<tr>';
                        bq_temporaries += '<td>' + k + '</td>' //Sr.No	

                        // Particular
                        bq_temporaries += '<td>'
                        bq_temporaries += value.variable_assets_table.item_name;
                        bq_temporaries += '<input type="hidden" name="VariableAsset[' + k +
                            '][variable_asset_id]" value="' + value.variable_assets_table.id +
                            '" required />'
                        bq_temporaries += '</td>'

                        // Unit
                        bq_temporaries += '<td>'
                        bq_temporaries += value.variable_assets_table.unit;
                        bq_temporaries += '</td>'

                        // Qty
                        bq_temporaries += '<td style="text-align: right;">'
                        bq_temporaries += value.qty;
                        bq_temporaries += '<input type="hidden" name="VariableAsset[' + k +
                            '][qty]" value="' + value.qty + '" required />'
                        bq_temporaries += '</td>'

                        // Rate (Kyats)	
                        bq_temporaries += '<td style="text-align: right;">'
                        bq_temporaries += value.rate;
                        bq_temporaries += '<input type="hidden" name="VariableAsset[' + k +
                            '][rate]" value="' + value.rate + '" required />'
                        bq_temporaries += '</td>'

                        // Per
                        bq_temporaries += '<td>'
                        bq_temporaries += value.variable_assets_table.unit;
                        bq_temporaries += '</td>'

                        // Amount
                        bq_temporaries += '<td style="text-align: right;">'
                        bq_temporaries += value.qty * value.rate;
                        bq_temporaries += '</td>'

                        bq_temporaries += '<td style="text-align: right;">'
                        bq_temporaries += value.remark;
                        bq_temporaries += '<input type="hidden" name="VariableAsset[' + k +
                            '][remark]" value="' + value.remark + '" />'
                        bq_temporaries += '</td>'

                        // Action
                        bq_temporaries += '<td>'
                        bq_temporaries +=
                            '<a href="javascript:void(0);" class="text-danger remove_item" data-id="' +
                            value.id + '"> Remove</a>'
                        bq_temporaries += '</td>'
                        bq_temporaries += '</tr>';

                        bq_temporaries += '</tr>';
                    });
                    $('#BQTemporaries').html(bq_temporaries);
                    TotalMaterialCost.value = (totalAmount).toLocaleString('en');
                }
            });
        }
        getBqTemporaries();

        // RemoveItem
        $(document).on("click", ".remove_item", function() {
            var id = $(this).data('id');
            $.ajax({
                url: `/remove_bq_temporaries/${id}`,
                method: "GET",
                success: function(data) {
                    getBqTemporaries();
                }
            });
        });
    </script>
@endsection
