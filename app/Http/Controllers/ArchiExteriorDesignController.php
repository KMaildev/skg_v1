<?php

namespace App\Http\Controllers;

use App\Models\ArchiExteriorDesign;
use App\Models\Projects;
use Illuminate\Http\Request;

class ArchiExteriorDesignController extends Controller
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
    public function create($id = null)
    {
        $id = $id;
        return view('archiexteriordesign.create', compact('id'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $id = $request->project_id;

        if ($request->hasFile('files')) {
            foreach ($request->file('files') as $key => $file) {
                $path = $file->store('public/archiexteriordesign');
                $original_name = $file->getClientOriginalName();

                $insert[$key]['archi_exterior_design_file'] = $path;
                $insert[$key]['original_name'] = $original_name;
                $insert[$key]['project_id'] = $request->project_id;
                $insert[$key]['remark'] = $request->remark;
                $insert[$key]['user_id'] = auth()->user()->id;
                $insert[$key]['upload_date'] = date('Y-m-d');
                $insert[$key]['upload_time'] = date('H:i:s');
                $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
                $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
            }
        }
        ArchiExteriorDesign::insert($insert);

        $project = Projects::findOrFail($id);
        $project->archi_exterior_design_status = 'finished';
        $project->archi_exterior_design_upload_date = date('Y-m-d H:i:s');
        $project->update();
        return redirect()->back()->with('success', 'Uploaded successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $archi_exterior_designs = ArchiExteriorDesign::get()->where('project_id', $id);
        return view('archiexteriordesign.show', compact('archi_exterior_designs'));
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
        $delete = ArchiExteriorDesign::findOrFail($id);
        $delete->delete();
        return redirect()->back()->with('success', 'Deleted successfully.');
    }
}
