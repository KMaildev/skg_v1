@extends('layouts.menus.inventory')
@section('content')
@section('cssscript')
@endsection
<style>
    .dataTables_filter {
        display: none;
    }

    tfoot {
        display: table-header-group !important;
    }
</style>
<div class="" style="width: 100%; background-color: white;">
    <div class="py-5 tableFixHead">
        <table id="datatable" class="display nowrap yajra-datatable">
            @include('variable_request_ssd.table_shared.thead')
            @include('variable_request_ssd.table_shared.tfoot')
        </table>
    </div>
</div>

@include('variable_request_ssd.shared.accept_reject')
@include('variable_request_ssd.shared.management_accept_reject')
@include('variable_request_ssd.shared.logistics_team_check_model')
@include('variable_request_ssd.shared.show_request_items_model')
@endsection
@section('script')
<script>
    $(function() {
        var table = $('#datatable').DataTable({
            orderCellsTop: true,
            processing: true,
            serverSide: true,
            ordering: false,
            fixedHeader: true,
            scrollY: 500,
            scrollX: true,
            language: {
                "processing": "<img src='/public/loading.gif' style='width:50px'/><p class='my-3'>... Loading ...</p>",
            },
            ajax: {
                url: "{{ route('get_variable_request_ssd') }}",
            },
            lengthMenu: [50, 100, 250, 350, 450, 550, 650, 750, 850, 950, 1100, 1200, 1300, 1500, 1700,
                1900, 2000
            ],
            columns: [{
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex',
                    // class: 'sticky-col first-col mytd',
                },
                {
                    data: 'engineer_name',
                    name: 'engineer_name',
                    class: 'mytd',
                },
                {
                    data: 'customer_name',
                    name: 'customer_name',
                    // class: 'sticky-col',
                },
                {
                    data: 'code',
                    name: 'code'
                },
                {
                    data: 'work_scope',
                    name: 'work_scope',
                    class: 'work_scope_p',
                },
                {
                    data: 'date',
                    name: 'date'
                },
                {
                    data: 'need_date',
                    name: 'need_date'
                },

                {
                    data: 'request_item',
                    name: 'request_item'
                },

                {
                    data: 'accept_reject_status',
                    name: 'accept_reject_status'
                },

                {
                    data: 'qs_team_check_status',
                    name: 'qs_team_check_status'
                },

                {
                    data: 'logistics_team_check',
                    name: 'logistics_team_check'
                },

                {
                    data: 'management_accept_reject_status',
                    name: 'management_accept_reject_status',
                },

                {
                    data: 'logistics_team_send_status',
                    name: 'logistics_team_send_status',
                },

                {
                    data: 'transferred_from',
                    name: 'transferred_from',
                },

                {
                    data: 'transferred_to',
                    name: 'transferred_to',
                },

                {
                    data: 'received_by_engineer',
                    name: 'received_by_engineer',
                },

                {
                    data: 'actual_voucher_upload',
                    name: 'actual_voucher_upload',
                },

                {
                    data: 'action',
                    name: 'action',
                }
            ],

            // initComplete: function() {
            //     this.api().columns().every(function() {
            //         var column = this;
            //         var input = document.createElement("input");
            //         $(input).appendTo($(column.footer()).empty())
            //             .on('change', function() {
            //                 var val = $.fn.dataTable.util.escapeRegex($(this).val());
            //                 column.search(val ? val : '', true, false).draw();
            //             });
            //     });
            // }
        });


        $(document).ready(function() {
            $('#datatable thead th').each(function() {
                var title = $('#datatable thead th').eq($(this).index()).text();
            });
            var table = $('#datatable').DataTable();

            table.columns().eq(0).each(function(colIdx) {
                $('input', table.column(colIdx).footer()).on('change', function() {
                    table
                        .column(colIdx)
                        .search(this.value)
                        .draw();
                });
            });
        });

        // Show Accept Reject 
        var id;
        $('body').on('click', '#AssetRejectShowModel', function(e) {
            e.preventDefault();
            id = $(this).data('id');
            $('#AssetRejectModelShowHide').modal('show');
            document.getElementById("request_info_id").value = id;
        });

        // Submit Accept Reject 
        $('.accept_reject_save').submit(function(e) {
            e.preventDefault();
            let form = $(this);
            let data = form.serializeArray();

            var _token = data[0].value;
            var request_info_id = data[1].value;
            var accept_reject_status = data[2].value;
            var remark = data[3].value;

            console.log(data);

            var url = '{{ url('save_variable_accept_reject') }}';
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                method: 'POST',
                url: url,
                data: {
                    request_info_id: request_info_id,
                    accept_reject_status: accept_reject_status,
                    remark: remark
                },
                success: function(data) {
                    toastr.success("Your processing has been completed.");
                    table.ajax.reload();
                },
                error: function(data) {
                    // location.reload();
                }
            });

        });

        // Management Show Accept Reject 
        var id;
        $('body').on('click', '#ManagementAssetRejectShowModel', function(e) {
            e.preventDefault();
            id = $(this).data('id');
            $('#ManagementAssetRejectModelShowHide').modal('show');
            document.getElementById("management_request_info_id").value = id;
        });

        // Logistics Team check Model Show
        $('body').on('click', '#showLogisiticTeamItem', function(e) {
            e.preventDefault();
            id = $(this).data('id');
            $('#LogisticsTeamCheckModel').modal('show');
            $.ajax({
                url: "get_logistics_check_items/" + id,
                method: 'GET',
                success: function(result) {
                    console.log(result);
                    $('#showItemsList').html(result.html);
                }
            });
        });
        

        // Submit Management Show Accept Reject 
        $('.management_accept_reject_ajax_save').submit(function(e) {
            e.preventDefault();
            let form = $(this);
            let data = form.serializeArray();

            var _token = data[0].value;
            var request_info_id = data[1].value;
            var management_accept_reject_status = data[2].value;
            var remark = data[3].value;

            var url = '{{ url('save_management_reject') }}';
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                method: 'POST',
                url: url,
                data: {
                    request_info_id: request_info_id,
                    management_accept_reject_status: management_accept_reject_status,
                    remark: remark
                },
                success: function(data) {
                    toastr.success("Your processing has been completed.");
                    table.ajax.reload();
                },
                error: function(data) {
                    // location.reload();
                }
            });
        });

        // Show Request Items
        $('body').on('click', '#showRequestItems', function(e) {
            e.preventDefault();
            id = $(this).data('id');
            $('#showRequestItemsModel').modal('show');
            $.ajax({
                url: "get_request_item_show/" + id,
                method: 'GET',
                success: function(result) {
                    console.log(result);
                    $('#showVariableRequestItemsList').html(result.html);
                }
            });
        });
    });
</script>
@endsection
