@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Variable Assets</h5>
                        <div class="card-title-elements ms-auto">
                            <input id="myInput" type="text" placeholder="Search..">
                            <a href="{{ route('variable_assets.create') }}"
                                class="dt-button create-new btn btn-primary btn-sm">
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
                    <table class="table table-bordered main-table py-5" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th
                                    style="background-color: #2e696e !important; color: white; text-align: center; width: 1%;">
                                    #</th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Item Name
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Unit
                                </th>
                                <th style="background-color: #2e696e !important; color: white; text-align: center;">
                                    Qty
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
                                                {{ number_format($variable_asset->qty) }}
                                            </td>

                                            <td style="text-align: center;">
                                                {{ $variable_asset->category ?? '' }}
                                            </td>

                                            <td style="text-align: center;">
                                                {{ $variable_asset->remark }}
                                            </td>

                                            <td style="text-align: center;">
                                                <div class="btn-group">
                                                    <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                        data-bs-toggle="dropdown" aria-expanded="false">
                                                        Action
                                                    </button>
                                                    <ul class="dropdown-menu">

                                                        <li>
                                                            <a href="{{ route('variable_assets.edit', $variable_asset->id) }}"
                                                                class="dropdown-item">
                                                                Edit
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <form
                                                                action="{{ route('variable_assets.destroy', $variable_asset->id) }}"
                                                                method="POST">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button type="button" class="dropdown-item del_confirm"
                                                                    id="confirm-text" data-toggle="tooltip">Delete</button>
                                                            </form>
                                                        </li>
                                                    </ul>
                                                </div>
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
                    url: "/variable_assets_sortable",
                    data: {
                        order: order,
                        _token: token
                    },
                    success: function(response) {
                        if (response.status == "success") {
                            console.log(response);
                            alert(response);
                        } else {
                            console.log(response);
                            alert(response);
                        }
                    }
                });
            }
        });
    </script>
@endsection
