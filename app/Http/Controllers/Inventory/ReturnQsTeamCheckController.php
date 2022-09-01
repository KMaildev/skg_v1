<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreRetrunQsTeamCheckPasses;
use App\Models\EngineerReturnInfo;
use App\Models\ReturnItem;
use App\Models\ReturnQsTeamCheckPass;
use Illuminate\Http\Request;

class ReturnQsTeamCheckController extends Controller
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
        $eng_return_items = ReturnItem::where('engineer_return_info_id', $id)->get();
        return view('inventory.inventory_qs_team_check.create', compact('return_info', 'eng_return_items'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreRetrunQsTeamCheckPasses $request)
    {
        $user_id = auth()->user()->id;
        $engineer_return_info_id = $request->engineer_return_info_id;
        $return_item_id = $request->return_item_id;
        $fixed_asset_id = $request->fixed_asset_id;

        foreach ($request->passed_qty as $key => $value) {
            $insert[$key]['user_id'] = $user_id;
            $insert[$key]['return_item_id'] = $return_item_id[$key];
            $insert[$key]['fixed_asset_id'] = $fixed_asset_id[$key];
            $insert[$key]['engineer_return_info_id'] = $engineer_return_info_id;
            $insert[$key]['qs_passed_qty'] = $value;
            $insert[$key]['created_at'] =  date('Y-m-d H:i:sa');
            $insert[$key]['updated_at'] =  date('Y-m-d H:i:sa');
        }
        ReturnQsTeamCheckPass::insert($insert);

        $request_info = EngineerReturnInfo::findOrFail($engineer_return_info_id);
        $request_info->qs_team_check_pass_status = 'finished';
        $request_info->qs_team_check_pass_date = date('Y-m-d H:i:sa');
        $request_info->update();
        return redirect()->back()->with('success', 'Created successfully.');
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
