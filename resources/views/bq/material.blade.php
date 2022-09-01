<div class="col-md-12 col-lg-12 col-sm-12">
    <div class="col-xxl">
        <div class="card mb-4">
            <h5 class="card-header">
                Bill of Quantities (BQ)
            </h5>
            <form class="card-body" autocomplete="off" action="#" method="POST" id="create-form">
                @csrf
                <div class="row">
                    <table class="table table-bordered table-sm" style="margin-bottom: 10px;">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">
                                    #
                                </th>
                                <th style="color: white; text-align: center; width: 17%;">
                                    Material Cost
                                </th>
                                <th style="color: white; text-align: center; width: 7%;">
                                    Unit
                                </th>
                                <th style="color: white; text-align: center; width: 7%;">
                                    Qty
                                </th>
                                <th style="color: white; text-align: center; width: 7%;">
                                    Rate (Kyats)
                                </th>
                                <th style="color: white; text-align: center; width: 7%;">
                                    Amount
                                </th>
                                <th style="color: white; text-align: center; width: 5%;">
                                    Action
                                </th>
                            </tr>
                        </thead>
                        <tbody id="VariableAssetsTemporaries"></tbody>
                    </table>
                    <input type="submit" value="Confirm" class="btn btn-primary">
                </div>
            </form>
        </div>
    </div>
</div>

@section('script')
    <script>
        function setVariableAssetsTemporaryBq(id) {
            let variable_asset_id = id;

            var url = '{{ url('add_variable_bq_temporaries') }}';
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                method: 'POST',
                url: url,
                data: {
                    variable_asset_id: variable_asset_id,
                },
                success: function(data) {
                    getVariableAssetsTemporarie();
                },
                error: function(data) {}
            });
        }

        function getVariableAssetsTemporarie() {
            var url = '{{ url('get_variable_bq_temporaries') }}';
            $.ajax({
                url: url,
                method: "GET",
                success: function(data) {
                    let temporarie_table = '';
                    $.each(JSON.parse(data), function(key, value) {
                        let k = key + 1;
                        let qty = value.qty;
                        let rate = value.rate;

                        temporarie_table +=
                            '<input type="hidden" name="variable_asset_id[]" value="' + value
                            .variable_assets_table.id + '" required />'

                        temporarie_table += '<tr>';
                        temporarie_table += '<td>' + k + '</td>' //Sr.No	

                        // item_name 
                        temporarie_table += '<td>'
                        temporarie_table += value.variable_assets_table.item_name;
                        temporarie_table += '</td>'

                        // Unit 
                        temporarie_table += '<td>'
                        temporarie_table += value.variable_assets_table.unit;
                        temporarie_table += '</td>'

                        // Qty 
                        temporarie_table += '<td style="text-align: right">'
                        temporarie_table +=
                            '<input style="width: 100%;" type="text" name="quantity[]" value="' + value
                            .qty + '" required class="update_item" data-id="' +
                            value.id + '" />'
                        temporarie_table += '</td>'

                        temporarie_table += '<td style="text-align: right">'
                        temporarie_table +=
                            '<input style="width: 100%;" type="text" name="rate[]" value="' + value
                            .rate + '" required class="update_rate" data-id="' +
                            value.id + '" />'
                        temporarie_table += '</td>'

                        temporarie_table += '<td style="text-align: right">'
                        temporarie_table += qty * rate;
                        temporarie_table += '</td>'

                        // Action
                        temporarie_table += '<td>'
                        temporarie_table +=
                            '<a style="color: red;" href="javascript:void(0);" class="remove_item" data-id="' +
                            value.id + '"> Remove</a>'
                        temporarie_table += '</td>'
                        temporarie_table += '</tr>';
                    });
                    $('#VariableAssetsTemporaries').html(temporarie_table);
                }
            });
        }
        getVariableAssetsTemporarie();


        $(document).on("click", ".remove_item", function() {
            var id = $(this).data('id');
            $.ajax({
                url: `/remove_variable_bq_temporaries/${id}`,
                method: "GET",
                success: function(data) {
                    getVariableAssetsTemporarie();
                }
            });
        });


        $(document).on("keyup", ".update_item", function() {
            var id = $(this).data('id');
            var qty = $(this).val();

            if (qty == null || qty == "" || isNaN(qty)) {
                // alert("Please enter numeric value only.");
                return false;
            }

            var url = '{{ url('update_variable_bq_temporaries') }}';
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                method: 'POST',
                url: url,
                data: {
                    variable_assets_temporarie_id: id,
                    update_qty: qty,
                },
                success: function(data) {
                    getVariableAssetsTemporarie();
                },
                error: function(data) {}
            });
        });


        $(document).on("keyup", ".update_rate", function() {
            var id = $(this).data('id');
            var rate = $(this).val();

            if (rate == null || rate == "" || isNaN(rate)) {
                // alert("Please enter numeric value only.");
                return false;
            }

            var url = '{{ url('update_rate_variable_bq_temporaries') }}';
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                method: 'POST',
                url: url,
                data: {
                    variable_assets_temporarie_id: id,
                    update_rate: rate,
                },
                success: function(data) {
                    getVariableAssetsTemporarie();
                },
                error: function(data) {}
            });
        });
    </script>
@endsection
