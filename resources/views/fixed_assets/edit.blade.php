@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-8 col-sm-12">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Fixed Assets</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('fixedassets.update', $fixed_assets->id) }}" method="POST" autocomplete="off"
                        id="edit-form" role="form">
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
                                        <option value="">Select</option>
                                        @foreach ($mainwarehouses as $mainwarehouse)
                                            <option value="{{ $mainwarehouse->id }}"
                                                @if ($fixed_assets->main_warehouse_id == $mainwarehouse->id) selected @endif>
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
                                        name="item_name" value="{{ $fixed_assets->item_name }}" />
                                    @error('item_name')
                                        <div class="invalid-feedback"> {{ $message }} </div>
                                    @enderror
                                </div>

                                <div class="col-md-2">
                                    <label class="form-label" for="formtabs-last-name"
                                        style="font-weight: bold">Unit</label>
                                    <input type="text" class="form-control @error('unit') is-invalid @enderror"
                                        name="unit" value="{{ $fixed_assets->unit }}" />
                                    @error('unit')
                                        <div class="invalid-feedback"> {{ $message }} </div>
                                    @enderror
                                </div>

                                <div class="col-md-2">
                                    <label class="form-label" for="formtabs-last-name" style="font-weight: bold">Qty</label>
                                    <input type="text" class="form-control @error('qty') is-invalid @enderror"
                                        name="qty" value="{{ $fixed_assets->qty }}" />
                                    @error('qty')
                                        <div class="invalid-feedback"> {{ $message }} </div>
                                    @enderror
                                </div>

                                <div class="col-md-5">
                                    <label class="form-label" for="formtabs-last-name"
                                        style="font-weight: bold">Remark</label>
                                    <input type="text" class="form-control @error('remark') is-invalid @enderror"
                                        name="remark" value="{{ $fixed_assets->remark }}" />
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
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\UpdateFixedAssets', '#edit-form') !!}
@endsection
