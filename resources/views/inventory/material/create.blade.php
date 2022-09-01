@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-6 col-sm-12">
            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Material</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('material.store') }}" method="POST"
                        id="create-form">
                        @csrf

                        <h6 class="mb-3" style="font-weight: bold">Item Information</h6>
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">Item Name*</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('name') is-invalid @enderror" name="name"
                                    value="{{ old('name') }}" />
                                @error('name')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">Item Code*</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('item_code') is-invalid @enderror"
                                    name="item_code" value="{{ old('item_code') }}" />
                                @error('item_code')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="UOMAccountID">Units of Measure*</label>
                            <div class="col-sm-9">
                                <select id="UOMAccountID" class="select2 form-select form-select-lg" data-allow-clear="true"
                                    name="unitos_of_measure_id">
                                    @foreach ($unitsofmeasures as $unitsofmeasure)
                                        <option value="{{ $unitsofmeasure->id }}">
                                            {{ $unitsofmeasure->name }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('unitos_of_measure_id')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">Description</label>
                            <div class="col-sm-9">
                                <textarea id="basic-default-message"
                                    class="form-control @error('description') is-invalid @enderror">{{ old('description') }}</textarea>
                                @error('description')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-b" style="font-weight: bold">I Sell This Item</h6>
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Selling
                                Price</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('selling_price') is-invalid @enderror"
                                    name="selling_price" value="{{ old('selling_price') }}" />
                                @error('selling_price')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="SaleAccountID">Sales Account*</label>
                            <div class="col-sm-9">
                                <select id="SaleAccountID" class="select2 form-select form-select-lg"
                                    data-allow-clear="true" name="sale_account_id">
                                    @foreach ($chartof_accounts as $chartof_account)
                                        <option value="{{ $chartof_account->id }}">
                                            {{ $chartof_account->coa_number }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('sale_account_id')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="ReceivalbeAccountID">Receivable
                                Account*</label>
                            <div class="col-sm-9">
                                <select id="ReceivalbeAccountID" class="select2 form-select form-select-lg"
                                    data-allow-clear="true" name="receivable_account_id">
                                    @foreach ($chartof_accounts as $chartof_account)
                                        <option value="{{ $chartof_account->id }}">
                                            {{ $chartof_account->coa_number }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('receivable_account_id')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-b" style="font-weight: bold">I Buy This Item</h6>
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Cost
                                Price</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('cost_price') is-invalid @enderror"
                                    name="cost_price" value="{{ old('cost_price') }}" />
                                @error('cost_price')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="PurchaseAccountID">Purchase
                                Account*</label>
                            <div class="col-sm-9">
                                <select id="PurchaseAccountID" class="select2 form-select form-select-lg"
                                    data-allow-clear="true" name="purchase_account_id">
                                    @foreach ($chartof_accounts as $chartof_account)
                                        <option value="{{ $chartof_account->id }}">
                                            {{ $chartof_account->coa_number }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('purchase_account_id')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="PayableAccountID">Payable
                                Account*</label>
                            <div class="col-sm-9">
                                <select id="PayableAccountID" class="select2 form-select form-select-lg"
                                    data-allow-clear="true" name="payable_account_id">
                                    @foreach ($chartof_accounts as $chartof_account)
                                        <option value="{{ $chartof_account->id }}">
                                            {{ $chartof_account->coa_number }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('payable_account_id')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-b" style="font-weight: bold">Inventory</h6>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="InventoryAccountID">Opening Inventory
                                Account*</label>
                            <div class="col-sm-9">
                                <select id="InventoryAccountID" class="select2 form-select form-select-lg"
                                    data-allow-clear="true" name="opening_inventory_account_id">
                                    @foreach ($chartof_accounts as $chartof_account)
                                        <option value="{{ $chartof_account->id }}">
                                            {{ $chartof_account->coa_number }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('opening_inventory_account_id')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="ClosingInventoryAccountID">Closing
                                Inventory
                                Account*</label>
                            <div class="col-sm-9">
                                <select id="ClosingInventoryAccountID" class="select2 form-select form-select-lg"
                                    data-allow-clear="true" name="closing_inventory_account_id">
                                    @foreach ($chartof_accounts as $chartof_account)
                                        <option value="{{ $chartof_account->id }}">
                                            {{ $chartof_account->coa_number }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('closing_inventory_account_id')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="ClosingStockAccountID">Closing Stock
                                Account*</label>
                            <div class="col-sm-9">
                                <select id="ClosingStockAccountID" class="select2 form-select form-select-lg"
                                    data-allow-clear="true" name="closing_stock_account_id">
                                    @foreach ($chartof_accounts as $chartof_account)
                                        <option value="{{ $chartof_account->id }}">
                                            {{ $chartof_account->coa_number }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('closing_stock_account_id')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-b" style="font-weight: bold">Opening Balance</h6>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">Quantity on
                                Hand*</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('quantity_on_hand') is-invalid @enderror"
                                    name="quantity_on_hand" value="{{ old('quantity_on_hand') }}" />
                                @error('quantity_on_hand')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">As of Date*</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('as_of_date') is-invalid @enderror"
                                    name="as_of_date" value="{{ old('as_of_date') }}" />
                                @error('as_of_date')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">Cost Price*</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('opening_cost_price') is-invalid @enderror"
                                    name="opening_cost_price" value="{{ old('opening_cost_price') }}" />
                                @error('opening_cost_price')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="pt-4">
                            <div class="row justify-content-end">
                                <div class="col-sm-9">
                                    <button type="submit" class="btn btn-primary me-sm-2 me-1">Save</button>
                                    <a href="{{ route('customers.index') }}" class="btn btn-label-secondary">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreMaterial', '#create-form') !!}
@endsection
