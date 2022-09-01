@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-10 col-sm-12 col-lg-10">
            <div class="card mb-3">
                <div class="card-header border-bottom">
                    <ul class="nav nav-tabs card-header-tabs" role="tablist">
                        <li class="nav-item">
                            <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#form-tabs-personal"
                                role="tab" aria-selected="true">
                                Unusable Item
                            </button>
                        </li>
                    </ul>
                </div>

                <div class="tab-content">
                    <div class="tab-pane fade active show" id="form-tabs-personal" role="tabpanel">
                        <form action="{{ route('unusable_fixed_assets.store') }}" method="POST" autocomplete="off"
                            id="create-form" role="form">
                            @csrf
                            <input type="hidden" value="{{ $id }}" name="fixed_asset_id">
                            <div class="row g-3">

                                <div class="row py-2">
                                    <div class="col-md-3">
                                        <label class="form-label" for="formtabs-first-name" style="font-weight: bold">
                                            Item Name
                                        </label>
                                        <input type="text" class="form-control @error('item_name') is-invalid @enderror"
                                            name="item_name" value="{{ $fixed_assets->item_name }}" readonly />
                                        @error('item_name')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>

                                    <div class="col-md-2">
                                        <label class="form-label" for="formtabs-last-name" style="font-weight: bold">
                                            Qty
                                        </label>
                                        <input type="text" class="form-control @error('qty') is-invalid @enderror"
                                            name="qty" value="0" />
                                        @error('qty')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>

                                    <div class="col-md-3">
                                        <label class="form-label" for="formtabs-last-name" style="font-weight: bold">
                                            Reason
                                        </label>
                                        <input list="reason_list" type="text"
                                            class="form-control @error('reason') is-invalid @enderror" name="reason" />
                                        <datalist id="reason_list">
                                            <option value="Damage">
                                            <option value="Sale">
                                            <option value="Other">
                                        </datalist>
                                        @error('reason')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>

                                    <div class="col-md-12 py-3">
                                        <label class="form-label" for="formtabs-last-name"
                                            style="font-weight: bold">Remark</label>
                                        <input type="text" class="form-control @error('remark') is-invalid @enderror"
                                            name="remark" />
                                        @error('remark')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>

                            </div>
                            <div class="pt-4">
                                <button type="submit" class="btn btn-primary me-sm-3 me-1">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreUnusableFixedAssets', '#create-form') !!}
@endsection
