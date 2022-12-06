<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreAcceptRejectStatus;
use App\Models\AcceptRejectStatus;
use App\Models\RequestInfo;
use Illuminate\Http\Request;

class AcceptRejectStatusController extends Controller
{

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAcceptRejectStatus $request)
    {
        $accept_reject = new AcceptRejectStatus();
        $accept_reject->user_id = auth()->user()->id;
        $accept_reject->accept_reject_statuse = $request->accept_reject_status;
        $accept_reject->accept_reject_date = date("Y-m-d");
        $accept_reject->request_info_id = $request->request_info_id;
        $accept_reject->save();

        $id = $request->request_info_id;
        $request_info = RequestInfo::findOrFail($id);
        $request_info->accept_reject_status = $request->accept_reject_status;
        $request_info->accept_reject_date = date('Y-m-d H:i:sa');
        $request_info->update();

        return redirect()->back()->with('success', 'Successful.');
    }


    public function fixedAssetsAcceptRejectStatus(Request $request)
    {
        $id = $request->id;
        $value = $request->value;

        // $info = VariableRequestInfo::findOrFail($id);
        // $remark = $info->accept_reject_remark ?? '';

        $request_info = RequestInfo::findOrFail($id);
        $request_info->accept_reject_status = $request->value;
        $request_info->accept_reject_date = date('Y-m-d H:i:sa');
        $request_info->update();


        $accept_reject = new AcceptRejectStatus();
        $accept_reject->user_id = auth()->user()->id;
        $accept_reject->accept_reject_statuse = $value;
        $accept_reject->accept_reject_date = date('Y-m-d H:i:sa');
        $accept_reject->request_info_id = $id;
        $accept_reject->save();

        return json_encode(array(
            "statusCode" => 200,
        ));
    }

    public function updateFixedAssetsAcceptRejectRemark(Request $request)
    {
        $id = $request->id;
        $value = $request->value;
        $temp = RequestInfo::findOrFail($id);
        $temp->accept_reject_remark = $value;
        $temp->update();
        return json_encode(array(
            "statusCode" => 200,
        ));
    }
}
