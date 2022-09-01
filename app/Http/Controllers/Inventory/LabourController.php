<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreLabour;
use App\Http\Requests\UpdateLabour;
use App\Models\Labour;
use Illuminate\Http\Request;

class LabourController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $labours = Labour::query();
        if (request('search')) {
            $labours->where('name', 'Like', '%' . request('search') . '%');
        }
        $labours = $labours->orderBy('id', 'ASC')->paginate(50);
        return view('inventory.labour.index', compact('labours'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('inventory.labour.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreLabour $request)
    {
        $labour = new Labour();
        $labour->name = $request->name;
        $labour->save();
        return redirect()->route('labour.create')
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
        $labour = Labour::findOrFail($id);
        return view('inventory.labour.edit', compact('labour'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateLabour $request, $id)
    {
        $labour = Labour::findOrFail($id);
        $labour->name = $request->name;
        $labour->update();
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
        $labour = Labour::findOrFail($id);
        $labour->delete();
        return redirect()->route('labour.index')
            ->with('success', 'Deleted successfully.');
    }
}
