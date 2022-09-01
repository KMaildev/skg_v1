<?php

namespace App\Http\Controllers\Fixedassets;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreUnusableFixedAssets;
use App\Models\FixedAssets;
use App\Models\UnusableFixedAssets;
use Illuminate\Http\Request;

class UnusableFixedAssetsController extends Controller
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
    public function store(StoreUnusableFixedAssets $request)
    {
        $id = $request->fixed_asset_id ?? 0;
        $unusable = new UnusableFixedAssets();
        $unusable->qty = $request->qty;
        $unusable->reason = $request->reason;
        $unusable->remark = $request->remark;
        $unusable->fixed_asset_id = $id;
        $unusable->user_id = auth()->user()->id ?? 0;
        $unusable->save();

        $fixed_assets = FixedAssets::findOrFail($id);
        $fixed_assets->unusable_status = 'true';
        $fixed_assets->unusable_date = date('Y-m-d H:i:s');
        $fixed_assets->update();

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
        $unusable_fixed_assets = UnusableFixedAssets::get()->where('fixed_asset_id', $id);
        return view('unusable_fixed_assets.show', compact('unusable_fixed_assets'));
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


    public function unusable_fixed_asset_create($id = null)
    {
        $fixed_assets = FixedAssets::findOrFail($id);
        $id = $id;
        return view('unusable_fixed_assets.create', compact('id', 'fixed_assets'));
    }
}
