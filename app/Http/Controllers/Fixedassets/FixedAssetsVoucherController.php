<?php

namespace App\Http\Controllers\Fixedassets;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreFixedAssetsVouchers;
use App\Models\FixedAssets;
use App\Models\FixedAssetsVoucher;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Upload;

class FixedAssetsVoucherController extends Controller
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
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreFixedAssetsVouchers $request)
    {
        $id = $request->fixed_asset_id;
        if ($request->hasFile('files')) {
            foreach ($request->file('files') as $key => $file) {
                $original_name = $file->getClientOriginalName();
                // $path = $file->store('public/fixed_assets_voucher', $original_name);
                $path = $file->move('public/fixed_assets_voucher', date('Y-m-d-H-i-s-') . $original_name);

                $insert[$key]['voucher'] = $path;
                $insert[$key]['original_name'] = $original_name;
                $insert[$key]['fixed_asset_id'] = $request->fixed_asset_id ?? 0;
                $insert[$key]['remark'] = $request->remark;
                $insert[$key]['voucher_date'] = $request->voucher_date;
                $insert[$key]['user_id'] = auth()->user()->id;
                $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
                $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
            }
        }
        FixedAssetsVoucher::insert($insert);

        $fixed_assets = FixedAssets::findOrFail($id);
        $fixed_assets->voucher_status = 'finished';
        $fixed_assets->voucher_date = date('Y-m-d H:i:s');
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
        $fixed_assets_vouchers = FixedAssetsVoucher::get()->where('fixed_asset_id', $id);
        return view('fixed_assets_voucher.show', compact('fixed_assets_vouchers'));
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

    public function create_voucher($id = null)
    {
        $id = $id;
        return view('fixed_assets_voucher.create', compact('id'));
    }
}
