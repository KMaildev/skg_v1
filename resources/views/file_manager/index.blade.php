@extends('layouts.main')
@section('content')
    <link rel="stylesheet" href="{{ asset('vendor/file-manager/css/file-manager.css') }}">
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">File Manager</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{ route('file_manager.index') }}">File Manager</a>
                    </li>
                    <li class="breadcrumb-item active">Data</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12 col-sm-12 col-md-12">
            <div style="height: 600px;">
                <div id="fm"></div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script src="{{ asset('vendor/file-manager/js/file-manager.js') }}"></script>
@endsection
