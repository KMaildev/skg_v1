@extends('layouts.menus.project')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-6 col-sm-12">
            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Quotation Proposal</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('quotationproposal.store') }}"
                        method="POST" id="create-form" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" value="{{ $id }}" name="project_id">
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">File</label>
                            <div class="col-sm-9">
                                <input class="form-control" type="file" id="files" multiple name="files[]"
                                    >
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">Remark</label>
                            <div class="col-sm-9">
                                <textarea id="basic-default-message"
                                    class="form-control @error('remark') is-invalid @enderror"
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
                                    <a href="{{ route('proposal.index') }}" class="btn btn-label-secondary">Cancel</a>
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
    {!! JsValidator::formRequest('App\Http\Requests\StoreQuotationProposal', '#create-form') !!}
@endsection
