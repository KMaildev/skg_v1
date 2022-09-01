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
