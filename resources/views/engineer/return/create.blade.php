@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-lg-12 col-sm-12">

            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Engineer Return</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('engineer_return.store') }}" method="POST"
                        id="create-form">
                        @csrf

                        <h6 class="mb-b fw-bold" style="font-weight: bold; font-size: 15px;">1. Return Info</h6>
                        <div class="row g-3">

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="mb-3">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Return Date</label>
                                        <input type="text" class="form-control date_picker" placeholder="Month DD, YYYY"
                                            name="return_date" />
                                        @error('return_date')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="mb-3">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Return From</label>
                                        <select class="select2 form-select form-select" data-allow-clear="false"
                                            onchange="top.location.href = this.options[this.selectedIndex].value">
                                            <option value="{{ route('engineer_return_create_with_customer', 0) }}">
                                                --Please Select Return From--
                                            </option>
                                            @foreach ($projects_users as $key => $value)
                                                @foreach ($value->projects as $project)
                                                    <option
                                                        value="{{ route('engineer_return_create_with_customer', $project->customer_table->id) }}"
                                                        @if ($customer_id == $project->customer_table->id) selected @endif>
                                                        {{ $project->customer_table->name ?? '' }}
                                                        @
                                                        {{ $project->customer_table->project_code ?? '' }}
                                                    </option>
                                                @endforeach
                                            @endforeach
                                        </select>

                                        <input type="hidden" name="return_from" value="{{ $customer_id ?? '' }}" required>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-3 fw-bold" style="font-weight: bold; font-size: 15px;">2. Return Items</h6>

                        <div class="table-responsive text-nowrap">
                            <table class="table table-bordered">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="color: white; text-align: center; width: 1%">#</th>
                                        <th style="color: white; text-align: center; width: 14%">
                                            Site
                                        </th>
                                        <th style="color: white; text-align: center; width: 14%">
                                            Item Name
                                        </th>
                                        <th style="color: white; text-align: center; width: 14%">
                                            Request Qty
                                        </th>
                                        <th style="color: white; text-align: center; width: 14%">
                                            Passed Qty
                                        </th>
                                        <th style="color: white; text-align: center; width: 14%">
                                            Already (Return)
                                        </th>
                                        <th style="color: white; text-align: center; width: 14%">
                                            Return Qty
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($customer_id == null)
                                        <p style="color: red; font-size: 18px;">
                                            Please Select Return From
                                        </p>
                                    @else
                                        @php
                                            $i = 1;
                                        @endphp
                                        @foreach ($request_items as $key => $request_item)
                                            @if ($request_item->another_qs_team_check_passes_table->qs_passed_qty ?? '')
                                                @php
                                                    $y = $i++;
                                                    $fixed_asset_id = $request_item->fixed_asset_id;
                                                @endphp
                                                <tr>
                                                    <td>
                                                        <input class="form-check-input" type="checkbox"
                                                            name="fixed_asset_id[]"
                                                            value="{{ $request_item->fixed_assets_table->id ?? 0 }}"
                                                            onclick="EnableDisable(this, {{ $y }})"
                                                            id="defaultCheck_{{ $y }}">
                                                        <label class="form-check-label"
                                                            for="defaultCheck_{{ $y }}">
                                                            Check
                                                        </label>
                                                    </td>

                                                    <td>
                                                        {{ $request_item->customer_table->name ?? '' }}
                                                        @
                                                        {{ $request_item->customer_table->project_code ?? '' }}
                                                    </td>

                                                    <td>
                                                        {{ $request_item->fixed_assets_table->item_name ?? '' }}
                                                    </td>

                                                    <td>
                                                        {{ $request_item->quantity ?? '' }}
                                                    </td>

                                                    <td>
                                                        {{ $request_item->another_qs_team_check_passes_table->qs_passed_qty ?? '' }}
                                                    </td>

                                                    <td>
                                                        {{-- Already (Return) --}}
                                                        @php
                                                            $AlreadyTotal = [];
                                                        @endphp
                                                        @foreach ($return_items as $already_return_item)
                                                            @php
                                                                if ($fixed_asset_id == $already_return_item->fixed_asset_id) {
                                                                    $AlreadyTotal[] = $already_return_item->quantity ?? 0;
                                                                }
                                                            @endphp
                                                        @endforeach
                                                        @php
                                                            $TotalAlreadyTotal = array_sum($AlreadyTotal);
                                                            echo $TotalAlreadyTotal;
                                                        @endphp
                                                    </td>

                                                    <td>
                                                        @php
                                                            $pass_qty = $request_item->another_qs_team_check_passes_table->qs_passed_qty ?? 0;
                                                            $already_return_qty = $TotalAlreadyTotal;
                                                            $return_qty_tot = $pass_qty - $already_return_qty;
                                                        @endphp
                                                        <input type="text" class="form-control" name="quantity[]"
                                                            required id="qty_{{ $y }}" disabled />
                                                        @error('quantity')
                                                            <div class="invalid-feedback"> {{ $message }} </div>
                                                        @enderror
                                                    </td>
                                                </tr>
                                            @endif
                                        @endforeach
                                    @endif
                                </tbody>
                            </table>
                            <input type="submit" value="save" class="btn btn-success">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreEngineerReturn', '#create-form') !!}
    <script>
        function EnableDisable(chebox, qty_id) {
            var isCheck = $(chebox).prop("checked");
            if (isCheck) {
                $("#qty_" + qty_id).removeAttr('disabled');
            } else {
                $("#qty_" + qty_id).attr('disabled', 'disabled');
            }
        }
    </script>
@endsection
