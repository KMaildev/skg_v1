@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-6 col-sm-12">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Main Warehouse</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('mainwarehouse.store') }}" method="POST" autocomplete="off" id="create-form"
                        role="form">
                        @csrf

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label" for="basic-default-name">Warehouse Code</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('warehouse_code') is-invalid @enderror"
                                    name="warehouse_code" value="{{ old('warehouse_code') }}" />
                                @error('warehouse_code')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label" for="basic-default-name">Warehouse Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('warehouse_name') is-invalid @enderror"
                                    name="warehouse_name" value="{{ old('warehouse_name') }}" />
                                @error('warehouse_name')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label" for="basic-default-name">Location</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('location') is-invalid @enderror"
                                    name="location" value="{{ old('location') }}" />
                                @error('location')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row justify-content-end">
                            <div class="col-sm-9">
                                <button type="submit" class="btn btn-primary">Save</button>
                                <a href="{{ route('mainwarehouse.index') }}" class="btn btn-secondary">Cancel</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreMainWarehouse', '#create-form') !!}
@endsection
