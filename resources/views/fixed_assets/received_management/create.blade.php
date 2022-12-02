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
                    <table class="table table-bordered table-sm" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center; width: 10%;">Item <br> Name</th>
                                <th style="color: white; text-align: center; width: 10%;">Request <br> Date</th>
                                <th style="color: white; text-align: center; width: 5%;">Request <br> Qty</th>
                                <th style="color: white; text-align: center; width: 10%;">Request <br> Remark</th>
                                <th style="color: white; text-align: center; width: 10%;">Request <br> User</th>
                                <th style="color: white; text-align: center; width: 5%;">Approval <br> Qty</th>
                                <th style="color: white; text-align: center; width: 10%;">Approval <br> Remark</th>
                                <th style="color: white; text-align: center; width: 10%;">Approval <br> Date</th>
                                <th style="color: white; text-align: center; width: 5%;">Received <br> Qty</th>
                                <th style="color: white; text-align: center; width: 10%;">Received <br> Remark</th>
                                <th style="color: white; text-align: center; width: 10%;">Received <br> File</th>
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

                                    <td>
                                        {{ $fixed_assets_buy_request->approval_qty ?? '' }}
                                    </td>

                                    <td>
                                        {{ $fixed_assets_buy_request->approval_remark ?? '' }}
                                    </td>

                                    <td>
                                        {{ $fixed_assets_buy_request->approval_date ?? '' }}
                                    </td>

                                    <td style="text-align: right">
                                        @if ($fixed_assets_buy_request->received_qty == null)
                                            <input type="text" placeholder="Received Qty"
                                                style="width: 100%; text-align: right;" class="ReceivedQty"
                                                data-id="{{ $fixed_assets_buy_request->id }}"
                                                value="{{ $fixed_assets_buy_request->received_qty ?? '' }}">
                                        @else
                                            {{ $fixed_assets_buy_request->received_qty ?? '' }}
                                        @endif
                                    </td>

                                    <td>
                                        @if ($fixed_assets_buy_request->received_remark == null)
                                            <input type="text" placeholder="Remark" style="width: 100%;"
                                                class="ReceivedRemark" data-id="{{ $fixed_assets_buy_request->id }}"
                                                value="{{ $fixed_assets_buy_request->received_remark ?? '' }}">
                                        @else
                                            {{ $fixed_assets_buy_request->received_remark ?? '' }}
                                        @endif
                                    </td>

                                    <td>
                                        @if ($fixed_assets_buy_request->received_files)
                                            <img src="{{ asset($fixed_assets_buy_request->received_files) }}"
                                                alt="" data-enlargeable="" style="width: 70px; height: 70px;">
                                        @else
                                            <button class="btn btn-success btn-sm" data-bs-toggle="modal"
                                                data-bs-target="#modalCenter-{{ $fixed_assets_buy_request->id }}">
                                                Upload
                                            </button>
                                        @endif
                                    </td>
                                </tr>

                                <div class="col-lg-4 col-md-6">
                                    <form action="{{ route('fixed_assets_received_file_upload') }}" method="POST"
                                        id="create-form" enctype="multipart/form-data">
                                        @csrf

                                        <input type="hidden" value="{{ $fixed_assets_buy_request->id }}"
                                            name="fixed_assets_buy_request_id">
                                        <div>
                                            <div class="modal fade" id="modalCenter-{{ $fixed_assets_buy_request->id }}"
                                                tabindex="-1" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="modalCenterTitle">
                                                                Received File Upload
                                                            </h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                aria-label="Close">
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="mb-3">
                                                                    <input type="hidden"
                                                                        value="{{ $fixed_assets_buy_request->id }}"
                                                                        name="fixed_asset_id" required>

                                                                    <input type="file" class="form-control"
                                                                        name="received_file">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-label-secondary"
                                                                data-bs-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-primary">Save</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
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
                </div>
            </div>
        </div>
    </div>
@endsection


@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\UpdateFixedAssetsReceivedUpload', '#create-form') !!}
    <script>
        var fixed_assets_buy_request_id = 0;
        var received_qty = 0;
        $(document).on("keyup", ".ReceivedQty", function() {
            fixed_assets_buy_request_id = $(this).data('id');
            received_qty = $(this).val();
            if (received_qty == null || received_qty == "" || isNaN(received_qty)) {
                alert("Enter Numeric value only.");
                return false;
            }
            updateFixedAssetsBuyRequestsQty()
        });

        var received_remark = '';
        $(document).on("keyup", ".ReceivedRemark", function() {
            fixed_assets_buy_request_id = $(this).data('id');
            received_remark = $(this).val();
            updateFixedAssetsBuyRequestsQtyRemark()
        });

        function updateFixedAssetsBuyRequestsQty() {
            var url = '{{ url('update_fixed_assets_received_qty') }}';
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
                    received_qty: received_qty,
                },
                success: function(data) {
                    console.log("Ok")
                },
                error: function(data) {
                    console.log("Error")
                }
            });
        }

        function updateFixedAssetsBuyRequestsQtyRemark() {
            var url = '{{ url('update_fixed_assets_received_remark') }}';
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
                    received_remark: received_remark,
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
