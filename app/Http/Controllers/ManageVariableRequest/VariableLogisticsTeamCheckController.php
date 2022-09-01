<?php

namespace App\Http\Controllers\ManageVariableRequest;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreVariableLogisticsTeamCheck;
use App\Models\VariableLogisticsTeamCheck;
use App\Models\VariablePayment;
use App\Models\VariableRequestInfo;
use Illuminate\Http\Request;

class VariableLogisticsTeamCheckController extends Controller
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
        return view('variable_assets_request.logistics_team_check.create', compact('eng_request_items'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVariableLogisticsTeamCheck $request)
    {
        $user_id = auth()->user()->id;
        $variable_request_item_id = $request->variable_request_item_id;
        $eng_request_qty = $request->eng_request_qty;
        $variable_request_info_id = $request->variable_request_info_id;
        $remark = $request->remark;


        // save_to_variable_logistics_team_checks_table
        foreach ($request->passed_qty as $key => $value) {
            $insert[$key]['user_id'] = $user_id;
            $insert[$key]['variable_request_item_id'] = $variable_request_item_id[$key];
            $insert[$key]['eng_request_qty'] = $eng_request_qty[$key];
            $insert[$key]['qs_passed_qty'] = $value;
            $insert[$key]['variable_request_info_id'] =  $variable_request_info_id;
            $insert[$key]['variable_asset_id'] = $request->variable_asset_id[$key];
            $insert[$key]['price'] = $request->price[$key];
            $insert[$key]['remark'] = $remark[$key];
            $insert[$key]['created_at'] =  date('Y-m-d H:i:sa');
            $insert[$key]['updated_at'] =  date('Y-m-d H:i:sa');
        }
        VariableLogisticsTeamCheck::insert($insert);

        // save_tovariable_payments
        $variable_payments = new VariablePayment();
        $variable_payments->transportation = $request->transportation ?? 0;
        $variable_payments->labor = $request->labor ?? 0;
        $variable_payments->banking_percent = $request->banking_percent ?? 0;
        $variable_payments->extra = $request->extra ?? 0;

        $variable_payments->variable_request_info_id = $variable_request_info_id;
        $variable_payments->user_id = $user_id;
        $variable_payments->supplier_name = $request->supplier_name ?? '';
        $variable_payments->save();

        // update_to_variable_request_infos
        $request_info = VariableRequestInfo::findOrFail($variable_request_info_id);
        $request_info->logistics_team_check = 'finished';
        $request_info->logistics_team_check_date = date('Y-m-d H:i:sa');
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
