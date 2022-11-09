@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Engineer Return</h5>
                        <div class="card-title-elements ms-auto">
                            <form action="{{ route('inventory_engineer_return.index') }}" method="get">
                                <input type="text" placeholder="Search: Return code" name="q"
                                    value="{{ old('q') }}">
                            </form>

                            <form action="{{ route('inventory_engineer_return.index') }}" method="get">
                                @include('components.user_datalist')
                                <input type="submit" value="Find">
                            </form>

                        </div>
                    </div>
                </div>

                <div class="col-md">
                    <div class="table-responsive text-nowrap rowheaders table-scroll outer-wrapper" role="region"
                        aria-labelledby="HeadersCol" tabindex="0">
                        <table class="table table-bordered main-table">
                            <thead class="tbbg">
                                <tr>
                                    <th style="background-color: #296166; color: white; text-align: center; width: 1%">#</th>
                                    <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                        Return Code
                                    </th>
                                    <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                        Return Engineer
                                    </th>
                                    <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                        Return Date
                                    </th>
                                    <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                        Return Item
                                    </th>
                                    <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                        Return From
                                    </th>
                                    <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                        QS Team Check & Pass
                                    </th>
                                    <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                        Logistics Team Check & Sent
                                    </th>
                                    <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                        Received by Store Manager
                                    </th>
                                    <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                        Action
                                    </th>
                                </tr>
                            </thead>
                            <tbody id="tablesearch" class="mytbody">
                                @foreach ($returns as $key => $return)
                                    <tr>
                                        <td style="text-align: center">
                                            {{ $key + 1 }}
                                        </td>

                                        <th style="text-align: center; font-size: 13px; font-weight: bold; background-color: white;"
                                            scope="row">
                                            {{ $return->return_code }}
                                        </th>

                                        <td style="text-align: center">
                                            {{ $return->user_table->name ?? '' }}
                                        </td>

                                        <td style="text-align: center">
                                            {{ $return->return_date }}
                                        </td>

                                        <td style="text-align: center">
                                            @include('inventory.return.return_items', [
                                                'return_info' => $return,
                                            ])
                                        </td>

                                        <td style="text-align: center">
                                            {{ $return->customer_table->project_code ?? '' }}
                                            @
                                            {{ $return->customer_table->name ?? '' }}
                                        </td>

                                        <td style="text-align: center">
                                            @include('shared.engineer_return.qs_team_check_pass_status', [
                                                'engineer_return_infos' => $return,
                                            ])
                                        </td>

                                        <td style="text-align: center">
                                            @include('shared.engineer_return.logistics_team_check_sent_status',
                                                ['engineer_return_infos' => $return])
                                        </td>

                                        <td style="text-align: center">
                                            @include('shared.engineer_return.received_by_store_manager_status',
                                                ['engineer_return_infos' => $return])
                                        </td>

                                        <td style="text-align: center;">
                                            <div class="btn-group">
                                                <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                    data-bs-toggle="dropdown" aria-expanded="false">
                                                    Action
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('inventory_engineer_return.show', $return->id) }}">
                                                            Detail
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>

                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script></script>
@endsection
