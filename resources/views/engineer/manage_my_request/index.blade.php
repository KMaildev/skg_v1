@extends('layouts.menus.engineer')
@section('content')
    <div class="col-md-12 col-xl-12 col-xxl-12 mb-xxl-0  order-2 order-lg-0">

        <div class="card-title header-elements">
            <h5 class="m-0 me-2">Fixed Assets Request</h5>
            <div class="card-title-elements ms-auto">
                <a href="{{ route('engrequest.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                    <span>
                        <i class="bx bx-plus me-sm-2"></i>
                        <span class="d-none d-sm-inline-block">
                            Create
                        </span>
                    </span>
                </a>
            </div>
        </div>

        <div class="table-responsive text-nowrap rowheaders table-scroll outer-wrapper" role="region"
            aria-labelledby="HeadersCol" tabindex="0">
            <table class="table table-bordered main-table" id="export_excel">
                <thead class="tbbg">
                    <tr>
                        <th style="color: white; text-align: center; width: 1%; background-color: #2e696e !important">
                            #
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Request code
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Request Date
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Accept / Reject
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            QS Team Check & Pass
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Logistics Team Check & Sent
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Transferred from
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Transferred to
                        </th>

                        <th style="color: white; text-align: center; width: 10%; background-color: #2e696e !important">
                            Received by Engineer
                        </th>

                    </tr>
                </thead>
                <tbody class="table-border-bottom-0" id="tablecontents">
                    @foreach ($eng_request_infos as $key => $request_info)
                        <tr>
                            <td style="background-color: white;">
                                {{ $key + 1 }}
                            </td>

                            <td style="background-color: white;">
                                {{ $request_info->request_code }}
                            </td>

                            <td style="background-color: white;">
                                {{ $request_info->request_date }}
                            </td>

                            {{-- Accept / Reject --}}
                            <td style="background-color: white;">
                                @include('shared.managerequest.engineer.accept_reject_status', [
                                    'request_info' => $request_info,
                                ])
                            </td>


                            <td style="background-color: white;">
                                @include('shared.managerequest.engineer.qs_team_check_pass_status', [
                                    'request_info' => $request_info,
                                ])
                            </td>


                            <td style="background-color: white;">
                                @include('shared.managerequest.engineer.logistics_team_check_sent_status', [
                                    'request_info' => $request_info,
                                ])
                            </td>


                            <td style="background-color: white;">
                                @if ($request_info->transfer_from_status == 'warehouse')
                                    {{ $request_info->main_warehouse_table->warehouse_code ?? 'Warehouse' }}
                                @elseif ($request_info->transfer_from_status == 'other_site')
                                    {{ $request_info->request_infos_table->customer_table->project_code ?? '' }}
                                    @
                                    {{ $request_info->request_infos_table->customer_table->name ?? '' }}
                                @endif
                            </td>

                            <td style="background-color: white;">
                                {{ $request_info->customer_table->project_code ?? '' }}
                                @
                                {{ $request_info->customer_table->name ?? '' }}
                            </td>

                            <td style="background-color: white;">
                                @include('shared.managerequest.engineer.received_by_engineer_status', [
                                    'request_info' => $request_info,
                                ])
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="pseduo-track"></div>
    </div>
@endsection

@section('script')
    <script></script>
@endsection
