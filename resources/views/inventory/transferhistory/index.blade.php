@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Transfer History</h5>

                        <form class="card-body" method="GET" action="{{ route('transferhistory.index') }}">
                            <div class="col-md-2">
                            </div>
                            <div class="row g-3 flex-row-reverse">
                                <div class="col-md-10">
                                    <div class="row">

                                        <div class="col-md-4">
                                            <div class="position-relative">
                                                <select id="multicol-country"
                                                    class="select2 form-select select2-hidden-accessible"
                                                    data-allow-clear="true" name="user_id">
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="position-relative">
                                                <select id="multicol-country"
                                                    class="select2 form-select select2-hidden-accessible"
                                                    data-allow-clear="true" name="fixed_asset_id">
                                                    <option value="">Select</option>
                                                    @foreach ($fixed_assets as $fixed_asset)
                                                        <option value="{{ $fixed_asset->id }}">
                                                            {{ $fixed_asset->item_name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <input type="submit" value="Search" class="btn btn-primary">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


                <div class="col-md">
                    <div class="table-responsive text-nowrap">
                        <table class="table table-bordered">
                            <thead class="tbbg">
                                <tr>
                                    <th style="color: white; text-align: center; width: 1%">#</th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Engineer Name
                                    </th>

                                    <th style="color: white; text-align: center; width: 14%">
                                        Request code
                                    </th>

                                    <th style="color: white; text-align: center; width: 14%">
                                        Request Date
                                    </th>

                                    <th style="color: white; text-align: center; width: 14%">
                                        Site Code
                                    </th>

                                    <th style="color: white; text-align: center; width: 14%">
                                        Accept / Reject
                                    </th>

                                    <th style="color: white; text-align: center; width: 14%">
                                        Request Items
                                    </th>

                                    <th style="color: white; text-align: center; width: 14%">
                                        Request Qty
                                    </th>

                                    <th style="color: white; text-align: center; width: 14%">
                                        Transferred from
                                    </th>

                                    <th style="color: white; text-align: center; width: 14%">
                                        Transferred to
                                    </th>

                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($request_items as $key => $request_item)
                                    <tr>
                                        <td>
                                            {{ $key + 1 }}
                                        </td>

                                        <td style="text-align: center">
                                            {{ $request_item->users_table->name ?? '' }}
                                        </td>

                                        <td style="text-align: center">
                                            {{ $request_item->request_info_table->request_code ?? '' }}
                                        </td>

                                        <td style="text-align: center">
                                            {{ $request_item->request_info_table->request_date ?? '' }}
                                        </td>

                                        <td style="text-align: center">
                                            {{ $request_item->customer_table->project_code ?? '' }}
                                            @
                                            {{ $request_item->customer_table->name ?? '' }}
                                        </td>

                                        <td style="text-align: center">
                                            @include(
                                                'shared.managerequest.accept_reject_status',
                                                ['request_info' => $request_item->request_info_table]
                                            )
                                        </td>

                                        <td style="text-align: center">
                                            {{ $request_item->fixed_assets_table->item_name ?? '' }}
                                        </td>

                                        <td style="text-align: center">
                                            {{ $request_item->quantity }}
                                        </td>

                                        <td style="text-align: center">
                                            @if ($request_item->request_info_table->transfer_from_status == 'warehouse')
                                                {{ $request_item->request_info_table->main_warehouse_table->warehouse_code ?? 'Warehouse' }}
                                            @elseif ($request_item->request_info_table->transfer_from_status == 'other_site')
                                                {{ $request_item->request_info_table->request_infos_table->customer_table->project_code ?? '' }}
                                                @
                                                {{ $request_item->request_info_table->request_infos_table->customer_table->name ?? '' }}
                                            @endif
                                        </td>

                                        <td>
                                            {{ $request_item->customer_table->project_code ?? '' }}
                                            @
                                            {{ $request_item->customer_table->name ?? '' }}
                                        </td>

                                    </tr>
                                @endforeach
                            </tbody>
                            <tr>
                                <th colspan="7">Total</th>
                                <th style="text-align: center; font-weight: bold">
                                    {{ $request_items->sum('quantity') }}
                                </th>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>

    </script>
@endsection
