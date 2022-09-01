@extends('layouts.menus.inventory')
@section('content')
@section('cssscript')
    {{-- <link rel="stylesheet" href="{{ asset('css/variable_assets_table.css') }}" /> --}}
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
@endsection
<style>
    div.dataTables_wrapper {
        width: 100%;
        margin: 0 auto;
    }
</style>
<div class="container-fulid">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-lg-12" style="background-color: white;">
            <div class="outer-wrapper">
                <div class="table-wrapper py-5">
                    <table id="datatable" class="display nowrap yajra-datatable">
                        <thead>
                            <th style="background-color: #296166 !important; color: white !important;">
                                #
                            </th>
                            <th style="background-color: #296166 !important; color: white !important;">
                                Engineer Request
                            </th>
                            <th style="background-color: #296166 !important; color: white !important;">
                                Project
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Request code
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Work Scope
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Request Date
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Need Date
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Request Items
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Accept / Reject
                            </th>
                            <th style="background-color: #296166; color: white;">
                                QS Team Check & Pass
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Logistics Team Check
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Management
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Logistics Team Send
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Transferred from
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Transferred to
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Received by Engineer
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Actual Voucher
                            </th>
                            <th style="background-color: #296166; color: white;">
                                Actions
                            </th>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@include('variable_request_ssd.shared.accept_reject')
@include('variable_request_ssd.shared.management_accept_reject')

@endsection
@section('script')
<script>
    $(function() {
        var table = $('#datatable').DataTable({
            processing: true,
            serverSide: true,
            ordering: false,
            "stateSave": true,
            scrollY: 500,
            scrollX: true,
            data: {
                includeInactive: false
            },
            language: {
                "processing": "<img src='/public/loading.gif' style='width:50px'/><p class='my-3'>... Loading ...</p>",
            },
            ajax: {
                url: "{{ route('get_variable_request_ssd') }}",
            },
            lengthMenu: [50, 100, 250, 350, 450, 550, 650, 750, 850, 950, 1100, 1200, 1300],
            columns: [{
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex',
                    class: 'sticky-col first-col mytd',
                },
                {
                    data: 'engineer_name',
                    name: 'engineer_name',
                    class: 'sticky-col second-col mytd',
                },
                {
                    data: 'customer',
                    name: 'customer',
                    class: 'sticky-col three-col mytd',
                },
                {
                    data: 'code',
                    name: 'code'
                },
                {
                    data: 'work_scope',
                    name: 'work_scope'
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
            ]
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

    });
</script>
@endsection
