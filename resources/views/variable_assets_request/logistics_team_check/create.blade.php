@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="row invoice-preview">
            <div class="col-xl-12 col-md-12 mb-md-0">
                @foreach ($eng_request_items as $key => $request_info)
                    <div class="card invoice-preview-card m-2">
                        <div class="card-body">
                            <div
                                class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                                <div>
                                    <h4>Request code #{{ $request_info->code }}</h4>
                                    <div class="mb-2">
                                        <span class="me-1">Request Date:</span>
                                        <span class="fw-semibold">{{ $request_info->date }}</span>
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
                        </div>
                        <hr class="my-0" />
                        <div class="table-responsive">
                            <form autocomplete="off" action="{{ route('variable_logistics_team_check.store') }}"
                                method="POST" id="create-form">
                                @csrf
                                <input type="hidden" value="{{ $request_info->id }}" name="variable_request_info_id"
                                    required>

                                <table class="table table-bordered" style="margin-bottom: 0px !important;">
                                    <thead class="tbbg">
                                        <tr>
                                            <th style="color: white; text-align: center; width: 1%;">#</th>
                                            <th style="color: white; text-align: center; width: 10%;">Request Items</th>
                                            <th style="color: white; text-align: center; width: 5%;">Unit</th>
                                            <th style="color: white; text-align: center; width: 5%;">Size</th>
                                            <th style="color: white; text-align: center; width: 7%;">Request Qty</th>
                                            <th style="color: white; text-align: center; width: 8%;">Passed (Qty)</th>
                                            <th style="color: white; text-align: center; width: 10%;">Price</th>
                                            <th style="color: white; text-align: center; width: 10%;">Total Amt</th>
                                            <th style="color: white; text-align: center; width: 10%;">Remark</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                            $qs_passed_qty_total = 0;
                                        @endphp
                                        @foreach ($request_info->variable_request_items_table as $key => $item)
                                            <input type="hidden" value="{{ $item->id }}"
                                                name="variable_request_item_id[]">
                                            <tr>
                                                <td>
                                                    {{ $key + 1 }}
                                                </td>

                                                <td>
                                                    <input type="hidden"
                                                        value="{{ $item->variable_assets_table->id ?? 0 }}"
                                                        name="variable_asset_id[]">
                                                    {{ $item->variable_assets_table->item_name ?? '' }}
                                                </td>

                                                <td>
                                                    {{ $item->variable_assets_table->unit ?? '' }}
                                                </td>

                                                <td>
                                                    {{ $item->size ?? '' }}
                                                </td>

                                                <td style="text-align: center">
                                                    {{ $item->quantity }}
                                                    <input type="hidden" value="{{ $item->quantity }}"
                                                        style="text-align:right;" name="eng_request_qty[]">
                                                </td>

                                                <td style="text-align: center">
                                                    @php
                                                        $qs_passed_qty = 0;
                                                    @endphp
                                                    @foreach ($item->variable_qs_team_checks_table as $qs_check)
                                                        @php
                                                            $qs_passed_qty += (float) $qs_check->qs_passed_qty;
                                                            $qs_passed_qty_total += (float) $qs_check->qs_passed_qty;
                                                        @endphp
                                                    @endforeach
                                                    {{ $qs_passed_qty }}

                                                    <input type="hidden" value="{{ $qs_passed_qty }}"
                                                        style="text-align:right;" name="passed_qty[]">
                                                </td>

                                                <td style="text-align: center;">
                                                    <input class="price_entry" type="text" value=""
                                                        style="text-align:right;" name="price[]"
                                                        oninput="setCalcTotalAmount({{ $qs_passed_qty }}, {{ $key + 1 }})"
                                                        id="price_{{ $key + 1 }}">

                                                </td>

                                                {{-- Total Amt --}}
                                                <td style="text-align: center;">
                                                    <input readonly type="text" id="TotalAmount_{{ $key + 1 }}"
                                                        style="text-align:right;">

                                                    <input type="text" id="AntoherTotalAmount_{{ $key + 1 }}"
                                                        class="TotalAmountValue" hidden>
                                                </td>

                                                <td>
                                                    <input type="text" style="width: 100%;" name="remark[]">
                                                </td>
                                            </tr>
                                        @endforeach

                                    </tbody>
                                    <tr>
                                        <th colspan="3">Total</th>
                                        <th style="text-align: center; font-weight: bold">
                                            {{ $request_info->variable_request_items_table->sum('quantity') }}
                                        </th>
                                        <th style="text-align: center; font-weight: bold">
                                            {{ $qs_passed_qty_total }}
                                        </th>
                                        <th></th>
                                        <th style="text-align: center">
                                            <span id="AmountTotal"></span>
                                        </th>
                                    </tr>
                                </table>

                                <div class="row py-5">
                                    <div class="col-md-8 col-lg-8">
                                    </div>
                                    <div class="col-md-4 col-lg-4">
                                        <div class="row mb-2">
                                            <label class="col-sm-3 col-form-label">
                                                Total Amount
                                            </label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control TotalAmount"
                                                    style="text-align:right; width: 90%" id="totalAmountShow">
                                            </div>
                                        </div>

                                        <div class="row mb-2">
                                            <label class="col-sm-3 col-form-label">
                                                Supplier Name
                                            </label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                    style="text-align:right; width: 90%" name="supplier_name">
                                            </div>
                                        </div>

                                        <div class="row mb-2">
                                            <label class="col-sm-3 col-form-label">
                                                Transportation
                                            </label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                    style="text-align:right; width: 90%" name="transportation"
                                                    value="0" onkeyup="setBankingPercent()" id="Transportation">
                                            </div>
                                        </div>

                                        <div class="row mb-2">
                                            <label class="col-sm-3 col-form-label">
                                                Labor
                                            </label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                    style="text-align:right; width: 90%" name="labor" value="0"
                                                    onkeyup="setBankingPercent()" id="Labor">
                                            </div>
                                        </div>

                                        <div class="row mb-2">
                                            <label class="col-sm-3 col-form-label">
                                                Banking %
                                            </label>
                                            <div class="col-sm-4">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" style="text-align:right;"
                                                        name="banking_percent" value="0"
                                                        onkeyup="setBankingPercent()" id="banking_percent">
                                                    <span class="input-group-text">%</span>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" style="text-align:right;"
                                                    value="0" id="banking_percent_amount">
                                            </div>
                                        </div>

                                        <div class="row mb-2">
                                            <label class="col-sm-3 col-form-label">
                                                Extra
                                            </label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                    style="text-align:right; width: 90%" name="extra" value="0"
                                                    onkeyup="setBankingPercent()" id="Extra">
                                            </div>
                                        </div>

                                        <div class="row mb-2">
                                            <label class="col-sm-3 col-form-label">
                                                Total
                                            </label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                    style="text-align:right; width: 90%" value="0"
                                                    id="AllTotal" readonly>
                                            </div>
                                        </div>

                                        <div class="row mb-2">
                                            <div class="col-sm-3 col-form-label"></div>
                                            <div class="col-sm-9 clearfix">
                                                <input type="submit" class="btn btn-success float-right" value="Save">
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreVariableLogisticsTeamCheck', '#create-form') !!}
    <script>
        var totalAmountShow = document.getElementById("totalAmountShow");
        var banking_percent_amount = document.getElementById("banking_percent_amount");
        var AllTotal = document.getElementById("AllTotal");


        function setCalcTotalAmount(qty, key) {
            var price = document.getElementById("price_" + key).value;
            var totalAmt = qty * price;
            document.getElementById("TotalAmount_" + key).value = (totalAmt).toLocaleString('en');
            document.getElementById("AntoherTotalAmount_" + key).value = totalAmt;

            var total = 0;
            $(".TotalAmountValue").each(function() {
                total += +$(this).val();
            });
            totalAmountShow.value = total;
        }

        function setBankingPercent() {

            var total = 0;
            $(".TotalAmountValue").each(function() {
                total += +$(this).val();
            });

            var percent = parseFloat(document.getElementById("banking_percent").value);
            var banking_percent = (total / 100) * percent;
            banking_percent_amount.value = (banking_percent).toLocaleString('en');

            var TransportationEntry = parseFloat(document.getElementById("Transportation").value);
            var LaborEntry = parseFloat(document.getElementById("Labor").value);
            var ExtraEntry = parseFloat(document.getElementById("Extra").value);
            ATotal = TransportationEntry + LaborEntry + ExtraEntry + banking_percent + total;
            AllTotal.value = ATotal;
        }
    </script>
@endsection
