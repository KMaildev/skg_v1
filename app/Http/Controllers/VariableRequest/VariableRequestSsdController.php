<?php

namespace App\Http\Controllers\VariableRequest;

use App\Http\Controllers\Controller;
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
        $data = VariableRequestInfo::with('variable_request_items_table')
            ->orderBy('id', 'DESC')
            ->get()
            ->where('request_status', NULL)
            ->where('actual_voucher_upload', NULL);
        return Datatables::of($data)

            ->editColumn('engineer_name', function ($each) {
                return $each->user_table ? $each->user_table->name : '-';
            })

            ->editColumn('customer', function ($each) {
                $customer_name = $each->customer_table ? $each->customer_table->name : '';
                $project_code = $each->customer_table ? $each->customer_table->project_code : '';
                return $customer_name . '@' . $project_code;
            })

            ->editColumn('request_item', function ($each) {
                $html = '';
                $html .= '<table style="width: 100%" class="sub_table">';
                $html .= '<tr>';
                $html .= '<td style="background-color: #296166; color: white;"> Items</td>';
                $html .= '<td style="background-color: #296166; color: white;"> Unit </td>';
                $html .= '<td style="background-color: #296166; color: white;"> Qty </td>';
                $html .= '</tr>';

                foreach ($each->variable_request_items_table as $value) {
                    $itemName = $value->variable_assets_table->item_name ?? '';
                    $unit = $value->variable_assets_table->unit ?? '';
                    $quantity = $value->quantity ?? 0;

                    $html .= '<tr>';
                    $html .= '<td style="text-align: left;">';
                    $html .= $itemName;
                    $html .= '</td>';
                    $html .= '<td style="text-align: left;">';
                    $html .= $unit;
                    $html .= '</td>';
                    $html .= '<td style="text-align: left;">';
                    $html .= $quantity;
                    $html .= '</td>';
                    $html .= '</tr>';
                }
                $html .= '</table>';
                return $html;
            })

            ->editColumn('accept_reject_status', function ($each) {
                $accept_reject_status = ucfirst($each->accept_reject_status);
                $accept_reject_date = $each->accept_reject_date;
                $id = $each->id;

                $html = '';
                if (auth()->user()->can('variable_accept_reject')) {
                    if ($each->accept_reject_status == 'accept') {
                        $html .= '
                        <a href="#" id="AssetRejectShowModel" data-id="' . $id . '">
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
                        <a href="#" id="AssetRejectShowModel" data-id="' . $id . '">
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
                        <a href="#" id="AssetRejectShowModel" data-id="' . $id . '">
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
                }
                return $html;
            })

            ->editColumn('qs_team_check_status', function ($each) {
                $qs_team_check_date = $each->qs_team_check_date;
                $html = '';
                if (auth()->user()->can('variable_qs_team_check_pass')) {
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
                        <a href="' . route('variable_qs_team_check_create', ['id' => $each->id]) . '" target="_blank">
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
                }
                return $html;
            })

            ->editColumn('logistics_team_check', function ($each) {
                $logistics_team_check_date = $each->logistics_team_check_date;
                $accept_reject_status = $each->accept_reject_status;
                $id = $each->id;

                $html = '';
                if (auth()->user()->can('variable_logistics_team_check')) {
                    if ($each->logistics_team_check) {
                        $html .= '
                        <a href="' . route('variable_logistics_check_create', ['id' => $each->id]) . '">
                            <div class="d-flex flex-column w-100">
                                <div class="d-flex justify-content-between mb-1">
                                    <span>Finished</span>
                                </div>
                                <div class="progress" style="height: 3px;">
                                    <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                                        aria-valuemin="100" aria-valuemax="100"></div>
                                </div>
                                <span style="font-size: 12px; text-align: left">
                                    ' . $logistics_team_check_date . '
                                </span>
                            </div>
                        </a>
                        ';
                    } else {
                        $html .= '
                        <a href="' . route('variable_logistics_check_create', ['id' => $each->id]) . '" target="_blank">
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
                }
                return $html;
            })

            ->editColumn('management_accept_reject_status', function ($each) {

                $management_accept_reject_status = ucfirst($each->management_accept_reject_status);
                $management_accept_reject_date = $each->management_accept_reject_date;
                $id = $each->id;

                $html = '';
                
                if (auth()->user()->can('management_accept_reject')) {
                    if ($each->management_accept_reject_status == 'accept') {
                        $html .= '
                        <a href="#" id="ManagementAssetRejectShowModel" data-id="' . $id . '">
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
                    } else if ($each->accept_reject_status == 'reject') {
                        $html .= '
                        <a href="#" id="ManagementAssetRejectShowModel" data-id="' . $id . '">
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
                        <a href="#" id="ManagementAssetRejectShowModel" data-id="' . $id . '">
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
                }
                return $html;
            })

            ->editColumn('logistics_team_send_status', function ($each) {

                $logistics_team_send_date = $each->logistics_team_send_date;
                $id = $each->id;

                $html = '';
                if (auth()->user()->can('variable_logistics_team_send')) {
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
                        <a href="' . route('variable_logistics_send_form', ['id' => $each->id]) . '" target="_blank">
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
                                        <a href="' . route('variable_actual_voucher_upload', ['id' => $each->id]) . '"
                                            style="text-align: left" target="_blank">
                                            Upload Voucher
                                        </a>
                                    </span>
    
                                    <span style="font-size: 12px;">
                                        <a href="' . route('variable_actual_voucher.show', $each->id) . '"
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
                                    <a href="' . route('variable_actual_voucher_upload', ['id' => $each->id]) . '" target="_blank">
                                        Upload Voucher
                                    </a>
                                </span>
                            </div>
                        </div>
                        ';
                    }
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
            ->rawColumns(['request_item', 'accept_reject_status', 'qs_team_check_status', 'logistics_team_check', 'management_accept_reject_status', 'logistics_team_send_status', 'transferred_from', 'transferred_to', 'received_by_engineer', 'actual_voucher_upload', 'action'])
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


    public function item_list_table_no_using()
    {
    }
}
