<span style="color: green; font-weight: bold;">
    {{ $work_scope->title ?? '' }}
</span>

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
            <th style="color: white; text-align: center; width: 7%;">
                Quantity
            </th>
            <th style="color: white; text-align: center; width: 7%;">
                Request Qty
            </th>
            <th style="color: white; text-align: center; width: 7%;">
                Balance
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
    <tbody>
        @php
            $total_qty = [];
            $total_rate = [];
            $total_amount = [];
            $total_eng_request_qty = [];
            $total_balace_qty = [];
        @endphp
        @foreach ($bq_items as $key => $bq_item)
            <tr>
                <td>
                    {{ $key + 1 }}
                </td>

                <td>
                    {{ $bq_item->variable_assets_table->item_name ?? '' }}
                </td>

                <td>
                    {{ $bq_item->variable_assets_table->unit ?? '' }}
                </td>

                <td style="text-align: right; font-weight: bold;">
                    {{ number_format($bq_item->qty ?? 0, 2) }}
                </td>

                {{-- Request Qty --}}
                <td style="text-align: right; font-weight: bold;">
                    @php
                        $project_id = $bq_item->project_id;
                        $work_scope_id = $bq_item->work_scope_id;
                        $total_request_qty = [];
                    @endphp
                    @foreach ($bq_item->variable_request_items_table as $variable_request_item)
                        @php
                            $variable_project_id = $variable_request_item->project_id;
                            $variable_work_scope_id = $variable_request_item->work_scope_id;
                            if ($project_id == $variable_project_id and $work_scope_id == $variable_work_scope_id) {
                                $total_request_qty[] = $variable_request_item->quantity;
                            }
                        @endphp
                    @endforeach
                    @php
                        $request_qty_total = array_sum($total_request_qty);
                        echo number_format($request_qty_total, 2);
                        $total_eng_request_qty[] = $request_qty_total;
                    @endphp
                </td>

                <td style="text-align: right; font-weight: bold;">
                    @php
                        $bqQty = $bq_item->qty ?? 0;
                        $reqQty = $request_qty_total ?? 0;
                        $balaceQty = $bqQty - $reqQty;
                        echo number_format($balaceQty);
                        $total_balace_qty[] = $balaceQty;
                    @endphp
                </td>

                <td style="text-align: right; font-weight: bold;">
                    {{ number_format($bq_item->rate ?? 0, 2) }}
                </td>

                <td>
                    {{ $bq_item->variable_assets_table->unit ?? '' }}
                </td>

                <td style="text-align: right; font-weight: bold;">
                    @php
                        $qty = $bq_item->qty ?? 0;
                        $rate = $bq_item->rate ?? 0;
                        $amount = $qty * $rate;
                        echo number_format($amount, 2);
                        $total_qty[] = $qty;
                        $total_rate[] = $rate;
                        $total_amount[] = $amount;
                    @endphp
                </td>

                <td>
                    {{ $bq_item->remark ?? '' }}
                </td>

                <td>
                    <button type="button" class="btn btn-sm btn-primary" onclick="getBQitems({{ $bq_item->id }})">
                        Edit
                    </button>

                    <form action="{{ route('project_bq.destroy', $bq_item->id) }}" method="POST">
                        @csrf
                        @method('DELETE')
                        <a type="button" class="del_confirm" id="confirm-text" data-toggle="tooltip">Remove</a>
                    </form>
                </td>
            </tr>
        @endforeach
    </tbody>
    <tr>
        <td colspan="3">
            Total
        </td>
        <td style="text-align: right; font-weight: bold;">
            @php
                $qty_total = array_sum($total_qty);
                echo number_format($qty_total, 2);
            @endphp
        </td>


        <td style="text-align: right; font-weight: bold;">
            @php
                $eng_request_qty_total = array_sum($total_eng_request_qty);
                echo number_format($eng_request_qty_total, 2);
            @endphp
        </td>

        <td style="text-align: right; font-weight: bold;">
            @php
                $balace_qty_total = array_sum($total_balace_qty);
                echo number_format($balace_qty_total, 2);
            @endphp
        </td>

        <td style="text-align: right; font-weight: bold;">
            @php
                $rate_total = array_sum($total_rate);
                echo number_format($rate_total, 2);
            @endphp
        </td>
        <td></td>
        <td style="text-align: right; font-weight: bold;">
            @php
                $amount_total = array_sum($total_amount);
                echo number_format($amount_total, 2);
            @endphp
        </td>
    </tr>
</table>

@include('bq.project_bq.shared.bq_item_edit')

@section('script')
{!! JsValidator::formRequest('App\Http\Requests\UpdateBqItems', '#create-form') !!}
    <script type="text/javascript">
        function getBQitems(bq_item_id) {
            document.getElementById("bq_item_id").value = bq_item_id;
            $('#bqEditModal').modal('show');
            $.ajax({
                url: '{{ url('get_bq_item_edit') }}' + '/' + bq_item_id,
                method: 'GET',
                success: function(result) {
                    document.getElementById("Qty").value = result.data.qty;
                    document.getElementById("Rate").value = result.data.rate;
                    var amount = result.data.qty * result.data.rate;
                    document.getElementById("Amount").value = amount;
                    document.getElementById("Remark").value = result.data.remark;

                    var variable_asset_id = result.variable_asset.id;
                    var variable_asset_item = result.variable_asset.item_name;
                    $('#VariableAssetId').append("<option value=" + variable_asset_id + " selected>" +
                        variable_asset_item + "</option>");
                    document.getElementById("Unit").value = result.variable_asset.unit;
                    document.getElementById("Per").value = result.variable_asset.unit;

                }
            });
        }

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
    </script>
@endsection
