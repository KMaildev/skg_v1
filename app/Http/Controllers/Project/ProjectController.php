<?php

namespace App\Http\Controllers\Project;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProject;
use App\Models\Customers;
use App\Models\Projects;
use Illuminate\Http\Request;

class ProjectController extends Controller
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
        $customers = Customers::all();
        return view('project.project.create', compact('customers'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreProject $request)
    {
        $project = new Projects();
        $project->customer_id = $request->customer;
        $project->remark = $request->remark;
        $project->project_status = 'Proposal';
        $project->created_date = date('Y-m-d');
        $project->save();
        return redirect()->route('project.create')
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
        $project = Projects::findOrFail($id);
        $floor_plan_images = Projects::find($id)->floor_plans_table;
        $quotationproposals = Projects::find($id)->quotationproposals_table;
        $exterior_design_fees = Projects::find($id)->exterior_design_fees_table;
        $structure_design_fees = Projects::find($id)->structure_design_fees_table;
        $archi_exterior_designs = Projects::find($id)->archi_exterior_designs_table;
        $structure_designs = Projects::find($id)->structure_designs_table;
        $approved_bies = Projects::find($id)->approved_bies_table;
        $permits = Projects::find($id)->permits_table;
        $contracts = Projects::find($id)->contracts_table;
        $processing_files = Projects::find($id)->processing_files_table;
        return view('project.project.show', compact('project', 'floor_plan_images', 'quotationproposals', 'exterior_design_fees', 'structure_design_fees', 'archi_exterior_designs', 'structure_designs', 'approved_bies', 'permits', 'contracts', 'processing_files'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $project = Projects::findOrFail($id);
        return view('project.project.edit', compact('project'));
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
        $project = Projects::findOrFail($id);
        $project->remark = $request->remark;
        $project->update();
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
        $customer = Projects::findOrFail($id);
        $customer->delete();
        return redirect()->back()->with('success', 'Deleted successfully.');
    }


    public function projectsortable(Request $request)
    {
        $posts = Projects::all();

        foreach ($posts as $post) {
            foreach ($request->order as $order) {
                if ($order['id'] == $post->id) {
                    $post->display_order = $order['position'];
                    $post->update();
                }
            }
        }
        return response('Update Successfully.', 200);
    }


    /**
     * Get Ajax Request and restun Data
     *
     * @return \Illuminate\Http\Response
     */
    public function getProjectsAjax($id)
    {
        $project = Projects::findOrFail($id);
        return json_encode($project);
    }
}
