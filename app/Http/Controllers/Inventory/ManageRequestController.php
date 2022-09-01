<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Models\FixedAssets;
use App\Models\RequestInfo;
use Illuminate\Http\Request;

class ManageRequestController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $eng_request_infos = RequestInfo::with('eng_request_items_table')->orderBy('id', 'DESC')->get()->where('request_status', NULL);
        return view('inventory.manage_request.index', compact('eng_request_infos'));
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function fixed_assets_completed_list()
    {
        $eng_request_infos = RequestInfo::with('eng_request_items_table')->orderBy('id', 'DESC')->get()->where('request_status', 'completed');
        return view('inventory.manage_request.completed.index', compact('eng_request_infos'));
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function fixed_assets_reject_list()
    {
        $eng_request_infos = RequestInfo::with('eng_request_items_table')->orderBy('id', 'DESC')->get()->where('accept_reject_status', 'reject');
        return view('inventory.manage_request.reject.index', compact('eng_request_infos'));
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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $eng_request_items = RequestInfo::with('eng_request_items_table')->get()->where('id', $id);
        return view('inventory.manage_request.show', compact('eng_request_items'));
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


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function fixed_assets_status_completed($id)
    {
        $request_info = RequestInfo::findOrFail($id);
        $request_info->request_status = 'completed';
        $request_info->request_status_date = date('Y-m-d H:i:sa');
        $request_info->request_status_user = auth()->user()->id ?? 0;
        $request_info->update();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function fixed_assets_status_incompleted($id)
    {
        $request_info = RequestInfo::findOrFail($id);
        $request_info->request_status = NULL;
        $request_info->request_status_date = date('Y-m-d H:i:sa');
        $request_info->request_status_user = auth()->user()->id ?? 0;
        $request_info->update();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }
}
