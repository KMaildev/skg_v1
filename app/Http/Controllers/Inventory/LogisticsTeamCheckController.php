<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreTransferInfo;
use App\Models\Customers;
use App\Models\MainWarehouse;
use App\Models\RequestInfo;
use App\Models\TransferInfo;
use Illuminate\Http\Request;

class LogisticsTeamCheckController extends Controller
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
        $request_info = RequestInfo::findOrFail($id);
        $mainwarehouses = MainWarehouse::all();
        $request_info_lists = RequestInfo::where('logistics_team_check_sent_status', 'finished')->get();
        return view('inventory.logistics_team_check.create', compact('request_info', 'mainwarehouses', 'request_info_lists'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreTransferInfo $request)
    {
        $user_id = auth()->user()->id;
        $transfer_info = new TransferInfo();

        $transfer_info->transfer_from = $request->transfer_from;
        $transfer_from = $request->transfer_from;
        if ($transfer_from == 'warehouse') {
            $transfer_info->main_warehouse_id = $request->main_warehouse_id ?? 0;
            $transfer_info->eng_request_info_id = 0;
        } else {
            $transfer_info->main_warehouse_id = 0;
            $transfer_info->eng_request_info_id = $request->eng_request_info_id ?? 0;
        }

        $transfer_info->transferred_to = $request->transferred_to;
        $transfer_info->sent_date = $request->sent_date;
        $transfer_info->remark = $request->remark;
        $transfer_info->request_info_id = $request->request_info_id;
        $transfer_info->user_id = $user_id;
        $transfer_info->save();

        $request_info_id = $request->request_info_id;
        $request_info = RequestInfo::findOrFail($request_info_id);
        $request_info->logistics_team_check_sent_status = 'finished';
        $request_info->logistics_team_check_sent_date = date('Y-m-d H:i:sa');

        $request_info->transfer_from_status = $request->transfer_from;
        if ($transfer_from == 'warehouse') {
            $request_info->main_warehouse_id = $request->main_warehouse_id ?? 0;
            $request_info->other_site_id = 0;
        } else {
            $request_info->main_warehouse_id = 0;
            $request_info->other_site_id = $request->eng_request_info_id ?? 0;
        }
        $request_info->update();
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
