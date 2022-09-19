<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Models\FixedAssets;
use App\Models\RequestInfo;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $total_fixed_assets = FixedAssets::count();
        $total_fixed_assets_request_infos = RequestInfo::where('received_by_engineer_status', NULL)
            ->where('request_status', NULL)
            ->get()
            ->count();

        $total_fixed_assets_reject = RequestInfo::where('accept_reject_status', 'reject')
            ->get()
            ->count();

        $total_fixed_assets_completed = RequestInfo::where('received_by_engineer_status', 'received')
            ->get()
            ->count();
        return view('inventory.index', compact('total_fixed_assets', 'total_fixed_assets_request_infos', 'total_fixed_assets_reject', 'total_fixed_assets_completed'));
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
}
