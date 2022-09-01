<?php

namespace App\Http\Controllers\Inventory;

use App\Accounting\ChartofAccount;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreMaterial;
use App\Http\Requests\UpdateMaterial;
use App\Models\Material;
use App\Models\UnitosOfMeasure;
use Illuminate\Http\Request;

class MaterialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $materials = Material::query();
        if (request('search')) {
            $materials->where('name', 'Like', '%' . request('search') . '%');
        }
        $materials = $materials->orderBy('id', 'ASC')->paginate(50);
        return view('inventory.material.index', compact('materials'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $chartof_accounts = ChartofAccount::all();
        $unitsofmeasures = UnitosOfMeasure::all();
        return view('inventory.material.create', compact('chartof_accounts', 'unitsofmeasures'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreMaterial $request)
    {
        $material = new Material();
        $material->name = $request->name;
        $material->item_code = $request->item_code;
        $material->unitos_of_measure_id = $request->unitos_of_measure_id;
        $material->description = $request->description;
        $material->selling_price = $request->selling_price;
        $material->sale_account_id = $request->sale_account_id;
        $material->receivable_account_id = $request->receivable_account_id;
        $material->cost_price = $request->cost_price;
        $material->purchase_account_id = $request->purchase_account_id;
        $material->payable_account_id = $request->payable_account_id;
        $material->opening_inventory_account_id = $request->opening_inventory_account_id;
        $material->closing_inventory_account_id = $request->closing_inventory_account_id;
        $material->closing_stock_account_id = $request->closing_stock_account_id;

        $material->quantity_on_hand = $request->quantity_on_hand;
        $material->as_of_date = $request->as_of_date;
        $material->opening_cost_price = $request->opening_cost_price;

        $material->save();
        return redirect()->route('material.create')
            ->with('success', 'Created successfully.');
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
        $material = Material::findOrFail($id);
        return view('inventory.material.edit', compact('material'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateMaterial $request, $id)
    {
        $material = Material::findOrFail($id);
        $material->name = $request->name;
        $material->update();
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
        $material = Material::findOrFail($id);
        $material->delete();
        return redirect()->route('material.index')
            ->with('success', 'Deleted successfully.');
    }
}
