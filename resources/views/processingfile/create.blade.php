@extends('layouts.menus.project')
@section('content')
    <div class="row justify-content-center">
        <style>
            .preview_images img {
                width: 100px;
                height: auto;
                border: 1px solid #ddd;
                margin: 7px;
                object-position: center;
                background-size: cover;
            }

        </style>
        <div class="col-md-6 col-lg-6 col-sm-12">
            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Processing File </h5>
                    <form class="card-body" autocomplete="off" action="{{ route('processingfile.store') }}"
                        method="POST" id="create-form" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" value="{{ $id }}" name="project_id" required>
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">File</label>
                            <div class="col-sm-9">
                                <input class="form-control" type="file" multiple name="files[]">
                                <div class="preview_images my-2"> </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">Remark</label>
                            <div class="col-sm-9">
                                <textarea id="basic-default-message" class="form-control @error('remark') is-invalid @enderror"
                                    name="remark">{{ old('remark') }}</textarea>
                                @error('remark')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="pt-4">
                            <div class="row justify-content-end">
                                <div class="col-sm-9">
                                    <button type="submit" class="btn btn-primary me-sm-2 me-1">Save</button>
                                    <a href="{{ route('customers.index') }}" class="btn btn-label-secondary">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreProcessingFile', '#create-form') !!}
@endsection
