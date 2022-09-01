<form action="{{ route('update_bq_item') }}" method="POST" autocomplete="off" id="create-form">
    @csrf
    <input type="hidden" id="bq_item_id" name="bq_item_id">
    <div class="modal fade" id="bqEditModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
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
                        <tbody>
                            <tr>
                                <td></td>
                                {{-- Particular --}}
                                <td>
                                    <select class="form-select form-select-sm" data-allow-clear="false"
                                        id="VariableAssetId" name="variable_asset_id">
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
                                        oninput="SetCalculator()" style="text-align:right;" name="qty" />
                                </td>

                                {{-- Rate (Kyats) --}}
                                <td>
                                    <input type="text" class="form-control" id="Rate" oninput="SetCalculator()"
                                        value="0" style="text-align:right;" name="rate">
                                </td>

                                {{-- Per --}}
                                <td>
                                    <input type="text" class="form-control" id="Per" readonly>
                                </td>

                                {{-- Amount --}}
                                <td>
                                    <input type="text" class="form-control" id="Amount" style="text-align:right;">
                                </td>

                                <td>
                                    <input type="text" class="form-control" id="Remark" style="text-align:right;"
                                        name="remark">
                                </td>

                                <td>
                                    <input type="submit" value="Save" class="btn btn-sm btn-primary">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</form>
