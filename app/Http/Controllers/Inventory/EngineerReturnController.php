<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Models\EngineerReturnInfo;
use App\User;
use Illuminate\Http\Request;

class EngineerReturnController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $users = User::all();
        $returns = EngineerReturnInfo::query();

        $keyword = $request->keyword;
        if ($request->keyword) {
            $returns->where('return_code', 'Like', '%' . $keyword . '%');
            $returns->orWhere('return_date', 'Like', '%' . $keyword . '%');
        }
        if ($request->user_id) {
            $returns->where('return_user_id', 'Like', '%' . $request->user_id . '%');
        }
        $returns = $returns->orderBy('id', 'ASC')->get();

        return view('inventory.return.index', compact('returns', 'users'));
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
        $return_info = EngineerReturnInfo::findOrFail($id);
        return view('inventory.return.show', compact('return_info'));
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
