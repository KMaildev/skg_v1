<?php

namespace App\Http\Controllers\ManageVariableRequest;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreVariableAcceptRejectStatus;
use App\Models\VariableAcceptRejectStatus;
use App\Models\VariableRequestInfo;
use Illuminate\Http\Request;

class VariableAcceptRejectStatusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
    public function store(StoreVariableAcceptRejectStatus $request)
    {
        $accept_reject = new VariableAcceptRejectStatus();
        $accept_reject->user_id = auth()->user()->id;
        $accept_reject->accept_reject_status = $request->accept_reject_status;
        $accept_reject->accept_reject_date = date('Y-m-d H:i:sa');
        $accept_reject->variable_request_info_id = $request->request_info_id;
        $accept_reject->remark = $request->remark;
        $accept_reject->save();

        $id = $request->request_info_id;
        $request_info = VariableRequestInfo::findOrFail($id);
        $request_info->accept_reject_status = $request->accept_reject_status;
        $request_info->accept_reject_date = date('Y-m-d H:i:sa');
        $request_info->update();

        return json_encode(array(
            "statusCode" => 200
        ));
        // return redirect()->back()->with('success', 'Your processing has been completed.');
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


    public function save_variable_accept_reject(Request $request)
    {
        $accept_reject = new VariableAcceptRejectStatus();
        $accept_reject->user_id = auth()->user()->id;
        $accept_reject->accept_reject_status = $request->accept_reject_status;
        $accept_reject->accept_reject_date = date('Y-m-d H:i:sa');
        $accept_reject->variable_request_info_id = $request->request_info_id;
        $accept_reject->remark = $request->remark;
        $accept_reject->save();

        $id = $request->request_info_id;
        $request_info = VariableRequestInfo::findOrFail($id);
        $request_info->accept_reject_status = $request->accept_reject_status;
        $request_info->accept_reject_date = date('Y-m-d H:i:sa');
        $request_info->update();

        return json_encode(array(
            "statusCode" => 200
        ));
    }
}
