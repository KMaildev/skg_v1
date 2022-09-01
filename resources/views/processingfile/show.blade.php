@extends('layouts.menus.project')
@section('content')
    <h4 class="py-3 breadcrumb-wrapper mb-4">
        <span class="text-muted fw-light">Project /</span> Processing File
    </h4>
    <div class="card">
        <h5 class="card-header">Files</h5>
        <div class="table-responsive text-nowrap">
            <table class="table table-bordered">
                <thead class="tbbg">
                    <tr>
                        <th style="color: white">#</th>
                        <th style="color: white">File Name</th>
                        <th style="color: white">Download</th>
                        <th style="color: white">Upload Date</th>
                        <th style="color: white">Upload By</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    @foreach ($processing_files as $key => $value)
                        <tr>
                            <td>
                                {{ $key + 1 }}
                            </td>

                            <td>
                                <strong>{{ $value->original_name }}</strong>
                            </td>

                            <td>
                                <a href="{{ Storage::url($value->processing_file) }}" download>
                                    <i class="fa fa-download fa-lg text-danger"></i>
                                    <strong>Download</strong>
                                </a>
                            </td>

                            <td>
                                <i class="fa fa-calendar fa-lg text-success"></i>
                                <strong>{{ $value->created_at }}</strong>
                            </td>
                            <td>
                                <i class="fa fa-user fa-lg text-success"></i>
                                <strong>{{ $value->users_table->name ?? '' }}</strong>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
