<?php

namespace App\Http\Controllers\hr;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProjectsUsers;
use App\Http\Requests\UpdateProjectsUsers;
use App\Models\Customers;
use App\Models\Projects;
use App\Models\ProjectsUsers;
use App\User;
use Illuminate\Http\Request;

class EngineerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $projects_users = User::where('department_id', 9)->get();
        return view('hr.engineer.index', compact('projects_users'));
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
    public function store(StoreProjectsUsers $request)
    {
        $project = new ProjectsUsers();
        $project->projects_id = $request->project_id;
        $project->user_id = $request->engineering_id;
        $project->status = '';
        $project->save();
        return redirect()->back()->with('success', 'Added.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $projects_users = ProjectsUsers::get()->where('user_id', $id);
        return view('hr.engineer.show', compact('projects_users'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $customers = Customers::all();
        $projects = Projects::all();
        $employees = User::get()->where('id', $id);
        $projects_users = ProjectsUsers::findOrFail($id);
        return view('hr.engineer.edit_project', compact('employees', 'customers', 'projects', 'projects_users'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function add_project($id)
    {
        $customers = Customers::all();
        $projects = Projects::all();
        $employees = User::findOrFail($id);
        return view('hr.engineer.add_project', compact('employees', 'customers', 'projects'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateProjectsUsers $request, $id)
    {
        $project = ProjectsUsers::findOrFail($id);
        $project->projects_id = $request->project_id;
        $project->user_id = $request->engineering_id;
        $project->status = '';
        $project->update();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $project_user = ProjectsUsers::findOrFail($id);
        $project_user->delete();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }


    /**
     * Get Ajax Request and restun Data
     *
     * @return \Illuminate\Http\Response
     */
    public function projectsUsersAjax($id)
    {
        $projects_users_ajax = ProjectsUsers::findOrFail($id);
        return json_encode($projects_users_ajax);
    }
}
