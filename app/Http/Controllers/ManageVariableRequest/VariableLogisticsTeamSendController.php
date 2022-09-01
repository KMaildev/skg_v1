<?php

namespace App\Http\Controllers\ManageVariableRequest;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreVariableLogisticsTeamSends;
use App\Models\MainWarehouse;
use App\Models\VariableLogisticsTeamSend;
use App\Models\VariableRequestInfo;
use Illuminate\Http\Request;

class VariableLogisticsTeamSendController extends Controller
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
    public function store(StoreVariableLogisticsTeamSends $request)
    {
        $user_id = auth()->user()->id;
        $send = new VariableLogisticsTeamSend();
        $send->transfer_from_warehouse_id = $request->transfer_from_warehouse_id ?? 0;
        $send->transfer_to = $request->transfer_to;
        $send->transfer_to_customer_id = $request->transfer_to_customer_id;
        $send->sent_date = $request->sent_date;
        $send->remark = $request->remark;
        $send->variable_request_info_id = $request->variable_request_info_id;
        $send->user_id = $user_id;
        $send->save();

        $variable_request_info_id = $request->variable_request_info_id;
        $request_info = VariableRequestInfo::findOrFail($variable_request_info_id);
        $request_info->logistics_team_send_status = 'finished';
        $request_info->logistics_team_send_date = date('Y-m-d H:i:sa');
        $request_info->update();

        return redirect()->back()->with('success', 'Your processing has been completed.');
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


    public function send_form($id = null)
    {
        $variable_request_info = VariableRequestInfo::findOrFail($id);
        $mainwarehouses = MainWarehouse::all();
        return view('variable_assets_request.logistics_team_send.send_form', compact('variable_request_info', 'mainwarehouses'));
    }
}
