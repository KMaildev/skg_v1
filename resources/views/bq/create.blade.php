@extends('layouts.menus.project')
@section('content')
    <h4 class="breadcrumb-wrapper mb-4">
        <span class="text-muted fw-light">Project / BQ / </span> {{ $project->customer_table->project_code ?? '' }}
    </h4>
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-6 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Variable Assets</h5>
                        <div class="card-title-elements ms-auto">
                            <input id="myInput" type="text" placeholder="Search..">
                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap rowheaders table-scroll outer-wrapper" role="region"
                    aria-labelledby="HeadersCol" tabindex="0">
                    <table class="table table-bordered main-table py-5" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th
                                    style="background-color: #2e696e !important; color: white; text-align: center; width: 1%;">
                                    #
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Item Name
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Unit
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Category
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Remark
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Actions
                                </th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0 row_position" id="tablecontents">
                            @foreach ($categories as $i => $category)
                                @php
                                    $categoryies = $category->category;
                                @endphp
                                <tr>
                                    <td style="background-color: #ededed;">
                                        {{ $i + 1 }}
                                    </td>
                                    <td colspan="7" style="background-color: #ededed;">
                                        {{ $category->category ?? '' }}
                                    </td>
                                </tr>
                                @php
                                    $j = 1;
                                @endphp
                                @foreach ($variable_assets as $key => $variable_asset)
                                    @if ($categoryies == $variable_asset->category)
                                        <tr class="row1" data-id="{{ $variable_asset->id }}">

                                            <td style="text-align: center;">
                                                - {{ $j++ }}
                                            </td>

                                            <td style="text-align: center;">
                                                {{ $variable_asset->item_name ?? '-' }}
                                            </td>

                                            <td style="text-align: center;">
                                                {{ $variable_asset->unit ?? '-' }}
                                            </td>

                                            <td style="text-align: center;">
                                                {{ $variable_asset->category ?? '' }}
                                            </td>

                                            <td style="text-align: center;">
                                                {{ $variable_asset->remark }}
                                            </td>

                                            <td style="text-align: center;">
                                                <button class="btn btn-info btn-xs" type="button"
                                                    onclick="setVariableAssetsTemporaryBq({{ $variable_asset->id }})">
                                                    Add
                                                </button>
                                            </td>
                                        </tr>
                                    @endif
                                @endforeach
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-sm-6">
            @include('bq.material')
            @include('bq.labour')
        </div>
    </div>
@endsection
