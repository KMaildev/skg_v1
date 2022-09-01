@extends('layouts.menus.accounting')
@section('content')

    <div class="row justify-content-center">
        <div class="col-xl-6">
            <div class="card mb-4">
                <h5 class="card-header">Account Type</h5>
                <div class="card-body">

                    <form action="{{ route('accounttype.update', $account_types->id) }}" method="POST" autocomplete="off"
                        id="my-form" role="form">
                        @csrf
                        @method('PUT')

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Account Type</label>
                            <div class="col-md-9">
                                <select id="defaultSelect" class="form-select @error('account_type') is-invalid @enderror"
                                    name="account_type">
                                    <option value="">--Please Select Account Type--</option>
                                    @foreach ($account_classifications as $account_classification)
                                        <option value="{{ $account_classification->id }}" @if ($account_types->account_classification_id == $account_classification->id) selected @endif>
                                            {{ $account_classification->name }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('account_type')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Account Number</label>
                            <div class="col-md-9">
                                <input class="form-control @error('account_number') is-invalid @enderror" type="text"
                                    name="account_number" value="{{ $account_types->number }}" />
                                @error('account_number')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Description</label>
                            <div class="col-md-9">
                                <input class="form-control @error('description') is-invalid @enderror" type="text"
                                    name="description" value="{{ $account_types->description }}" />
                                @error('description')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Financial Statement</label>
                            <div class="col-md-9">
                                <select id="defaultSelect"
                                    class="form-select @error('financial_statement') is-invalid @enderror"
                                    name="financial_statement">
                                    <option value="">--Please Select Financial Statement--</option>
                                    <option value="BalanceSheet" @if ($account_types->financial_statement == 'BalanceSheet') selected @endif>Balance Sheet</option>
                                    <option value="IncomeStatement" @if ($account_types->financial_statement == 'IncomeStatement') selected @endif>Income Statement</option>
                                </select>
                                @error('financial_statement')
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
