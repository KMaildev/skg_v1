@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="row invoice-preview">
            <div class="col-xl-12 col-md-12 mb-md-0">
                <div class="card invoice-preview-card m-2">
                    <div class="card-body">
                        <div
                            class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                            <div>
                                <h4>Request code #{{ $return_info->return_code }}</h4>
                                <div class="mb-2">
                                    <span class="me-1">Request Date:</span>
                                    <span class="fw-semibold">{{ $return_info->return_date }}</span>
                                </div>
                                <div class="mb-2">
                                    <span class="me-1">Site Location:</span>
                                    <span class="fw-semibold">
                                        {{ $return_info->customer_table->site_location ?? '' }}
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="my-0" />
                    <div class="table-responsive">
                        <form autocomplete="off" action="{{ route('inventory_qs_team_check.store') }}" method="POST"
                            id="create-form">
                            @csrf
                            <input type="hidden" value="{{ $return_info->id }}" name="engineer_return_info_id" required>

                            <table class="table table-bordered">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="color: white; text-align: center; width: 1%;">#</th>
                                        <th style="color: white; text-align: center; width: 20%;">Request Items</th>
                                        <th style="color: white; text-align: center; width: 20%;">Request Qty</th>
                                        <th style="color: white; text-align: center; width: 20%;">Passed (Qty)</th>
                                        <th style="color: white; text-align: center; width: 20%;">Passed (Qty Entry)
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>

                                    @foreach ($eng_return_items as $key => $eng_return_item)
                                        <tr>
                                            <td>
                                                {{ $key + 1 }}
                                            </td>

                                            <td style="text-align: center">
                                                {{ $eng_return_item->fixed_assets_table->item_name }}
                                            </td>

                                            <td style="text-align: center">
                                                {{ $eng_return_item->quantity }}
                                            </td>

                                            <td></td>

                                            <td style="text-align: center;">
                                                <input type="hidden" value="{{ $eng_return_item->id }}"
                                                    name="return_item_id[]">

                                                <input type="hidden"
                                                    value="{{ $eng_return_item->fixed_assets_table->id }}"
                                                    name="fixed_asset_id[]">

                                                <input type="text" value="0" style="text-align:right;" name="passed_qty[]">
                                            </td>

                                        </tr>
                                    @endforeach
                                </tbody>
                                <tr>
                                    <th colspan="2">Total</th>

                                    <th></th>
                                    <th></th>

                                    <th style="text-align: center">
                                        <input type="submit" class="btn btn-success" value="Save">
                                    </th>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreRetrunQsTeamCheckPasses', '#create-form') !!}
@endsection
