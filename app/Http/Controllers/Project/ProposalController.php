<?php

namespace App\Http\Controllers\Project;

use App\Http\Controllers\Controller;
use App\Models\Projects;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ProposalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $projects = Projects::where('project_status', 'Proposal')->paginate(30);
        // $projects = Projects::select("*")
        //     ->where("project_status", 'Proposal')
        //     ->orderByAsc("display_order")
        //     ->paginate(30);

        $projects = Projects::orderBy('display_order', 'ASC')->get();

        if (request('search')) {
            $projects = Projects::where('project_status', 'Proposal')->where(function ($query) {
                $query->where('customer_id', 'Like', '%' . request('search') . '%');
            })->paginate(50);
        }
        return view('project.proposal.index', compact('projects'));
    }


    public function grid_view()
    {
        $projects = Projects::orderBy('display_order', 'ASC')->get();
        if (request('search')) {
            $projects = Projects::where('project_status', 'Proposal')->where(function ($query) {
                $query->where('customer_id', 'Like', '%' . request('search') . '%');
            })->paginate(50);
        }
        return view('project.proposal.grid_view', compact('projects'));
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
