@extends('layouts.menus.hr')
@section('content')
    <div class="row justify-content-center">
        <div class="col-xl-6">
            <div class="card mb-4">
                <h5 class="card-header">Department</h5>
                <div class="card-body">

                    <form action="{{ route('department.store') }}" method="POST" autocomplete="off" id="create-form"
                        role="form">
                        @csrf
                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Title</label>
                            <div class="col-md-9">
                                <input class="form-control @error('title') is-invalid @enderror" type="text" name="title"
                                    value="{{ old('title') }}" />
                                @error('title')
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
@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreDepartment', '#create-form') !!}
@endsection
@endsection
