<?php

namespace App\Http\Controllers\Proposal;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreSoilTest;
use App\Models\Projects;
use App\SoilTest;
use Illuminate\Http\Request;

class SoilTestController extends Controller
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
        return view('project.soil_test.create', compact('id'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreSoilTest $request)
    {
        $id = $request->project_id;

        if ($request->hasFile('files')) {
            foreach ($request->file('files') as $key => $file) {
                $path = $file->store('public/floor_plans');
                $original_name = $file->getClientOriginalName();

                $insert[$key]['floor_plan_image'] = $path;
                $insert[$key]['original_name'] = $original_name;

                $insert[$key]['project_id'] = $request->project_id;
                $insert[$key]['remark'] = $request->remark;
                $insert[$key]['user_id'] = auth()->user()->id;
                $insert[$key]['upload_date'] = date('Y-m-d');
                $insert[$key]['upload_time'] = date('H:i:s');
                $insert[$key]['upload_date_time'] = date('Y-m-d H:i:s');
                $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
                $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
            }
            SoilTest::insert($insert);
        }

        $project = Projects::findOrFail($id);
        $project->soil_test_status = 'finished';
        $project->soil_test_date = date('Y-m-d H:i:s');
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
        $floor_plan_images = SoilTest::get()->where('project_id', $id);
        return view('project.soil_test.show', compact('floor_plan_images'));
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
        $delete = SoilTest::findOrFail($id);
        $delete->delete();
        return redirect()->back()->with('success', 'Deleted successfully.');
    }
}
