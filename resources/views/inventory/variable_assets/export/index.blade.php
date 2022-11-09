<table class="table table-bordered main-table py-5" id="export_excel">
    <thead class="tbbg">
        <tr>
            <th style="width: 1vh">
                #</th>
            <th style="width: 3vh">
                Item Name
            </th>
            <th style="width: 3vh">
                Unit
            </th>
            <th style="width: 3vh">
                Category
            </th>
            <th style="width: 3vh">
                Remark
            </th>
        </tr>
    </thead>
    <tbody>
        @foreach ($categories as $i => $category)
            @php
                $categoryies = $category->category;
            @endphp
            @foreach ($variable_assets as $key => $variable_asset)
                @if ($categoryies == $variable_asset->category)
                    <tr>
                        <td>
                            {{ $key + 1 }}
                        </td>
                        <td>
                            {{ $variable_asset->item_name ?? '-' }}
                        </td>
                        <td>
                            {{ $variable_asset->unit ?? '-' }}
                        </td>

                        <td>
                            {{ $variable_asset->category ?? '' }}
                        </td>

                        <td>
                            {{ $variable_asset->remark }}
                        </td>
                    </tr>
                @endif
            @endforeach
        @endforeach
    </tbody>
</table>
