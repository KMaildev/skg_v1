<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreQsTeamCheck;
use App\Http\Requests\StoreReceivedByEngineerFixedAssets;
use App\Models\QsTeamCheckPass;
use App\Models\ReceivedByEngineer;
use App\Models\RequestInfo;
use Illuminate\Http\Request;

class QsTeamCheckController extends Controller
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
        $eng_request_items = RequestInfo::with('eng_request_items_table')->get()->where('id', $id);
        return view('inventory.qs_team_check.create', compact('eng_request_items'));
    }


    public function create_by_engineer($id = null)
    {
        $eng_request_items = RequestInfo::with('eng_request_items_table')
            ->where('id', $id)
            ->get();
        return view('engineer.received.create', compact('eng_request_items'));
    }

    public function show_received_items($id = null)
    {
        $eng_request_items = RequestInfo::with('eng_request_items_table')->get()->where('id', $id);
        return view('engineer.received.show_received_items', compact('eng_request_items'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreQsTeamCheck $request)
    {
        $user_id = auth()->user()->id;
        $eng_request_item_id = $request->request_item_id;
        $fixed_asset_id = $request->fixed_asset_id;
        $eng_request_qty = $request->eng_request_qty;
        $project_id = $request->project_id;
        $request_info_id = $request->request_info_id;

        foreach ($request->passed_qty as $key => $value) {
            $insert[$key]['user_id'] = $user_id;
            $insert[$key]['eng_request_item_id'] = $eng_request_item_id[$key];
            $insert[$key]['project_id'] = $project_id;
            $insert[$key]['eng_request_qty'] = $eng_request_qty[$key];
            $insert[$key]['qs_passed_qty'] = $value;
            $insert[$key]['created_at'] =  date('Y-m-d H:i:sa');
            $insert[$key]['updated_at'] =  date('Y-m-d H:i:sa');
            $insert[$key]['request_info_id'] =  $request_info_id;
            $insert[$key]['fixed_asset_id'] = $request->fixed_asset_id[$key];
            $insert[$key]['transferred_from_id'] = 0;
        }
        QsTeamCheckPass::insert($insert);


        $request_info = RequestInfo::findOrFail($request_info_id);
        $request_info->qs_team_check_status = 'finished';
        $request_info->qs_team_check_date = date('Y-m-d H:i:sa');
        $request_info->update();
        return redirect()->back()->with('success', 'Created successfully.');
    }


    public function store_received_by_engineer(StoreReceivedByEngineerFixedAssets $request)
    {
        $qs_team_check_passes_id = $request->qs_team_check_passes_id;
        $received_qty = $request->received_qty;
        $remark = $request->remark;

        foreach ($request->qs_team_check_passes_id as $key => $value) {
            $id = $qs_team_check_passes_id[$key];
            $request_item = QsTeamCheckPass::where('eng_request_item_id', $id)->first();

            $request_item->received_qty = $received_qty[$key];
            $request_item->received_date = date("Y-m-d H:i:s");
            $request_item->received_user = auth()->user()->id;
            $request_item->received_remark = $remark[$key];
            $request_item->update();
        }

        $user_id = auth()->user()->id;
        $received_by_engineer = new ReceivedByEngineer();
        $received_by_engineer->request_info_id = $request->request_info_id;
        $received_by_engineer->received_status = 'received';
        $received_by_engineer->received_date = date("Y-m-d H:i:s");

        $received_by_engineer->user_id = $user_id;
        $received_by_engineer->save();

        $request_info_id = $request->request_info_id;
        $request_info = RequestInfo::findOrFail($request_info_id);
        $request_info->received_by_engineer_status = 'received';
        $request_info->received_date = date("Y-m-d H:i:s");
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
