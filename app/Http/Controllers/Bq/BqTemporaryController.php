<?php

namespace App\Http\Controllers\Bq;

use App\Http\Controllers\Controller;
use App\Models\BqTemporary;
use Illuminate\Http\Request;

class BqTemporaryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $session_id = session()->getId();
        $bq_temporaries = BqTemporary::with('variable_assets_table')->orderBy('id')->where('session_id', $session_id)->get();
        echo json_encode($bq_temporaries);
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
        $temp = new BqTemporary();
        $temp->variable_asset_id = $request->variable_asset_id;
        $temp->qty = $request->qty;
        $temp->rate = $request->rate;
        $temp->remark = $request->remark;
        $temp->session_id = session()->getId();
        $temp->user_id = auth()->user()->id ?? 0;
        $temp->save();
        return json_encode(array(
            "statusCode" => 200,
        ));
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


    public function remove_bq_temporaries($id)
    {
        $temp = BqTemporary::findOrFail($id);
        $temp->delete();
        return json_encode(array(
            "statusCode" => 200,
        ));
    }
}
