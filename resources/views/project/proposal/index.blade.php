@extends('layouts.menus.project')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Proposal</h5>
                        <div class="card-title-elements ms-auto">
                            @include('layouts.includes.export')

                            <a href="{{ route('project.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap rowheaders table-scroll outer-wrapper" role="region"
                    aria-labelledby="HeadersCol" tabindex="0">
                    <table class="table table-bordered main-table" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th
                                    style="color: white; text-align: center; width: 1%; background-color: #2e696e !important">
                                    #
                                </th>

                                <th
                                    style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                                    Customer Name</th>

                                <th
                                    style="color: white; text-align: center; width: 20%; background-color: #2e696e !important">
                                    Project Code</th>

                                <th
                                    style="color: white; text-align: center; width: 20%; background-color: #2e696e !important">
                                    Date</th>
                                <th
                                    style="color: white; text-align: center; width: 20%; background-color: #2e696e !important">
                                    Processing File</th>

                                @can('floor_plan_view')
                                    <th
                                        style="color: white; text-align: center; width: 17%; background-color: #2e696e !important">
                                        Floor Plan</th>
                                @endcan

                                @can('quotation_proposal_view')
                                    <th
                                        style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                                        Quotation Proposal</th>
                                @endcan

                                @can('exterior_design_fees_view')
                                    <th
                                        style="color: white; text-align: center; width: 16%; background-color: #2e696e !important">
                                        Exterior Design Fees</th>
                                @endcan

                                @can('structure_design_fees_view')
                                    <th
                                        style="color: white; text-align: center; width: 16%; background-color: #2e696e !important">
                                        Structure Design Fees</th>
                                @endcan

                                <th
                                    style="color: white; text-align: center; width: 16%; background-color: #2e696e !important">
                                    No Fees but Allowed</th>

                                @can('archi_exterior_design_view')
                                    <th
                                        style="color: white; text-align: center; width: 16%; background-color: #2e696e !important">
                                        Archi Exterior Design</th>
                                @endcan

                                @can('structure_design_view')
                                    <th
                                        style="color: white; text-align: center; width: 16%; background-color: #2e696e !important">
                                        Structure Design</th>
                                @endcan

                                <th
                                    style="color: white; text-align: center; width: 16%; background-color: #2e696e !important">
                                    Permit</th>

                                <th
                                    style="color: white; text-align: center; width: 16%; background-color: #2e696e !important">
                                    Contract</th>

                                @can('project_delete')
                                    <th
                                        style="color: white; text-align: center; width: 16%; background-color: #2e696e !important">
                                        Actions</th>
                                @endcan
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0 row_position" id="tablecontents">

                            @foreach ($projects as $key => $project)
                                <tr class="row1" data-id="{{ $project->id }}">

                                    <td
                                        style="text-align: center; font-size: 13px; font-weight: bold; background-color: #f2f2f2;">
                                        {{ $key + 1 }}
                                    </td>

                                    <th style="text-align: center; font-size: 13px; font-weight: bold; background-color: #f2f2f2;"
                                        scope="row">
                                        {{ $project->customer_table->name ?? '' }}
                                    </th>

                                    <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                        {{ $project->customer_table->project_code ?? '' }}
                                    </td>

                                    <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                        {{ $project->created_at }}
                                    </td>

                                    <td style="text-align: center; font-size: 13px;">
                                        @include('shared.project_status.processing_file_status', [
                                            'project' => $project,
                                        ])
                                    </td>

                                    {{-- FloorPlan --}}
                                    @can('floor_plan_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include('shared.project_status.floor_plan_status', [
                                                'project' => $project,
                                            ])
                                        </td>
                                    @endcan

                                    {{-- Quotation Proposal --}}
                                    @can('quotation_proposal_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include('shared.project_status.quotation_proposal_status', [
                                                'project' => $project,
                                            ])
                                        </td>
                                    @endcan

                                    {{-- Exterior Design Fees --}}
                                    @can('exterior_design_fees_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include('shared.project_status.exterior_design_fees_status', [
                                                'project' => $project,
                                            ])
                                        </td>
                                    @endcan

                                    {{-- Structure Design Fees --}}
                                    @can('structure_design_fees_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include('shared.project_status.structure_design_fees_status', [
                                                'project' => $project,
                                            ])
                                        </td>
                                    @endcan

                                    {{-- approved_by --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include('shared.project_status.approved_by', [
                                            'project' => $project,
                                        ])
                                    </td>

                                    {{-- Archi Exterior Design --}}
                                    @can('archi_exterior_design_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include('shared.project_status.archi_exterior_design_status', [
                                                'project' => $project,
                                            ])
                                        </td>
                                    @endcan

                                    {{-- Structure Design --}}
                                    @can('structure_design_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include('shared.project_status.structure_design_status', [
                                                'project' => $project,
                                            ])
                                        </td>
                                    @endcan


                                    <td style="text-align: center; font-size: 13px;">
                                        @include('shared.project_status.permit_status', [
                                            'project' => $project,
                                        ])
                                    </td>


                                    <td style="text-align: center; font-size: 13px;">
                                        @include('shared.project_status.contract_status', [
                                            'project' => $project,
                                        ])
                                    </td>

                                    @can('project_delete')
                                        <td style="text-align: center;">
                                            <div class="demo-inline-spacing">
                                                <div class="btn-group">
                                                    <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                        data-bs-toggle="dropdown" aria-expanded="false">
                                                        Action
                                                    </button>
                                                    <ul class="dropdown-menu">

                                                        <li hidden>
                                                            <a class="dropdown-item"
                                                                href="{{ route('bq_create', $project->id) }}">
                                                                BQ
                                                            </a>
                                                        </li>


                                                        <li>
                                                            <a class="dropdown-item"
                                                                href="{{ route('project.edit', $project->id) }}">Remark</a>
                                                        </li>

                                                        <li>
                                                            <a class="dropdown-item"
                                                                href="{{ route('project.show', $project->id) }}">Detail</a>
                                                        </li>

                                                        <li>
                                                            <a class="dropdown-item" href="#">Completed</a>
                                                        </li>

                                                        <li>
                                                            <form action="{{ route('project.destroy', $project->id) }}"
                                                                method="POST">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button type="button" class="dropdown-item del_confirm"
                                                                    id="confirm-text" data-toggle="tooltip">Delete</button>
                                                            </form>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </td>
                                    @endcan
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

                <div class="pseduo-track"></div>

            </div>
        </div>
    </div>
@endsection

@section('script')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script>
        $(function() {
            $("#tablecontents").sortable({
                delay: 150,
                items: "tr",
                cursor: 'move',
                opacity: 0.6,
                update: function() {
                    sendOrderToServer();
                }
            });

            function sendOrderToServer() {
                var order = [];
                var token = $('meta[name="csrf-token"]').attr('content');
                $('tr.row1').each(function(index, element) {
                    order.push({
                        id: $(this).attr('data-id'),
                        position: index + 1,
                    });
                });

                $.ajax({
                    type: "POST",
                    dataType: "json",
                    // url: "{{ url('projectsortable') }}",
                    url: "/projectsortable",
                    data: {
                        order: order,
                        _token: token
                    },
                    success: function(response) {
                        if (response.status == "success") {
                            console.log(response);
                            alert(response);
                            alert("w");
                        } else {
                            console.log(response);
                            alert(response);
                            alert("E");
                        }
                    }
                });
            }
        });
    </script>
@endsection
