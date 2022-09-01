@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-10 col-sm-12 col-lg-10">
            <div class="card mb-3">
                <div class="tab-content">
                    <h5>Variable Assets</h5>
                    <br>
                    <div class="tab-pane fade active show" role="tabpanel">
                        <form action="{{ route('variable_assets.update', $variable_asset->id) }}" method="POST"
                            autocomplete="off" id="edit-form" role="form">
                            @csrf
                            @method('PUT')
                            <div class="row g-3">

                                <div class="row py-2">
                                    <div class="col-md-6">
                                        <label class="form-label" for="formtabs-country">
                                            --Please Select Main Warehouse--
                                        </label>
                                        <select id="formtabs-country" class="select2 form-select" data-allow-clear="true"
                                            name="main_warehouse">
                                            @foreach ($mainwarehouses as $mainwarehouse)
                                                <option value="{{ $mainwarehouse->id }}"
                                                    @if ($variable_asset->main_warehouse_id == $mainwarehouse->id) selected @endif>
                                                    {{ $mainwarehouse->warehouse_name }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('warehouse_code')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label" for="formtabs-first-name" style="font-weight: bold">
                                            Category
                                        </label>
                                        <input type="text" class="form-control @error('category') is-invalid @enderror"
                                            name="category" list="category" value="{{ $variable_asset->category }}" />
                                        <datalist id="category">
                                            <option value="Construction">
                                            <option value="Decoration">
                                            <option value="Electrical">
                                            <option value="Plumbing">
                                            <option value="Other">
                                        </datalist>
                                        @error('category')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>

                                </div>

                                <div class="row py-2">
                                    <div class="col-md-4 mb-2">
                                        <label class="form-label" for="formtabs-first-name" style="font-weight: bold">
                                            Desciption or Item Name
                                        </label>
                                        <input type="text" class="form-control @error('item_name') is-invalid @enderror"
                                            name="item_name" value="{{ $variable_asset->item_name }}" />
                                        @error('item_name')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>

                                    <div class="col-md-4 mb-2">
                                        <label class="form-label" for="formtabs-last-name"
                                            style="font-weight: bold">Unit</label>
                                        <input type="text" class="form-control @error('unit') is-invalid @enderror"
                                            name="unit" value="{{ $variable_asset->unit }}" />
                                        @error('unit')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>

                                    <div class="col-md-4 mb-2">
                                        <label class="form-label" for="formtabs-last-name"
                                            style="font-weight: bold">Qty</label>
                                        <input type="text" class="form-control @error('qty') is-invalid @enderror"
                                            name="qty" value="0" value="{{ $variable_asset->qty }}" />
                                        @error('qty')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>

                                    <div class="col-md-3" hidden>
                                        <label for="TagifyBasic" class="form-label" style="font-weight: bold">Size</label>
                                        <select class="select2entry form-select" multiple name="sizes[]">
                                            @php
                                                $sizes = explode(',', $variable_asset->sizes);
                                            @endphp
                                            @foreach ($sizes as $key => $value)
                                                <option selected="selected">
                                                    {{ $value }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-8 mb-2">
                                        <label class="form-label" for="formtabs-last-name"
                                            style="font-weight: bold">Remark</label>
                                        <input type="text" class="form-control @error('remark') is-invalid @enderror"
                                            name="remark" value="{{ $variable_asset->remark }}" />
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
    {!! JsValidator::formRequest('App\Http\Requests\UpdateVariableAssets', '#edit-form') !!}
@endsection
