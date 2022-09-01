<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Models\EngineerReturnInfo;
use App\Models\MainWarehouse;
use App\Models\ReturnTransferInfo;
use Illuminate\Http\Request;

class ReturnLogisticsTeamCheckController extends Controller
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
    public function create($id = null)
    {
        $return_info = EngineerReturnInfo::findOrFail($id);
        $mainwarehouses = MainWarehouse::all();
        return view('inventory.return_logistics_team_check.create', compact('return_info', 'mainwarehouses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user_id = auth()->user()->id;
        $transfer_info = new ReturnTransferInfo();

        $transfer_info->transfer_from = $request->transfer_from;
        $transfer_info->transfer_to_warehouse_id = $request->transfer_to_warehouse_id;
        $transfer_info->sent_date = $request->sent_date;
        $transfer_info->remark = $request->remark;
        $transfer_info->engineer_return_info_id = $request->engineer_return_info_id;
        $transfer_info->user_id = $user_id;
        $transfer_info->save();

        $engineer_return_info_id = $request->engineer_return_info_id;
        $return_info = EngineerReturnInfo::findOrFail($engineer_return_info_id);
        $return_info->logistics_team_check_sent_status = 'finished';
        $return_info->logistics_team_check_sent_date = date('Y-m-d H:i:sa');
        $return_info->update();
        return redirect()->back()->with('success', 'Process is completed.');
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
}
