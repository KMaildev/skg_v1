@extends('layouts.menus.project')
@section('content')
    <h4 class="py-3 breadcrumb-wrapper mb-4">
        <span class="text-muted fw-light">Project /</span> Quotation Proposal
    </h4>
    <div class="card">
        <h5 class="card-header">Files</h5>
        <div class="table-responsive text-nowrap">
            <table class="table">
                <thead class="tbbg">
                    <tr>
                        <th style="color: white; background-color: #296166; text-align: center; width: 1%">#</th>
                        <th style="color: white; background-color: #296166; text-align: center; width: 20%">File Name</th>
                        <th style="color: white; background-color: #296166; text-align: center; width: 20%">Download</th>
                        <th style="color: white; background-color: #296166; text-align: center; width: 20%">Upload Date</th>
                        <th style="color: white; background-color: #296166; text-align: center; width: 20%">Upload By</th>
                    </tr>
                </thead>
                <tbody class="mytbody">
                    @foreach ($quotationproposal_files as $key => $value)
                        <tr>
                            <td style="width: 1%;">
                                {{ $key + 1 }}
                            </td>

                            <td style="width: 20%;">
                                <strong>{{ $value->original_name }}</strong>
                            </td>
                            <td style="width: 20%;">
                                <a href="{{ Storage::url($value->quotation_file) }}" download="{{ $value->original_name }}">
                                    <i class="fa fa-download fa-lg text-danger"></i>
                                    <strong>Download</strong>
                                </a>
                            </td>
                            <td style="width: 20%;">
                                <i class="fa fa-calendar fa-lg text-success"></i>
                                <strong>{{ $value->created_at }}</strong>
                            </td>
                            <td style="width: 20%;">
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
