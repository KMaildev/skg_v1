@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            Fixed Assets - Request
                        </h5>
                    </div>
                </div>

                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered table-sm" id="export_excel" style="margin-bottom: 10px;">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center; width: 10%;">Item Name</th>
                                <th style="color: white; text-align: center; width: 10%;">Request Date</th>
                                <th style="color: white; text-align: center; width: 5%;">Request Qty</th>
                                <th style="color: white; text-align: center; width: 10%;">Request Remark</th>
                                <th style="color: white; text-align: center; width: 10%;">Request User</th>
                                <th style="color: white; text-align: center; width: 5%;">Approval Qty</th>
                                <th style="color: white; text-align: center; width: 10%;">Approval Remark</th>
                                <th style="color: white; text-align: center; width: 5%;">Status</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($fixed_assets_buy_requests as $key => $fixed_assets_buy_request)
                                <tr>
                                    <td>
                                        {{ $key + 1 }}
                                    </td>

                                    <td>
                                        {{ $fixed_assets_buy_request->fixed_assets_table->item_name ?? '' }}
                                    </td>

                                    <td>
                                        {{ $fixed_assets_buy_request->request_date ?? '' }}
                                    </td>

                                    <td style="text-align: right">
                                        {{ $fixed_assets_buy_request->request_qty ?? '' }}
                                    </td>

                                    <td>
                                        {{ $fixed_assets_buy_request->remark ?? '' }}
                                    </td>

                                    <td>
                                        {{ $fixed_assets_buy_request->user_table->name ?? '' }}
                                    </td>

                                    <td style="text-align: right">
                                        @if ($fixed_assets_buy_request->approval_qty == null)
                                            <input type="text" placeholder="Approval Qty"
                                                style="width: 100%; text-align: right;" class="ApprovalQty"
                                                data-id="{{ $fixed_assets_buy_request->id }}"
                                                value="{{ $fixed_assets_buy_request->approval_qty ?? '' }}">
                                        @else
                                            {{ $fixed_assets_buy_request->approval_qty ?? '' }}
                                        @endif
                                    </td>

                                    <td>
                                        @if ($fixed_assets_buy_request->approval_remark == null)
                                            <input type="text" placeholder="Remark" style="width: 100%;"
                                                class="ApprovalRemark" data-id="{{ $fixed_assets_buy_request->id }}"
                                                value="{{ $fixed_assets_buy_request->approval_remark ?? '' }}">
                                        @else
                                            {{ $fixed_assets_buy_request->approval_remark ?? '' }}
                                        @endif
                                    </td>

                                    <td style="text-align: center">
                                        @if ($fixed_assets_buy_request->approval_qty == null)
                                            <span class="badge bg-danger">
                                                <i class="fa fa-x"></i>
                                                Pending
                                            </span>
                                        @else
                                            <span class="badge bg-success">
                                                <i class="fa fa-check-double"></i>
                                                Done
                                            </span>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                    <div class="d-grid gap-2 d-md-flex justify-content-md-end" style="padding: 10px;">

                        <a href="{{ route('fixedassets.index') }}" class="btn btn-primary">
                            <i class="fa fa-arrow-left"></i>
                            Back
                        </a>

                        <a href="" class="btn btn-success">
                            Confirm
                        </a>
                    </div>

                    <br>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        var fixed_assets_buy_request_id = 0;
        var approval_qty = 0;
        $(document).on("keyup", ".ApprovalQty", function() {
            fixed_assets_buy_request_id = $(this).data('id');
            approval_qty = $(this).val();
            if (approval_qty == null || approval_qty == "" || isNaN(approval_qty)) {
                alert("Enter Numeric value only.");
                return false;
            }
            updateFixedAssetsBuyRequestsQty()
        });

        function updateFixedAssetsBuyRequestsQty() {
            var url = '{{ url('update_fixed_assets_approval_qty') }}';
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                method: 'POST',
                url: url,
                data: {
                    fixed_assets_buy_request_id: fixed_assets_buy_request_id,
                    approval_qty: approval_qty,
                },
                success: function(data) {
                    console.log("Ok")
                },
                error: function(data) {
                    console.log("Error")
                }
            });
        }



        var approval_remark = '';
        $(document).on("keyup", ".ApprovalRemark", function() {
            fixed_assets_buy_request_id = $(this).data('id');
            approval_remark = $(this).val();
            updateFixedAssetsBuyRequestsQtyRemark()
        });

        function updateFixedAssetsBuyRequestsQtyRemark() {
            var url = '{{ url('update_fixed_assets_approval_remark') }}';
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                method: 'POST',
                url: url,
                data: {
                    fixed_assets_buy_request_id: fixed_assets_buy_request_id,
                    approval_remark: approval_remark,
                },
                success: function(data) {
                    console.log("Ok")
                },
                error: function(data) {
                    console.log("Error")
                }
            });
        }
    </script>
@endsection
