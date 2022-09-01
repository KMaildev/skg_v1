<?php

namespace App\Http\Controllers\Purchase;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreFixedAssetsPurchase;
use App\Http\Requests\UpdateFixedAssetsPurchase;
use App\Models\FixedAssets;
use App\Models\FixedAssetsPurchase;
use Illuminate\Http\Request;

class FixedAssetsPurchaseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $fixed_asset_purchases = FixedAssetsPurchase::all();
        return view('purchase.fixed_assets.index', compact('fixed_asset_purchases'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $fixed_assets = FixedAssets::all();
        return view('purchase.fixed_assets.create', compact('fixed_assets'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreFixedAssetsPurchase $request)
    {
        $user_id = auth()->user()->id;
        foreach ($request->fixed_asset_id as $key => $fixed_asset) {
            FixedAssetsPurchase::create([
                'reference' => $request->reference,
                'order_date' => $request->order_date,
                'user_id' => $user_id,

                'fixed_asset_id' => $fixed_asset,
                'qty' => $request->qty[$key],
                'price' => $request->price[$key],
                'desciption' => $request->desciption[$key],
            ]);
        }

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
        $fixed_assets = FixedAssets::all();
        $fixed_assets_purchase = FixedAssetsPurchase::findOrFail($id);
        return view('purchase.fixed_assets.edit', compact('fixed_assets', 'fixed_assets_purchase'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateFixedAssetsPurchase $request, $id)
    {
        $user_id = auth()->user()->id;
        $fixed_assets = FixedAssetsPurchase::findOrFail($id);
        $fixed_assets->reference = $request->reference;
        $fixed_assets->order_date = $request->order_date;
        $fixed_assets->fixed_asset_id = $request->fixed_asset_id;
        $fixed_assets->qty = $request->qty;
        $fixed_assets->price = $request->price;
        $fixed_assets->desciption = $request->desciption;
        $fixed_assets->user_id = $user_id;
        $fixed_assets->update();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $delete = FixedAssetsPurchase::findOrFail($id);
        $delete->delete();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }
}
