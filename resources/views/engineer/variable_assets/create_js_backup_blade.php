@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreVariableRequestInfo', '#create-form') !!}

    <script>
        $(document).ready(function() {
            var i = 0;
            $("#dynamic-ar").click(function() {
                ++i;
                $("#dynamicAddRemove").append('<tr><td><select class="select2 form-select" data-allow-clear="false" name="returnItemFields[' + i + '][item_name]" id="item_name"><option value="">--Item Name--</option> @foreach ($variable_assets as $key => $value) <option value="{{ $value->id }}"> {{ $value->item_name ?? '-' }} @if ($value->sizes) = Size : {{ $value->sizes }} @endif </option> @endforeach </select></td> <td> <input type="text" class = "form-control" name = "returnItemFields[' + i + '][size]" /> </td> <td> <input type= "text" class="form-control" name="returnItemFields[' + i + '][quantity]" /> </td><td><button type="button" class="btn btn-outline-danger remove-input-field btn-sm">Remove</button></td></tr>');
            });
            $(document).on('click', '.remove-input-field', function() {
                $(this).parents('tr').remove();
            });
        });
    </script>


    <script type="text/javascript">
        function getVariableAssetsSizes(sel) {
            var variable_asset_id = sel.value;
            if (variable_asset_id) {
                $.ajax({
                    url: '/variable_assets_size_ajax/' + variable_asset_id,
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        console.log(data)
                    }
                });
            }
        }
    </script>
@endsection