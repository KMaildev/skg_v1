<?php

namespace App\Http\Controllers\Engineer;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreReceivedByEngineer;
use App\Models\ReceivedByEngineer;
use App\Models\RequestInfo;
use Illuminate\Http\Request;

class ReceivedByEngineerController extends Controller
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
    public function store(StoreReceivedByEngineer $request)
    {
        $user_id = auth()->user()->id;
        $received_by_engineer = new ReceivedByEngineer();
        $received_by_engineer->request_info_id = $request->request_info_id;
        $received_by_engineer->received_status = 'received';
        $received_by_engineer->received_date = $request->received_date;

        $received_by_engineer->user_id = $user_id;
        $received_by_engineer->save();

        $request_info_id = $request->request_info_id;
        $request_info = RequestInfo::findOrFail($request_info_id);
        $request_info->received_by_engineer_status = 'received';
        $request_info->received_date = $request->received_date;
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
