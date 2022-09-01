@extends('layouts.menus.purchase')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-10 col-sm-12 col-lg-10">
            <div class="card mb-3">
                <div class="card-header border-bottom">
                    <ul class="nav nav-tabs card-header-tabs" role="tablist">
                        <li class="nav-item">
                            <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#form-tabs-personal"
                                role="tab" aria-selected="true">
                                Fixed Assets Purchase
                            </button>
                        </li>
                    </ul>
                </div>

                <div class="tab-content">
                    <div class="tab-pane fade active show" id="form-tabs-personal" role="tabpanel">
                        <form action="{{ route('fixed_assets_purchase.update', $fixed_assets_purchase->id) }}"
                            method="POST" autocomplete="off" id="edit-form" role="form">
                            @csrf
                            @method('PUT')

                            <div class="row py-2">
                                <div class="col-md-4">
                                    <label class="form-label" for="formtabs-first-name" style="font-weight: bold">
                                        Reference
                                    </label>
                                    <input type="text" class="form-control @error('reference') is-invalid @enderror"
                                        name="reference" value="{{ $fixed_assets_purchase->reference }}" />
                                    @error('reference')
                                        <div class="invalid-feedback"> {{ $message }} </div>
                                    @enderror
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label" for="formtabs-first-name" style="font-weight: bold">
                                        Order Date
                                    </label>
                                    <input type="text"
                                        class="form-control date_picker @error('order_date') is-invalid @enderror"
                                        name="order_date" value="{{ $fixed_assets_purchase->order_date }}" />
                                    @error('order_date')
                                        <div class="invalid-feedback"> {{ $message }} </div>
                                    @enderror
                                </div>
                            </div>

                            <div class="row py-2">
                                <table class="table table-bordered table-sm" id="addRemoveTable">
                                    <thead class="tbbg">
                                        <tr>
                                            <th style="color: white; text-align: center;">Fixed Assets</th>
                                            <th style="color: white; text-align: center;">Qty</th>
                                            <th style="color: white; text-align: center;">Price</th>
                                            <th style="color: white; text-align: center;">Desciption</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td id="col0">
                                            <select name="fixed_asset_id" style="width: 100%;" class="form-control"
                                                required>
                                                @foreach ($fixed_assets as $fixed_asset)
                                                    <option value="{{ $fixed_asset->id }}"
                                                        @if ($fixed_asset->id == $fixed_assets_purchase->fixed_asset_id) selected @endif>
                                                        {{ $fixed_asset->item_name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </td>

                                        <td id="col1">
                                            <input type="text" name="qty" style="width: 100%;" class="form-control"
                                                value="{{ $fixed_assets_purchase->qty }}" required />
                                        </td>

                                        <td id="col2">
                                            <input type="text" name="price" style="width: 100%;" class="form-control"
                                                value="{{ $fixed_assets_purchase->price }}" required />
                                        </td>

                                        <td id="col3">
                                            <input type="text" name="desciption" style="width: 100%;" class="form-control"
                                                value="{{ $fixed_assets_purchase->desciption }}" />
                                        </td>
                                    </tr>
                                </table>

                                <div class="col-md-12">
                                    <input type="submit" value="Save" class="btn btn-primary btn-sm">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\UpdateFixedAssetsPurchase', '#edit-form') !!}
@endsection
