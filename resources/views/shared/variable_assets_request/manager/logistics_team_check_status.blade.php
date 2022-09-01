@if ($request_info->logistics_team_check)
    <a href="{{ route('variable_logistics_check_create', ['id' => $request_info->id]) }}" hidden>
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>Finished</span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
            <span style="font-size: 12px; text-align: left">
                {{ $request_info->logistics_team_check_date }}
            </span>
        </div>
    </a>
    <div id="accordionPayment" class="accordion accordion-header-primary">
        <div class="accordion-item">
            <a data-bs-toggle="collapse" data-bs-target="#accordionPayment_{{ $request_info->id }}"
                aria-controls="accordionPayment_{{ $request_info->id }}" style="color: blue">
                Finished: {{ $request_info->logistics_team_check_date }}
            </a>
            <div id="accordionPayment_{{ $request_info->id }}" class="accordion-collapse collapse">
                Supplier:{{ $request_info->variable_payments_table->supplier_name ?? '' }}
                <div class="accordion-body">
                    <table style="width: 100%" class="">
                        <tr style="background-color: #2e696e; color: white;">
                            <td style="background-color: #296166; color: white;"># </td>
                            <td style="background-color: #296166; color: white;">Qty </td>
                            <td style="background-color: #296166; color: white;">Price </td>
                            <td style="background-color: #296166; color: white;">Total Amt </td>
                        </tr>
                        @php
                            $totalAmt = 0;
                        @endphp
                        @foreach ($request_info->variable_logistics_team_checks_table as $key => $variable_logistics_team_check)
                            <tr>
                                <td>
                                    {{ $key + 1 }}
                                </td>
                                <td style="text-align: center;">
                                    {{ $variable_logistics_team_check->qs_passed_qty }}
                                </td>

                                <td style="text-align: center;">
                                    {{ number_format($variable_logistics_team_check->price, 2) }}
                                </td>

                                <td style="text-align: center;">
                                    {{ number_format($variable_logistics_team_check->qs_passed_qty * $variable_logistics_team_check->price, 2) }}
                                    @php
                                        $totalAmt += $variable_logistics_team_check->qs_passed_qty * $variable_logistics_team_check->price;
                                    @endphp
                                </td>
                            </tr>
                        @endforeach

                        <tr style="font-weight: bold;">
                            <td>
                                Total
                            </td>
                            <td style="text-align: center; font-weight: bold">
                                {{ $request_info->variable_logistics_team_checks_table->sum('qs_passed_qty') }}
                            </td>

                            <td style="text-align: center; font-weight: bold">
                                {{ number_format($request_info->variable_logistics_team_checks_table->sum('price'), 2) }}
                            </td>

                            <td style="text-align: center; font-weight: bold">
                                {{ number_format($totalAmt, 2) }}
                            </td>
                        </tr>

                        <tr style="background-color: #e2dede; color: black;">
                            <td colspan="3" style="text-align: left; font-weight: bold">
                                Total Amount
                            </td>
                            <td style="text-align: right;">
                                {{ number_format($totalAmt, 2) }}
                            </td>
                        </tr>

                        <tr style="background-color: #e2dede; color: black;">
                            <td colspan="3" style="text-align: left; font-weight: bold">
                                Transportation
                            </td>
                            <td style="text-align: right;">
                                {{ number_format($request_info->variable_payments_table->transportation, 2) }}
                            </td>
                        </tr>

                        <tr style="background-color: #e2dede; color: black;">
                            <td colspan="3" style="text-align: left; font-weight: bold">
                                Labor
                            </td>
                            <td style="text-align: right;">
                                {{ number_format($request_info->variable_payments_table->labor, 2) }}
                            </td>
                        </tr>

                        <tr style="background-color: #e2dede; color: black;">
                            <td colspan="2" style="text-align: left; font-weight: bold">
                                Banking %
                            </td>
                            <td style="text-align: center;">
                                {{ $request_info->variable_payments_table->banking_percent }} %
                            </td>
                            <td style="text-align: right;">
                                @php
                                    $banking_percent = $request_info->variable_payments_table->banking_percent;
                                    $banking_amount = ($totalAmt / 100) * $banking_percent;
                                    echo number_format($banking_amount, 2);
                                @endphp
                            </td>
                        </tr>

                        <tr style="background-color: #e2dede; color: black;">
                            <td colspan="3" style="text-align: left; font-weight: bold">
                                Extra
                            </td>
                            <td style="text-align: right;">
                                {{ number_format($request_info->variable_payments_table->extra, 2) }}
                            </td>
                        </tr>

                        <tr style="background-color: #727171; color: white;">
                            <td colspan="3" style="text-align: left; font-weight: bold">
                                Total
                            </td>
                            <td style="text-align: right;">
                                @php
                                    $transportation = $request_info->variable_payments_table->transportation;
                                    $labor = $request_info->variable_payments_table->labor;
                                    $extra = $request_info->variable_payments_table->extra;
                                    $allTotal = $totalAmt + $transportation + $labor + $banking_amount + $extra;
                                    echo number_format($allTotal, 2);
                                @endphp
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
@else
    <a href="{{ route('variable_logistics_check_create', ['id' => $request_info->id]) }}">
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>No</span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
        </div>
    </a>
@endif
