@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Items in Site</h5>
                        <div class="card-title-elements ms-auto">
                            <div class="card-header-elements ms-auto">
                                <form action="{{ route('items_in_site.index') }}" method="GET">
                                    <input type="text" class="form-control form-control-sm" placeholder="Search"
                                        name="search" />
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- table-responsive text-nowrap --}}
                <div class="table-responsive rowheaders table-scroll outer-wrapper" role="region"
                    aria-labelledby="HeadersCol" tabindex="0">
                    <table class="table table-bordered main-table">
                        <thead class="tbbg">
                            <tr>
                                <th style="background-color: #296166; color: white;  width: 1%;">#</th>
                                <th style="background-color: #296166; color: white; width: 10%;">Name</th>
                                <th style="background-color: #296166; color: white; width: 30%;">Site Location</th>
                                <th style="background-color: #296166; color: white; width: 20%;">Building Area</th>
                                <th style="background-color: #296166; color: white; width: 15%;">Items</th>
                            </tr>
                        </thead>
                        <tbody class="mytbody table-border-bottom-0">
                            @foreach ($projects_users as $key => $value)
                                @foreach ($value->projects as $project)
                                    <tr>
                                        <td>
                                            {{ $key + 1 }}
                                        </td>
                                        <td>
                                            {{ $project->customer_table->name ?? '' }}
                                        </td>
                                        <td>
                                            {{ $project->customer_table->site_location }}
                                        </td>
                                        <td>
                                            {{ $project->customer_table->building_area }}
                                        </td>
                                        <td>
                                            <button type="button" class="badge bg-primary"
                                                onclick="showRequestItems({{ $project->customer_table->id }})">
                                                Request Items
                                            </button>
                                        </td>
                                    </tr>
                                @endforeach
                            @endforeach
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>

    {{-- @include('items_in_site.shared.show_items') --}}
    <div class="modal fade" id="showRequestItemsModel" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalCenterTitle">
                        Request Items
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" style="width: 100%">
                    <div id="requestItems"></div>
                </div>
            </div>
        </div>
    </div>
@endsection
<script>
    function showRequestItems(customer_id) {
        $.ajax({
            url: "show_request_items/" + customer_id,
            method: 'GET',
            success: function(result) {
                console.log(result);
                $('#showRequestItemsModel').modal('show');
                $('#requestItems').html(result.html);
            }
        });
    }
</script>
