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
            <th style="color: white; text-align: center; width: 20%;">
                Unit
            </th>
            <th style="color: white; text-align: center; width: 7%;">
                Quantity
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
