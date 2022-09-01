<?php

namespace App\Http\Controllers\ManageVariableRequest;

use App\Http\Controllers\Controller;
use App\Models\VariableQsTeamCheck;
use App\Models\VariableRequestInfo;
use Illuminate\Http\Request;

class VariableQsTeamCheckController extends Controller
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
        $eng_request_items = VariableRequestInfo::with('variable_request_items_table')->get()->where('id', $id);
        return view('variable_assets_request.qs_team_check.create', compact('eng_request_items'));
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
        $eng_request_item_id = $request->request_item_id;
        $variable_asset_id = $request->variable_asset_id;
        $eng_request_qty = $request->eng_request_qty;
        $remark = $request->remark;
        $request_info_id = $request->request_info_id;

        foreach ($request->passed_qty as $key => $value) {
            $insert[$key]['user_id'] = $user_id;
            $insert[$key]['variable_request_item_id'] = $eng_request_item_id[$key];
            $insert[$key]['eng_request_qty'] = $eng_request_qty[$key];
            $insert[$key]['qs_passed_qty'] = $value;
            $insert[$key]['remark'] = $remark[$key];
            $insert[$key]['created_at'] =  date('Y-m-d H:i:sa');
            $insert[$key]['updated_at'] =  date('Y-m-d H:i:sa');
            $insert[$key]['variable_request_info_id'] =  $request_info_id;
            $insert[$key]['variable_asset_id'] = $request->variable_asset_id[$key];
        }
        VariableQsTeamCheck::insert($insert);

        $request_info = VariableRequestInfo::findOrFail($request_info_id);
        $request_info->qs_team_check_status = 'finished';
        $request_info->qs_team_check_date = date('Y-m-d H:i:sa');
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
}
