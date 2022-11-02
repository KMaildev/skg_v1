<?php

namespace App\Http\Controllers\VariableRequest;

use App\Http\Controllers\Controller;
use App\Models\EngRequestItem;
use App\Models\VariableRequestItem;
use Illuminate\Http\Request;

class RequestItemController extends Controller
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
        $variable_request_items_table = VariableRequestItem::get()->where('variable_request_info_id', $id);
        $html = '';
        $html .= '<table style="width: 100%">';
        $html .= '<tr>';
        $html .= '<td style="background-color: #296166; color: white; width: 60%"> Items</td>';
        $html .= '<td style="background-color: #296166; color: white; width: 20%"> Unit </td>';
        $html .= '<td style="background-color: #296166; color: white; width: 20%"> Qty </td>';
        $html .= '</tr>';

        foreach ($variable_request_items_table as $value) {
            $itemName = $value->variable_assets_table->item_name ?? '';
            $unit = $value->variable_assets_table->unit ?? '';
            $quantity = $value->quantity ?? 0;

            $html .= '<tr>';
            $html .= '<td style="text-align: left; width: 60%">';
            $html .= $itemName;
            $html .= '</td>';
            $html .= '<td style="width: 30%">';
            $html .= $unit;
            $html .= '</td>';
            $html .= '<td style="width: 30%">';
            $html .= $quantity;
            $html .= '</td>';
            $html .= '</tr>';
        }
        $html .= '</table>';
        return response()->json(['html' => $html]);
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
