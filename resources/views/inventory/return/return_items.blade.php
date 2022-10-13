<table class="table table-bordered sub_table" style="margin-bottom: 0px;">
    <thead class="tbbg">
        <tr>
            <th style="color: white; text-align: center; width: 1%;">#</th>
            <th style="color: white; text-align: center; width: 20%;">Return Items</th>
            <th style="color: white; text-align: center; width: 20%;">Return Qty</th>
            <th style="color: white; text-align: center; width: 20%;">Passed (Qty)</th>
        </tr>
    </thead>
    <tbody>
        @php
            $PassedQty = 0;
        @endphp
        @foreach ($return_info->return_items_table as $key => $return_item_list)
            <tr>
                <th style="text-align: center;">
                    {{ $key + 1 }}
                </th>

                <th style="text-align: center;">
                    {{ $return_item_list->fixed_assets_table->item_name ?? '' }}
                </th>

                <th style="text-align: center;">
                    {{ $return_item_list->quantity ?? 0 }}
                </th>

                <th style="text-align: center;">
                    {{ $return_item_list->return_qs_team_check_passes_table->qs_passed_qty ?? 0 }}
                    @php
                        $PassedQty += $return_item_list->return_qs_team_check_passes_table->qs_passed_qty ?? 0;
                    @endphp
                </th>
            </tr>
        @endforeach
    </tbody>
    <tr>
        <th colspan="2">Total</th>
        <th style="text-align: center; font-weight: bold">
            {{ $return_info->return_items_table->sum('quantity') }}
        </th>

        <th style="text-align: center; font-weight: bold">
            {{ $PassedQty }}
        </th>
    </tr>
</table>
