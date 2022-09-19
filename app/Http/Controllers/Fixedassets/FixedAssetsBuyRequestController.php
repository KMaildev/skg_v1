<?php

namespace App\Http\Controllers\Fixedassets;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreFixedAssetsBuyRequest;
use App\Models\FixedAssetsBuyRequest;
use Illuminate\Http\Request;

class FixedAssetsBuyRequestController extends Controller
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
    public function store(StoreFixedAssetsBuyRequest $request)
    {
        $fixed_asset_buy = new FixedAssetsBuyRequest();
        $fixed_asset_buy->request_qty = $request->request_qty;
        $fixed_asset_buy->remark = $request->remark;
        $fixed_asset_buy->request_date = date('Y-m-d H:i:sa');
        $fixed_asset_buy->fixed_asset_id = $request->fixed_asset_id;
        $fixed_asset_buy->user_id = auth()->user()->id ?? 0;
        $fixed_asset_buy->save();
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
