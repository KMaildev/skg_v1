@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-10 col-sm-12 col-lg-10">
            <div class="card mb-3">
                <div class="card-header border-bottom">
                    <ul class="nav nav-tabs card-header-tabs" role="tablist">
                        <li class="nav-item">
                            <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#form-tabs-personal"
                                role="tab" aria-selected="true">Fixed Assets</button>
                        </li>
                    </ul>
                </div>

                <div class="tab-content">
                    <div class="tab-pane fade active show" id="form-tabs-personal" role="tabpanel">
                        <form action="{{ route('fixedassets.store') }}" method="POST" autocomplete="off" id="create-form"
                            role="form">
                            @csrf
                            <div class="row g-3">

                                <div class="row py-2">
                                    <div class="col-md-6">
                                        <label class="form-label" for="formtabs-country">
                                            --Please Select Main Warehouse--
                                        </label>
                                        <select id="formtabs-country" class="select2 form-select" data-allow-clear="true"
                                            name="main_warehouse">
                                            <option value="">Select</option>
                                            @foreach ($mainwarehouses as $mainwarehouse)
                                                <option value="{{ $mainwarehouse->id }}">
                                                    {{ $mainwarehouse->warehouse_name }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('warehouse_code')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="row py-2">
                                    <div class="col-md-3">
                                        <label class="form-label" for="formtabs-first-name" style="font-weight: bold">
                                            Desciption or Item Name
                                        </label>
                                        <input type="text" class="form-control @error('item_name') is-invalid @enderror"
                                            name="item_name" />
                                        @error('item_name')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>

                                    <div class="col-md-2">
                                        <label class="form-label" for="formtabs-last-name"
                                            style="font-weight: bold">Unit</label>
                                        <input type="text" class="form-control @error('unit') is-invalid @enderror"
                                            name="unit" />
                                        @error('unit')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>

                                    <div class="col-md-2">
                                        <label class="form-label" for="formtabs-last-name"
                                            style="font-weight: bold">Qty</label>
                                        <input type="text" class="form-control @error('qty') is-invalid @enderror"
                                            name="qty" value="0" />
                                        @error('qty')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>

                                    <div class="col-md-5">
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
    {!! JsValidator::formRequest('App\Http\Requests\StoreFixedAssets', '#create-form') !!}
@endsection
