<?php

namespace App\Http\Controllers\VariableRequest;

use App\Http\Controllers\Controller;
use App\Models\VariableLogisticsTeamCheck;
use App\Models\VariablePayment;
use App\Models\VariableRequestInfo;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;


class VariableRequestSsdController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('variable_request_ssd.index');
    }



    public function getVariableRequest(Request $request)
    {
        // $data = VariableRequestInfo::orderBy('id', 'DESC')
        //     ->where('accept_reject_status', 'accept')
        //     ->orWhere('accept_reject_status', NULL)
        //     ->get();

        // $data = VariableRequestInfo::with('user_table', 'customer_table')
        //     ->orderBy('id', 'DESC')
        //     ->where('accept_reject_status', 'accept')
        //     ->orWhere('accept_reject_status', NULL);


        $data = VariableRequestInfo::with('user_table', 'customer_table')
            ->orderBy('id', 'DESC')
            ->where('accept_reject_status', 'accept');

        return Datatables::of($data)

            ->addIndexColumn()

            ->filterColumn('engineer_name', function ($query, $keyword) {
                $query->whereHas('user_table', function ($q1) use ($keyword) {
                    $q1->where('name', 'like', '%' . $keyword . '%');
                });
            })

            ->editColumn('engineer_name', function ($each) {
                return $each->user_table ? $each->user_table->name : '-';
            })

            ->filterColumn('customer_name', function ($query, $keyword) {
                $query->whereHas('customer_table', function ($q1) use ($keyword) {
                    $q1->where('name', 'like', '%' . $keyword . '%');
                });
            })

            ->editColumn('customer_name', function ($each) {
                $customer_name = $each->customer_table ? $each->customer_table->name : '';
                $project_code = $each->customer_table ? $each->customer_table->project_code : '';
                return $customer_name . '@' . $project_code;
            })

            ->editColumn('work_scope', function ($each) {
                $html = '';
                $html .= $each->work_scope;
                return $html;
            })

            ->editColumn('request_item', function ($each) {
                $html = '';
                $html .= '<span class="badge bg-primary" 
                        data-bs-toggle="collapse"
                        id="showRequestItems"
                        data-id="' . $each->id . '">
                        Request Items
                    </span>';
                return $html;
            })

            ->editColumn('accept_reject_status', function ($each) {
                $accept_reject_status = ucfirst($each->accept_reject_status);
                $accept_reject_date = $each->accept_reject_date;
                $id = $each->id;

                $html = '';
                if (auth()->user()->can('variable_accept_reject')) {
                    $permission_accept_reject = 'AssetRejectShowModel';
                } else {
                    $permission_accept_reject = 'permission_denied';
                }
                if ($each->accept_reject_status == 'accept') {
                    $html .= '
                        <a class="' . $permission_accept_reject . '" href="#" id="' . $permission_accept_reject . '" data-id="' . $id . '">
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>' . $accept_reject_status . '</span>
                                </div>
                                <div class="progress" style="height: 3px;">
                                    <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                                        aria-valuemin="100" aria-valuemax="100"></div>
                                </div>
                                <span style="font-size: 12px;">
                                ' . $accept_reject_date . '
                                </span>
                            </div>
                        </a>
                        ';
                } else if ($each->accept_reject_status == 'reject') {
                    $html .= '
                        <a class="' . $permission_accept_reject . '" href="#" id="' . $permission_accept_reject . '" data-id="' . $id . '">
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>' . $accept_reject_status . '</span>
                                </div>
                                <div class="progress" style="height: 3px;">
                                    <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                                        aria-valuemin="100" aria-valuemax="100"></div>
                                </div>
                                <span style="font-size: 12px;">
                                ' . $accept_reject_date . '
                                </span>
                            </div>
                        </a>
                        ';
                } else {
                    $html .= '
                        <a class="' . $permission_accept_reject . '" href="#" id="' . $permission_accept_reject . '" data-id="' . $id . '">
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Unknown</span>
                                </div>
                                <div class="progress" style="height: 3px;">
                                    <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                                        aria-valuemin="100" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </a>
                        ';
                }

                return $html;
            })

            ->editColumn('qs_team_check_status', function ($each) {
                $qs_team_check_date = $each->qs_team_check_date;
                $html = '';

                if (auth()->user()->can('variable_qs_team_check_pass')) {
                    $link = route('variable_qs_team_check_create', ['id' => $each->id]);
                    $permission_accept = null;
                } else {
                    $link = '#';
                    $permission_accept = 'permission_denied';
                }

                if ($each->qs_team_check_status) {
                    $html .= '
                        <a href="#">
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Finished</span>
                                </div>
                                <div class="progress" style="height: 3px;">
                                    <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                                        aria-valuemin="100" aria-valuemax="100"></div>
                                </div>
                                <span style="font-size: 12px; text-align: left">
                                    ' . $qs_team_check_date . '
                                </span>
                            </div>
                        </a>
                        ';
                } else {
                    $html .= '
                        <a class="' . $permission_accept . '" href="' . $link . '" target="_blank">
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
                        ';
                }
                return $html;
            })

            ->editColumn('logistics_team_check', function ($each) {
                $logistics_team_check_date = $each->logistics_team_check_date;
                $supplier_name = $each->variable_payments_table->supplier_name ?? '';
                $html = '';

                if (auth()->user()->can('variable_logistics_team_check')) {
                    $link = route('variable_logistics_check_create', ['id' => $each->id]);
                    $permission_accept = null;
                } else {
                    $link = '#';
                    $permission_accept = 'permission_denied';
                }

                if ($each->logistics_team_check) {
                    $html .= '
                        <div id="accordionPayment" class="accordion accordion-header-primary">
                            <div class="accordion-item">
                                <a data-bs-toggle="collapse" style="color: blue" id="showLogisiticTeamItem" data-id="' . $each->id . '">
                                    Finished: ' . $logistics_team_check_date . '
                                </a>
                            </div>
                        </div>
                        ';
                } else {
                    $html .= '
                        <a class="' . $permission_accept . '" href="' . $link . '" target="_blank">
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
                        ';
                }
                return $html;
            })

            ->editColumn('management_accept_reject_status', function ($each) {

                $management_accept_reject_status = ucfirst($each->management_accept_reject_status);
                $management_accept_reject_date = $each->management_accept_reject_date;
                $id = $each->id;

                $html = '';

                if (auth()->user()->can('management_accept_reject')) {
                    $manage_permission_accept_reject = 'ManagementAssetRejectShowModel';
                } else {
                    $manage_permission_accept_reject = 'permission_denied';
                }

                if ($each->management_accept_reject_status == 'accept') {
                    $html .= '
                        <a class="' . $manage_permission_accept_reject . '" href="#" id="' . $manage_permission_accept_reject . '" data-id="' . $id . '">
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>' . $management_accept_reject_status . '</span>
                                </div>
                                <div class="progress" style="height: 3px;">
                                    <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                                        aria-valuemin="100" aria-valuemax="100"></div>
                                </div>
                                <span style="font-size: 12px;">
                                ' . $management_accept_reject_date . '
                                </span>
                            </div>
                        </a>
                        ';
                } else if ($each->management_accept_reject_status == 'reject') {
                    $html .= '
                        <a class="' . $manage_permission_accept_reject . '" href="#" id="' . $manage_permission_accept_reject . '" data-id="' . $id . '">
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>' . $management_accept_reject_status . '</span>
                                </div>
                                <div class="progress" style="height: 3px;">
                                    <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                                        aria-valuemin="100" aria-valuemax="100"></div>
                                </div>
                                <span style="font-size: 12px;">
                                ' . $management_accept_reject_date . '
                                </span>
                            </div>
                        </a>
                        ';
                } else {
                    $html .= '
                        <a class="' . $manage_permission_accept_reject . '" href="#" id="' . $manage_permission_accept_reject . '" data-id="' . $id . '">
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Unknown</span>
                                </div>
                                <div class="progress" style="height: 3px;">
                                    <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                                        aria-valuemin="100" aria-valuemax="100"></div>
                                </div>
                                <span style="font-size: 12px;">
                                </span>
                            </div>
                        </a>
                        ';
                }
                return $html;
            })
 
            ->editColumn('logistics_team_send_status', function ($each) {

                $logistics_team_send_date = $each->logistics_team_send_date;
                $id = $each->id;

                $html = '';

                if (auth()->user()->can('variable_logistics_team_send')) {
                    $link = route('variable_logistics_send_form', ['id' => $each->id]);
                    $permission_accept = null;
                } else {
                    $link = '#';
                    $permission_accept = 'permission_denied';
                }

                if ($each->logistics_team_send_status) {
                    $html .= '
                        <a href="#">
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Finished</span>
                                </div>
                                <div class="progress" style="height: 3px;">
                                    <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                                        aria-valuemin="100" aria-valuemax="100"></div>
                                </div>
                                <span style="font-size: 12px; text-align: left">
                                    ' . $logistics_team_send_date . '
                                </span>
                            </div>
                        </a>
                        ';
                } else {
                    $html .= '
                        <a class="' . $permission_accept . '" href="' . $link . '" target="_blank">
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
                        ';
                }
                return $html;
            })

            ->editColumn('transferred_from', function ($each) {
                $transferred_from = $each->variable_logistics_team_sends_table->main_warehouses_table->warehouse_code ?? '';
                return $transferred_from;
            })

            ->editColumn('transferred_to', function ($each) {
                $transfer_to = $each->variable_logistics_team_sends_table->transfer_to ?? '';
                $name = $each->customer_table->name ?? '';
                return $transfer_to . '@' . $name;
            })

            ->editColumn('received_by_engineer', function ($each) {
                $received_date = $each->received_date ?? '';
                $html = '';
                if ($each->received_by_engineer_status) {
                    $html .= '
                    <a href="#">
                        <div class="d-flex flex-column w-100">
                            <div class="d-flex justify-content-between mb-1">
                                <span>Received</span>
                            </div>
                            <div class="progress" style="height: 3px;">
                                <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                                    aria-valuemin="100" aria-valuemax="100"></div>
                            </div>
                            <span style="font-size: 12px; text-align: left">
                                ' . $received_date . '
                            </span>
                        </div>
                    </a>
                    ';
                } else {
                    $html .= '
                    <a href="#" data-bs-toggle="modal" data-bs-target="#modalCenter">
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
                    ';
                }
                return $html;
            })

            ->editColumn('actual_voucher_upload', function ($each) {
                $actual_voucher_upload_date = $each->actual_voucher_upload_date ?? '';
                $html = '';

                if (auth()->user()->can('variable_actual_voucher')) {
                    $voucher_upload_link = route('variable_actual_voucher_upload', ['id' => $each->id]);
                    $voucher_upload_view_link = route('variable_actual_voucher.show', $each->id);
                    $permission_accept = null;
                } else {
                    $voucher_upload_link = '#';
                    $voucher_upload_view_link = '#';
                    $permission_accept = 'permission_denied';
                }

                if ($each->actual_voucher_upload) {
                    $html .= '
                        <div class="d-flex mb-2">
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Finished &nbsp;</span>
                                    <span class="text-muted">
                                        ' . $actual_voucher_upload_date . '
                                    </span>
                                </div>
                                <div class="progress" style="height: 3px;">
                                    <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                                        aria-valuemin="100" aria-valuemax="100"></div>
                                </div>
                                <div class="d-flex justify-content-between mb-1">
                                    <span style="font-size: 12px;">
                                        <a class="' . $permission_accept . '" href="' . $voucher_upload_link . '"
                                            style="text-align: left" target="_blank">
                                            Upload Voucher
                                        </a>
                                    </span>
    
                                    <span style="font-size: 12px;">
                                        <a class="' . $permission_accept . '" href="' . $voucher_upload_view_link . '"
                                            style="text-align: right" target="_blank">
                                            View Voucher
                                        </a>
                                    </span>
                                </div>
                            </div>
                        </div>
                        ';
                } else {
                    $html .= '
                        <div class="d-flex flex-column w-100">
                            <div class="d-flex justify-content-between mb-1">
                                <span>No</span>
                            </div>
                            <div class="progress" style="height: 3px;">
                                <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                                    aria-valuemin="100" aria-valuemax="100"></div>
                            </div>
                            <div class="d-flex justify-content-start mb-1">
                                <span style="font-size: 12px; text-align: left">
                                    <a class="' . $permission_accept . '" href="' . $voucher_upload_link . '" target="_blank">
                                        Upload Voucher
                                    </a>
                                </span>
                            </div>
                        </div>
                        ';
                }
                return $html;
            })

            ->addColumn('action', function ($each) {
                $actions =
                    '<div class="btn-group">
                    <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Action
                    </button>
                    <ul class="dropdown-menu">
                        <li>
                            <a class="dropdown-item"
                                href="' . route('variable_assets_request.show', $each->id) . '">
                                Detail
                            </a>
                        </li>

                        <li>
                            <a class="dropdown-item"
                                href="' . route('change_request_status_completed', $each->id) . '">
                                Completed
                            </a>
                        </li>
                    </ul>
                </div>';
                return $actions;
            })

            ->addIndexColumn()
            ->rawColumns(['request_item', 'accept_reject_status', 'qs_team_check_status', 'logistics_team_check', 'management_accept_reject_status', 'logistics_team_send_status', 'transferred_from', 'transferred_to', 'received_by_engineer', 'actual_voucher_upload', 'work_scope', 'action'])
            ->make(true);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


    public function get_logistics_check_items($id)
    {
        $logistics_check_items = VariableLogisticsTeamCheck::get()->where('variable_request_info_id', $id);
        $variable_payment = VariablePayment::where('variable_request_info_id', $id)->firstOrFail();

        $html = '';
        $html .= '<table style="width: 100%" class="sub_table">';
        $html .= '<tr>';
        $html .= '<td style="background-color: #296166; color: white; text-align: center;"># </td>';
        $html .= '<td style="background-color: #296166; color: white; text-align: center;">Qty </td>';
        $html .= '<td style="background-color: #296166; color: white; text-align: center;">Price </td>';
        $html .= '<td style="background-color: #296166; color: white; text-align: center;">Total Amt </td>';
        $html .= '</tr>';
        $i = 1;
        $totalAmt = [];
        $qs_pass_qty_total = [];
        $total_price = [];
        foreach ($logistics_check_items as $key => $value) {
            $totalAmt[] = $value->qs_passed_qty * $value->price;
            $amt = $value->qs_passed_qty * $value->price;
            $qs_pass_qty_total[] = $value->qs_passed_qty;
            $total_price[] = $value->price;

            $html .= '<tr>';
            $html .= '<td style="text-align: center;">' . $i++ . '</td>';
            $html .= '<td style="text-align: right;">' . number_format($value->qs_passed_qty) . '</td>';
            $html .= '<td style="text-align: right;">' . number_format($value->price, 2) . '</td>';
            $html .= '<td style="text-align: right;">' . number_format($amt, 2) . '</td>';
            $html .= '</tr>';
        }
        $AmttotalAmt = array_sum($totalAmt);
        $TotalQs_pass_qty_total = array_sum($qs_pass_qty_total);
        $price_total = array_sum($total_price);

        $html .= '<tr style="font-weight: bold;">';
        $html .= '<td style="text-align: right; font-weight: bold">Total</td>';
        $html .= '<td style="text-align: right; font-weight: bold">';
        $html .= number_format($TotalQs_pass_qty_total, 2);
        $html .= '</td>';

        $html .= '<td style="text-align: right; font-weight: bold">';
        $html .= number_format($price_total, 2);
        $html .= '</td>';

        $html .= '<td style="text-align: right; font-weight: bold">';
        $html .= number_format($AmttotalAmt, 2);
        $html .= '</td>';

        $html .= '</tr>';


        $html .= '
            <tr style="background-color: #e2dede; color: black;">
                <td colspan="3" style="text-align: left; font-weight: bold">
                    Transportation
                </td>
                <td style="text-align: right;">
                    ' . number_format($variable_payment->transportation, 2) . '
                </td>
            </tr>';

        $html .= '
            <tr style="background-color: #e2dede; color: black;">
                <td colspan="3" style="text-align: left; font-weight: bold">
                    Labor
                </td>
                <td style="text-align: right;">
                    ' . number_format($variable_payment->labor, 2) . '
                </td>
            </tr>';

        $banking_percent = $variable_payment->banking_percent;
        $banking_amount = ($AmttotalAmt / 100) * $banking_percent;
        $html .= '
            <tr style="background-color: #e2dede; color: black;">
                <td colspan="2" style="text-align: left; font-weight: bold">
                    Banking %
                </td>
                <td style="text-align: right;">
                    ' . $variable_payment->banking_percent . '%
                </td>
                <td style="text-align: right;">
                    ' . number_format($banking_amount, 2) . '%
                </td>
            </tr>';

        $html .= '
            <tr style="background-color: #e2dede; color: black;">
                <td colspan="3" style="text-align: left; font-weight: bold">
                Extra
                </td>
                <td style="text-align: right;">
                    ' . number_format($variable_payment->extra, 2) . '
                </td>
            </tr>';


        $transportation = $variable_payment->transportation;
        $labor = $variable_payment->labor;
        $extra = $variable_payment->extra;
        $allTotal = $AmttotalAmt + $transportation + $labor + $banking_amount + $extra;
        $html .= '
            <tr style="background-color: #e2dede; color: black;">
                <td colspan="3" style="text-align: left; font-weight: bold">
                Total
                </td>
                <td style="text-align: right;">
                    ' . number_format($allTotal, 2) . '
                </td>
            </tr>';


        $html .= '</table>';
        return response()->json(['html' => $html]);
    }




    public function item_list_table_no_using()
    {
    }
}
