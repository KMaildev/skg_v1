<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreFixedAssets;
use App\Http\Requests\UpdateFixedAssets;
use App\Models\FixedAssets;
use App\Models\FixedAssetsPurchase;
use App\Models\MainWarehouse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FixedAssetsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $fixed_assets = FixedAssets::paginate(100);
        return view('fixed_assets.index', compact('fixed_assets'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $mainwarehouses = MainWarehouse::all();
        return view('fixed_assets.create', compact('mainwarehouses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreFixedAssets $request)
    {
        $fixed_assets = new FixedAssets();
        $fixed_assets->main_warehouse_id = $request->main_warehouse;
        $fixed_assets->item_name = $request->item_name;
        $fixed_assets->unit = $request->unit;
        $fixed_assets->qty = $request->qty;
        $fixed_assets->desciption = $request->remark;
        $fixed_assets->save();
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
        $fixed_assets = FixedAssets::findOrFail($id);
        $fixed_asset_purchases = FixedAssetsPurchase::get()->where('fixed_asset_id', $id);
        return view('fixed_assets.show', compact('fixed_assets', 'fixed_asset_purchases'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $mainwarehouses = MainWarehouse::all();
        $fixed_assets = FixedAssets::findOrFail($id);
        return view('fixed_assets.edit', compact('fixed_assets', 'mainwarehouses'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateFixedAssets $request, $id)
    {
        $fixed_assets = FixedAssets::findOrFail($id);
        $fixed_assets->main_warehouse_id = $request->main_warehouse;
        $fixed_assets->item_name = $request->item_name;
        $fixed_assets->unit = $request->unit;
        $fixed_assets->qty = $request->qty;
        $fixed_assets->desciption = $request->remark;
        $fixed_assets->update();
        return redirect()->back()->with('success', 'Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $fixed_assets = FixedAssets::findOrFail($id);
        $fixed_assets->delete();
        return redirect()->back()->with('success', 'Deleted successfully.');
    }
}
