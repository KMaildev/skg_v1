@extends('layouts.menus.accounting')
@section('content')

<div class="row justify-content-center">
    <div class="col-xl-6">
        <div class="card mb-4">
            <h5 class="card-header">Account Classification</h5>
            <div class="card-body">

                <form action="{{ route('accountclassification.store') }}" method="POST" autocomplete="off" id="my-form" role="form">
                    @csrf
                    <div class="mb-3 row">
                        <label for="html5-text-input" class="col-md-3 col-form-label">Account Name</label>
                        <div class="col-md-9">
                            <input class="form-control @error('account_name') is-invalid @enderror" type="text" name="account_name" value="{{ old('account_name') }}" />
                            @error('account_name')
                            <div class="invalid-feedback"> {{ $message }} </div>
                            @enderror
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="html5-search-input" class="col-md-3 col-form-label">Account Code</label>
                        <div class="col-md-9">
                            <input class="form-control @error('account_code') is-invalid @enderror" type="text" name="account_code" value="{{ old('account_code') }}" />
                            @error('account_code')
                            <div class="invalid-feedback"> {{ $message }} </div>
                            @enderror
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="html5-search-input" class="col-md-3 col-form-label"></label>
                        <div class="col-md-9">
                            <button type="submit" class="btn btn-secondary">Save</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
@endsection