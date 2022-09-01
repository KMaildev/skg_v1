@extends('layouts.menus.project')
@section('content')
    <div class="row justify-content-center">

        <div class="col-md-12 col-lg-12 col-sm-12">
            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Remark</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('project.update', $project->id) }}"
                        method="POST">
                        @csrf
                        @method('PUT')
                        <div class="row mb-3">
                            <div class="col-sm-12">
                                <textarea id="summernotes" name="remark">{{ $project->remark }}</textarea>
                                @error('remark')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="pt-4">
                            <div class="row justify-content-start">
                                <div class="col-sm-12">
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
    <script>
        $(document).ready(function() {
            $('#summernotes').summernote({
                placeholder: 'Remark',
                tabsize: 5,
                height: 400,
                toolbar: [
                    ['style', ['style']],
                    ['font', ['bold', 'underline', 'clear']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['table', ['table']],
                    ['insert', ['link']],
                ]
            });
        });
    </script>
@endsection
