<?php

namespace App\Http\Controllers\Engineer;

use App\Http\Controllers\Controller;
use App\Http\Requests\VariableStoreReceivedByEngineer;
use App\Models\VariableQsTeamCheck;
use App\Models\VariableReceivedByEngineer;
use App\Models\VariableRequestInfo;
use App\Models\VariableRequestItem;
use Illuminate\Http\Request;

class VariableReceivedByEngineerController extends Controller
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
        $eng_request_items = VariableRequestInfo::with('variable_request_items_table')
            ->get()
            ->where('id', $id);
        return view('engineer.variable_assets.received_by.create', compact('eng_request_items'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(VariableStoreReceivedByEngineer $request)
    {
        $user_id = auth()->user()->id;
        $received_by_engineer = new VariableReceivedByEngineer();
        $received_by_engineer->variable_request_info_id = $request->variable_request_info_id;
        $received_by_engineer->received_by_engineer_status = 'received';
        $received_by_engineer->received_date = $request->received_date;
        $received_by_engineer->remark = $request->remark;
        $received_by_engineer->user_id = $user_id;
        $received_by_engineer->save();

        $variable_request_info_id = $request->variable_request_info_id;
        $request_info = VariableRequestInfo::findOrFail($variable_request_info_id);
        $request_info->received_by_engineer_status = 'received';
        $request_info->received_date = $request->received_date;
        $request_info->update();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }


    public function store_received_by_engineer(Request $request)
    {
        $request_item_id = $request->request_item_id;
        $received_qty = $request->received_qty;
        $remark = $request->remark;

        foreach ($request->request_item_id as $key => $value) {
            $id = $request_item_id[$key];
            $request_item = VariableRequestItem::findOrFail($id);

            $request_item->received_qty = $received_qty[$key];
            $request_item->received_date = date("Y-m-d H:i:s");
            $request_item->received_user = auth()->user()->id;
            $request_item->received_remark = $remark[$key];
            $request_item->update();
        }

        $variable_request_info_id = $request->request_info_id;
        $received_by_engineer = new VariableReceivedByEngineer();
        $received_by_engineer->variable_request_info_id = $variable_request_info_id;
        $received_by_engineer->received_by_engineer_status = 'received';
        $received_by_engineer->received_date = date("Y-m-d H:i:s");
        $received_by_engineer->user_id = auth()->user()->id;
        $received_by_engineer->save();

        $request_info = VariableRequestInfo::findOrFail($variable_request_info_id);
        $request_info->received_by_engineer_status = 'received';
        $request_info->received_date = date("Y-m-d H:i:s");
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
