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
                        <div class="table-responsive text-nowrap rowheaders table-scroll outer-wrapper" role="region"
                            aria-labelledby="HeadersCol" tabindex="0">
                            <table class="table table-bordered main-table">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="background-color: #296166; color: white; width: 1%; text-align: center;">
                                            #
                                        </th>

                                        <th
                                            style="background-color: #296166; color: white; width: 14%; text-align: center;">
                                            Items Name
                                        </th>

                                        <th
                                            style="background-color: #296166; color: white; width: 14%; text-align: center;">
                                            Main Warehouse
                                        </th>

                                        <th
                                            style="background-color: #296166; color: white; width: 14%; text-align: center;">
                                            Total Damage
                                        </th>

                                        <th
                                            style="background-color: #296166; color: white; width: 14%; text-align: center;">
                                            Total Available
                                        </th>

                                        <th
                                            style="background-color: #296166; color: white; width: 14%; text-align: center;">
                                            Site On Hand
                                        </th>

                                        <th
                                            style="background-color: #296166; color: white; width: 14%; text-align: center;">
                                            Remaining Balance
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($fixed_assets as $key => $fixed_asset)
                                        <tr>
                                            <td>
                                                {{ $key + 1 }}
                                            </td>

                                            <td>
                                                {{ $fixed_asset->item_name }}
                                            </td>

                                            {{-- Main Warehouse --}}
                                            <td style="text-align: right">
                                                @php
                                                    $total_main_warehouse = $fixed_asset->qty;
                                                    echo $total_main_warehouse;
                                                @endphp
                                            </td>

                                            {{-- Total Damage --}}
                                            <td style="text-align: right">
                                                @php
                                                    $total_damage = $fixed_asset->unusable_fixed_assets_table->sum('qty');
                                                    echo $total_damage;
                                                @endphp
                                            </td>

                                            {{-- Total Available --}}
                                            <td style="text-align: right">
                                                @php
                                                    $total_available = $total_main_warehouse - $total_damage;
                                                    echo $total_available;
                                                @endphp
                                            </td>

                                            {{-- Site On Hand --}}
                                            <td style="text-align: right">
                                                @php
                                                    $total_site_on_hand = $fixed_asset->qs_team_check_passes_table->sum('qs_passed_qty');
                                                    echo $total_site_on_hand;
                                                @endphp
                                            </td>

                                            {{-- Remaining Balance --}}
                                            <td style="text-align: right">
                                                @php
                                                    $remaining_balance = $total_available - $total_site_on_hand;
                                                    echo $remaining_balance;
                                                @endphp
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
