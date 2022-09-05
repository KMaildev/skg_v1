<span style="color: green; font-weight: bold;">
    BQ (Overall)
</span>

<table class="table table-bordered table-sm">
    <thead class="tbbg">
        <tr>
            <th style="color: white; text-align: center; width: 1%;">
                Sr
            </th>
            <th style="color: white; text-align: center; width: 20%;">
                Particular
            </th>
            <th style="color: white; text-align: center; width: 7%;">
                Unit
            </th>
            <th style="color: white; text-align: center; width: 10%;">
                Quantity
            </th>
            <th style="color: white; text-align: center; width: 10%;">
                Request Qty
            </th>
            <th style="color: white; text-align: center; width: 10%;">
                Balance
            </th>
            <th style="color: white; text-align: center; width: 20%;">
                Rate (Kyats)
            </th>
            <th style="color: white; text-align: center; width: 20%;">
                Per
            </th>
            <th style="color: white; text-align: center; width: 20%;">
                Amount
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

                @php
                    $bqQty = $bq_item->qty ?? 0;
                    $reqQty = $request_qty_total ?? 0;
                    $balaceQty = $bqQty - $reqQty;
                    $total_balace_qty[] = $balaceQty;
                @endphp

                @if ($balaceQty >= 0)
                    <td style="text-align: right; font-weight: bold; background-color: green; color: white;">
                        @php
                            echo number_format($balaceQty);
                        @endphp
                    </td>
                @else
                    <td style="text-align: right; font-weight: bold; background-color: red; color: white;">
                        @php
                            echo number_format($balaceQty);
                        @endphp
                    </td>
                @endif

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
