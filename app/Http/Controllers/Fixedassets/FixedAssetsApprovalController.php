<?php

namespace App\Http\Controllers\Fixedassets;

use App\Http\Controllers\Controller;
use App\Http\Requests\UpdateFixedAssetsApproval;
use App\Models\FixedAssetsBuyRequest;
use Illuminate\Http\Request;

class FixedAssetsApprovalController extends Controller
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

    public function approvalCreate($id = null)
    {
        $fixed_assets_buy_requests = FixedAssetsBuyRequest::get()->where('fixed_asset_id', $id);
        return view('fixed_assets.approval_management.create', compact('fixed_assets_buy_requests'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function UpdateFixedAssetsApprovalQty(UpdateFixedAssetsApproval $request)
    {
        $id = $request->fixed_assets_buy_request_id;
        $fixed_assets_buy_requests = FixedAssetsBuyRequest::findOrFail($id);

        $fixed_assets_buy_requests->approval_qty = $request->approval_qty;
        $fixed_assets_buy_requests->approval_user_id = auth()->user()->id ?? 0;
        $fixed_assets_buy_requests->approval_date = date('Y-m-d H:i:sa');
        $fixed_assets_buy_requests->update();
        return json_encode(array(
            "statusCode" => 200,
        ));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function UpdateFixedAssetsApprovalRemark(Request $request)
    {
        $id = $request->fixed_assets_buy_request_id;
        $fixed_assets_buy_requests = FixedAssetsBuyRequest::findOrFail($id);

        $fixed_assets_buy_requests->approval_remark = $request->approval_remark;
        $fixed_assets_buy_requests->approval_user_id = auth()->user()->id ?? 0;
        $fixed_assets_buy_requests->approval_date = date('Y-m-d H:i:sa');
        $fixed_assets_buy_requests->update();
        return json_encode(array(
            "statusCode" => 200,
        ));
    }
}
