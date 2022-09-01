@extends('layouts.menus.accounting')
@section('content')

    <div class="row justify-content-center">
        <div class="col-xl-6">
            <div class="card mb-4">
                <h5 class="card-header">Account Type</h5>
                <div class="card-body">

                    <form action="{{ route('chartofaccount.update', $coa->id) }}" method="POST" autocomplete="off"
                        id="my-form" role="form">
                        @csrf
                        @method('PUT')

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Account Type</label>
                            <div class="col-md-9">
                                <select id="account_type_id" class="form-select @error('account_type') is-invalid @enderror"
                                    name="account_type">
                                    <option value="">--Please Select Account Type--</option>
                                    @foreach ($account_types as $account_type)
                                        <option value="{{ $account_type->id }}" @if ($account_type->id == $coa->account_type_id) selected @endif>
                                            {{ $account_type->description }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('account_type')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Account Group</label>
                            <div class="col-md-9">

                                <input type="hidden" id="account_classification_id" name="account_group"
                                    value="{{ $coa->account_classification_id }}">

                                <input id="account_group" class="form-control @error('account_group') is-invalid @enderror"
                                    type="text" readonly />
                                @error('account_group')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Account Number</label>
                            <div class="col-md-9">
                                <div class="input-group">
                                    <input type="text" class="form-control @error('account_number') is-invalid @enderror"
                                        value="{{ $coa->coa_number }}" name="account_number" />
                                    @error('account_number')
                                        <div class="invalid-feedback"> {{ $message }} </div>
                                    @enderror
                                </div>
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Description</label>
                            <div class="col-md-9">
                                <input class="form-control @error('description') is-invalid @enderror" type="text"
                                    name="description" value="{{ $coa->description }}" />
                                @error('description')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Opening Balance</label>
                            <div class="col-md-9">
                                <input class="form-control @error('opening_balance') is-invalid @enderror" type="text"
                                    name="opening_balance" value="{{ $coa->account_opening_balance }}" />
                                @error('opening_balance')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-search-input" class="col-md-3 col-form-label"></label>
                            <div class="col-md-9">
                                <button type="submit" class="btn btn-danger">Save</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script type="text/javascript">
        var account_group = document.getElementById("account_group");
        var account_classification_id = document.getElementById("account_classification_id");


        $(document).ready(function() {
            $('select[name="account_type"]').on('change', function() {
                var classificationID = $(this).val();
                if (classificationID) {
                    $.ajax({
                        url: '/accounttypedependent/ajax/' + classificationID,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            account_classification_id.value = data.account_classification_id;
                            getAccountClassifications(data.account_classification_id);
                        }
                    });
                }
            });

            autoCallAjax();
        });


        function autoCallAjax() {
            var classificationID = {{ $coa->account_type_id }};
            $.ajax({
                url: '/accounttypedependent/ajax/' + classificationID,
                type: "GET",
                dataType: "json",
                success: function(data) {
                    account_classification_id.value = data.account_classification_id;
                    getAccountClassifications(data.account_classification_id);
                }
            });
        }



        function getAccountClassifications(id) {
            var classificationID = id;
            if (classificationID) {
                $.ajax({
                    url: '/classificationdependent/ajax/' + classificationID,
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        account_group.value = data.name;
                    }
                });
            }
        }
    </script>
@endsection
