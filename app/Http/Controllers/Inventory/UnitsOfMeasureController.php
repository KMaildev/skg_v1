<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreUnitsOfMeasure;
use App\Http\Requests\UpdateUnitsOfMeasure;
use App\Models\UnitosOfMeasure;
use Illuminate\Http\Request;

class UnitsOfMeasureController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $unitsofmeasures = UnitosOfMeasure::query();
        if (request('search')) {
            $unitsofmeasures->where('name', 'Like', '%' . request('search') . '%');
        }
        $unitsofmeasures = $unitsofmeasures->orderBy('id', 'ASC')->paginate(50);
        return view('inventory.unitsofmeasure.index', compact('unitsofmeasures'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('inventory.unitsofmeasure.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreUnitsOfMeasure $request)
    {
        $umo = new UnitosOfMeasure();
        $umo->name = $request->name;
        $umo->save();
        return redirect()->route('unitsofmeasure.create')
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
        $umo = UnitosOfMeasure::findOrFail($id);
        return view('inventory.unitsofmeasure.edit', compact('umo'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateUnitsOfMeasure $request, $id)
    {
        $umo = UnitosOfMeasure::findOrFail($id);
        $umo->name = $request->name;
        $umo->update();
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
        $umo = UnitosOfMeasure::findOrFail($id);
        $umo->delete();
        return redirect()->route('unitsofmeasure.index')
            ->with('success', 'Deleted successfully.');
    }
}
