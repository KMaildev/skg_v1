@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Warehouse Plan</h5>

                        <div class="card-title-elements ms-auto">
                            <div class="card-header-elements ms-auto">
                                <form action="#" method="GET" autocomplete="off">
                                    <input type="text" class="form-control form-control-sm" placeholder="Search"
                                        name="search" />
                                </form>
                            </div>
                            @include('layouts.includes.export')
                        </div>
                    </div>
                </div>

                <div class="col-md">
                    <div class="accordion mt-3 accordion-header-primary" id="accordionStyle1">
                        <div class="table-responsive text-nowrap rowheaders table-scroll outer-wrapper" role="region"
                            aria-labelledby="HeadersCol" tabindex="0">
                            <table class="table table-bordered main-table">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="background-color: #296166; color: white; text-align: center; width: 1%">#
                                        </th>
                                        <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                            Items Name</th>
                                        <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                            Main Warehouse</th>
                                        <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                            Site On Hand</th>
                                        <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                            Remaining Balance</th>
                                        <th style="background-color: #296166; color: white; text-align: center; width: 14%">
                                            Action</th>
                                        <th style="background-color: #296166; color: white;  width: 0%;">
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($fixed_assets_with_eng_request_items as $key => $fixed_assets_with_eng_request_item)
                                        <tr class="accordion-button collapsed" data-bs-toggle="collapse"
                                            data-bs-target="#accordionStyle1-{{ $key }}" aria-expanded="true">
                                            <td>
                                                <i class="tabularinfo__icon fa fa-plus"></i>
                                            </td>

                                            <td style="text-align: center">
                                                {{ $fixed_assets_with_eng_request_item->item_name }}
                                            </td>

                                            <td style="text-align: center">
                                                {{ number_format($fixed_assets_with_eng_request_item->qty) }}
                                            </td>

                                            <td style="text-align: center">
                                                @php
                                                    $site_on_hand_total = 0;
                                                @endphp
                                                {{-- @foreach ($fixed_assets_with_eng_request_item->eng_request_items_table as $item)
                                                    @if ($item->request_info_table->received_by_engineer_status == 'received' ?? null)
                                                        @php
                                                            $site_on_hand_total += (float) $item->qs_team_check_passes_warehouse_plan->qs_passed_qty;
                                                        @endphp
                                                    @endif
                                                @endforeach --}}
                                                {{ $site_on_hand_total }}
                                            </td>

                                            <td style="text-align: center">
                                                {{ $fixed_assets_with_eng_request_item->qty - $site_on_hand_total }}
                                            </td>

                                            <td style="text-align: center">
                                                <a onclick="window.location.href='{{ route('warehouseplan.show', $fixed_assets_with_eng_request_item->id) }}'"
                                                    href="" class="btn btn-sm btn-primary">
                                                    Transfer History
                                                </a>
                                            </td>
                                        </tr>

                                        <tr id="accordionStyle1-{{ $key }}" class="accordion-collapse collapse"
                                            data-bs-parent="#accordionStyle1">
                                            <td colspan="6">
                                                <table class="table tabularinfo tabularinfo--child"
                                                    style="margin-bottom: 4px !important;">
                                                    <thead>
                                                        <tr style="background-color: #cad2d9;">
                                                            <th width="1%">#</th>
                                                            <th width="20%;" style="text-align: center">Project Code /
                                                                Engineer</th>
                                                            <th width="20%;"></th>
                                                            <th width="20%;" style="text-align: center"></th>
                                                            <th width="20%;" style="text-align: center"></th>
                                                            <th width="20%;" style="text-align: center"></th>
                                                        </tr>

                                                        @php
                                                            $site_on_hand = 0;
                                                        @endphp
                                                        @foreach ($fixed_assets_with_eng_request_item->eng_request_items_table as $key => $item)
                                                            <tr class="clickable js-tabularinfo-toggle"
                                                                data-toggle="collapse" id=""
                                                                data-target=".subrow1">
                                                                <th width="1%">{{ $key + 1 }}</th>

                                                                <th style="text-align: center">
                                                                    {{ $item->customer_table->project_code ?? '' }}
                                                                    @
                                                                    {{ $item->users_table->name ?? '' }}
                                                                </th>

                                                                <th></th>

                                                                <th width="20%;" style="text-align: center">
                                                                    {{-- @if ($item->request_info_table->received_by_engineer_status == 'received' ?? null)
                                                                        {{ $item->qs_team_check_passes_warehouse_plan->qs_passed_qty ?? 0 }}
                                                                        @php
                                                                            $site_on_hand += (float) $item->qs_team_check_passes_warehouse_plan->qs_passed_qty;
                                                                        @endphp
                                                                    @endif --}}
                                                                </th>
                                                                <th></th>
                                                                <th></th>
                                                            </tr>
                                                        @endforeach

                                                        <tr style="background-color: #e3e7ea;">
                                                            <th colspan="2">Total</th>

                                                            <th style="text-align: center; font-weight: bold">
                                                                {{ number_format($fixed_assets_with_eng_request_item->qty) }}
                                                            </th>

                                                            <th style="text-align: center; font-weight: bold">
                                                                {{ $site_on_hand }}
                                                            </th>

                                                            <th style="text-align: center; font-weight: bold">
                                                                {{ $fixed_assets_with_eng_request_item->qty - $site_on_hand }}
                                                            </th>

                                                            <th></th>
                                                        </tr>

                                                    </thead>
                                                </table>
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
    </div>
@endsection

@section('script')
    <script>
        $(document).ready(function() {
            $('.js-tabularinfo').bootstrapTable({
                escape: true,
                showHeader: true
            });
        });
    </script>
@endsection
