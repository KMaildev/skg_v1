<table class="table table-bordered sub_table" style="margin-bottom: 0px;">
    <thead class="tbbg">
        <tr>
            <td style="color: white; text-align: center; width: 1%;">#</td>
            <td style="color: white; text-align: center; width: 20%;">Return Items</td>
            <td style="color: white; text-align: center; width: 20%;">Return Qty</td>
            <td style="color: white; text-align: center; width: 20%;">Passed (Qty)</td>
        </tr>
    </thead>
    <tbody>
        @php
            $PassedQty = 0;
        @endphp
        @foreach ($return_info->return_items_table as $key => $return_item_list)
            <tr>
                <td style="text-align: center;">
                    {{ $key + 1 }}
                </td>

                <td style="text-align: center;">
                    {{ $return_item_list->fixed_assets_table->item_name ?? '' }}
                </td>

                <td style="text-align: center;">
                    {{ $return_item_list->quantity ?? 0 }}
                </td>

                <td style="text-align: center;">
                    {{ $return_item_list->return_qs_team_check_passes_table->qs_passed_qty ?? 0 }}
                    @php
                        $PassedQty += $return_item_list->return_qs_team_check_passes_table->qs_passed_qty ?? 0;
                    @endphp
                </td>
            </tr>
        @endforeach
    </tbody>
    <tr>
        <td colspan="2">Total</td>
        <td style="text-align: center; font-weight: bold">
            {{ $return_info->return_items_table->sum('quantity') }}
        </td>

        <td style="text-align: center; font-weight: bold">
            {{ $PassedQty }}
        </td>
    </tr>
</table>
