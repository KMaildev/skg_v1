<table>
    <thead class="tbbg">
        <tr>
            <th style="width: 3vh;">#</th>
            <th style="width: 3vh;">Item Name</th>
            <th style="width: 3vh;">Unit</th>
            <th style="width: 3vh;">Qty</th>
            <th style="width: 3vh;">Remark</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($fixed_assets as $key => $fixed_asset)
            <tr>
                <td>
                    {{ $key + 1 }}
                </td>

                <td>
                    {{ $fixed_asset->item_name ?? '-' }}
                </td>

                <td>
                    {{ $fixed_asset->unit ?? '-' }}
                </td>

                <td>
                    @php
                        $received_qty = $fixed_asset->fixed_assets_buy_requests_table->sum('received_qty');
                        $fixed_asset_qty = $fixed_asset->qty;
                        $total_fixed_asset_qty = $received_qty + $fixed_asset_qty;
                        echo number_format($total_fixed_asset_qty, 2);
                        $all_total_fixed_asset_qty[] = $total_fixed_asset_qty;
                    @endphp
                </td>

                <td>
                    {{ $fixed_asset->desciption }}
                </td>
            </tr>
        @endforeach
    </tbody>
</table>
