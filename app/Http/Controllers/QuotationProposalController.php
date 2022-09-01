<?php

namespace App\Http\Controllers;

use App\Models\Projects;
use App\Models\Quotationproposal;
use Illuminate\Http\Request;

class QuotationProposalController extends Controller
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
        return view('quotationproposal.create', compact('id'));
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
                $path = $file->store('public/quotationproposal');
                $original_name = $file->getClientOriginalName();

                $insert[$key]['quotation_file'] = $path;
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
        Quotationproposal::insert($insert);

        $project = Projects::findOrFail($id);
        $project->quotation_proposal_status = 'finished';
        $project->quotation_proposal_date = date('Y-m-d H:i:s');
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
        $quotationproposal_files = Quotationproposal::get()->where('project_id', $id);
        return view('quotationproposal.show', compact('quotationproposal_files'));
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
        $delete = Quotationproposal::findOrFail($id);
        $delete->delete();
        return redirect()->back()->with('success', 'Deleted successfully.');
    }
}
