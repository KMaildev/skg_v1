@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Engineer Return</h5>
                        <div class="card-title-elements ms-auto">
                            @include('layouts.includes.export')

                            <a href="{{ route('engineer_return.create') }}"
                                class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>

                        </div>
                    </div>
                </div>

                <div class="col-md">
                    <div class="table-responsive text-nowrap">
                        <table class="table table-bordered">
                            <thead class="tbbg">
                                <tr>
                                    <th style="color: white; text-align: center; width: 1%">#</th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Return Code
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Return Date
                                    </th>

                                    <th style="color: white; text-align: center; width: 14%">
                                        Return Item
                                    </th>

                                    <th style="color: white; text-align: center; width: 14%">
                                        Return From
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        QS Team Check & Pass
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Logistics Team Check & Sent
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Received by Store Manager
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Action
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="mytbody">
                                @foreach ($returns as $key => $return)
                                    <tr>
                                        <td style="text-align: center">
                                            {{ $key + 1 }}
                                        </td>

                                        <td style="text-align: center">
                                            {{ $return->return_code }}
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
                                        </td>

                                        <td style="text-align: center">
                                            @include('shared.engineer_return.engineer.qs_team_check_pass_status',
                                                ['engineer_return_infos' => $return])
                                        </td>

                                        <td style="text-align: center">
                                            @include('shared.engineer_return.engineer.logistics_team_check_sent_status',
                                                ['engineer_return_infos' => $return])
                                        </td>

                                        <td style="text-align: center">
                                            @include('shared.engineer_return.engineer.received_by_store_manager_status',
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
                                                            href="{{ route('engineer_return.show', $return->id) }}">
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
