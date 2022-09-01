@extends('layouts.menus.bq')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-9 col-sm-12 col-lg-9">
            <div class="card">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            Work Scope Create
                        </h5>
                    </div>
                </div>

                <div class="tab-content">
                    <div class="tab-pane fade active show" id="form-tabs-personal" role="tabpanel">
                        <form action="{{ route('work_scope.update', $work_scope->id) }}" method="POST" autocomplete="off" id="create-form"
                            role="form">
                            @csrf
                            @method('PUT')
                            <div class="row g-3">
                                <div class="col-md-12">
                                    <label class="form-label" for="formtabs-first-name" style="font-weight: bold">
                                        Work Scope Title
                                    </label>
                                    <input type="text" class="form-control @error('title') is-invalid @enderror"
                                        name="title" value="{{ $work_scope->title ?? '' }}" />
                                    @error('title')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
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
    {!! JsValidator::formRequest('App\Http\Requests\StoreWorkScope', '#create-form') !!}
@endsection
