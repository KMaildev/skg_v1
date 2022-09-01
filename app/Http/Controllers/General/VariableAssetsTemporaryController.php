<?php

namespace App\Http\Controllers\General;

use App\Http\Controllers\Controller;
use App\Models\VariableAssetsTemporary;
use Illuminate\Http\Request;

class VariableAssetsTemporaryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $session_id = session()->getId();
        $variable_assets_temporaries = VariableAssetsTemporary::with('variable_assets_table')->orderBy('id')->where('session_id', $session_id)->get();
        echo json_encode($variable_assets_temporaries);
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
    public function store(Request $request)
    {
        $temp = new VariableAssetsTemporary();
        $temp->variable_asset_id = $request->variable_asset_id;
        $temp->qty = 1;
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
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
    }

    public function remove_variable_assets_temporarie($id)
    {
        $temp = VariableAssetsTemporary::findOrFail($id);
        $temp->delete();
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
    public function update_variable_assets_temporarie(Request $request)
    {
        $id = $request->variable_assets_temporarie_id;
        $update_qty = $request->update_qty;

        $temp = VariableAssetsTemporary::findOrFail($id);
        $temp->qty = $update_qty;
        $temp->update();
        return json_encode(array(
            "statusCode" => 200,
        ));
    }
}
