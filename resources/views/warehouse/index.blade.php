@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Warehouse Plan</h5>
                    </div>
                </div>

                <div class="col-md">
                    <div class="accordion mt-3 accordion-header-primary" id="accordionStyle1">
                        <div class="accordion-item card">
                            <table class="table">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="color: white; width: 1%">#</th>
                                        <th style="color: white; width: 14%">Items Name</th>
                                        <th style="color: white; width: 14%">Main Warehouse</th>
                                        <th style="color: white; width: 14%">
                                            {{-- Request Total --}}
                                            Site On Hand [Total]
                                        </th>
                                        <th style="color: white; width: 14%">Return [Total]</th>
                                        <th style="color: white; width: 14%">Remaining Balance</th>
                                        <th style="color: white; width: 14%">Action</th>
                                    </tr>
                                </thead>
                                <tbody class="mytbody">
                                    @php
                                        $site_on_hand_total = [];
                                        $return_total = [];
                                        $remaining_balance_total = [];
                                    @endphp
                                    @foreach ($fixed_assets as $key => $fixed_asset)
                                        <tr>
                                            <td>
                                                {{ $key + 1 }}
                                            </td>

                                            <td>
                                                {{ $fixed_asset->item_name }}
                                            </td>

                                            {{-- Main Warehouse --}}
                                            <td style="font-weight: bold;">
                                                {{ $fixed_asset->qty }}
                                            </td>

                                            {{-- Site On Hand --}}
                                            <td style="font-weight: bold;">
                                                {{-- {{ $fixed_asset->qs_team_check_passes_table->sum('qs_passed_qty') }} --}}
                                                @php
                                                    $site_on_hand = $fixed_asset->qs_team_check_passes_table->sum('qs_passed_qty');
                                                    echo $site_on_hand;
                                                    $site_on_hand_total[] = $site_on_hand;
                                                    
                                                    // $return = $fixed_asset->return_qs_team_check_passes_table->sum('qs_passed_qty');
                                                    // $site_on_hand = $site_on_hand - $return;
                                                    
                                                @endphp
                                            </td>

                                            {{-- Return [Total] --}}
                                            <td style="font-weight: bold;">
                                                @php
                                                    $return = $fixed_asset->return_qs_team_check_passes_table->sum('qs_passed_qty');
                                                    echo number_format($return);
                                                    $return_total[] = $return;
                                                @endphp
                                            </td>

                                            {{-- Remaining Balance --}}
                                            <td style="font-weight: bold;">
                                                @php
                                                    $main_warehouse = $fixed_asset->qty;
                                                    $site_on_hand = $fixed_asset->qs_team_check_passes_table->sum('qs_passed_qty');
                                                    $return = $fixed_asset->return_qs_team_check_passes_table->sum('qs_passed_qty');
                                                    $remaining_balance_calc = $site_on_hand - $return;
                                                    echo $remaining_balance_calc;
                                                    $remaining_balance_total[] = $remaining_balance_calc;
                                                @endphp
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
                                                                href="{{ route('manage_warehouse_plan.show', $fixed_asset->id) }}">Details</a>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tr>
                                    <th colspan="2">Total</th>
                                    {{-- Main Warehouse --}}
                                    <th style="text-align: right; font-weight: bold">
                                        {{ number_format($fixed_assets->sum('qty')) }}
                                    </th>

                                    {{-- Site On Hand [Total] --}}
                                    <th style="text-align: right; font-weight: bold">
                                        @php
                                            echo number_format(array_sum($site_on_hand_total));
                                        @endphp
                                    </th>

                                    {{-- Return [Total] --}}
                                    <th style="text-align: right; font-weight: bold">
                                        @php
                                            echo number_format(array_sum($return_total));
                                        @endphp
                                    </th>

                                    {{-- Remaining Balance --}}
                                    <th style="text-align: right; font-weight: bold">
                                        @php
                                            echo number_format(array_sum($remaining_balance_total));
                                        @endphp
                                    </th>

                                    <th></th>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
