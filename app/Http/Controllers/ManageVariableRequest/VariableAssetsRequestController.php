<?php

namespace App\Http\Controllers\ManageVariableRequest;

use App\Http\Controllers\Controller;
use App\Models\VariableRequestInfo;
use App\User;
use Illuminate\Http\Request;

class VariableAssetsRequestController extends Controller
{


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $engineers = User::where('department_id', 9)->get();
        $eng_request_infos = VariableRequestInfo::with('variable_request_items_table')
            ->orderBy('id', 'DESC')
            ->get()
            ->where('request_status', NULL);

        if (request('search')) {
            $search = request('search');
            $eng_request_infos = VariableRequestInfo::whereHas('customer_table', function ($q) use ($search) {
                $q->where('code', 'LIKE', '%' . $search . '%');
                $q->orWhere('work_scope', 'LIKE', '%' . $search . '%');
                $q->orWhere('name', 'LIKE', '%' . $search . '%');
                $q->orWhere('site_location', 'LIKE', '%' . $search . '%');
                $q->orWhere('project_code', 'LIKE', '%' . $search . '%');
            })->where('request_status', NULL)->get();
        }

        if (request('from_date') && request('to_date')) {
            $from_date = request('from_date');
            $to_date = request('to_date');
            $eng_request_infos = VariableRequestInfo::whereBetween('date', [$from_date, $to_date])->where('request_status', NULL)->get();
        }

        if (request('engineer_id')) {
            $engineer_id = request('engineer_id');
            $eng_request_infos = VariableRequestInfo::where('engineer_id', $engineer_id)->where('request_status', NULL)->get();
        }

        return view('variable_assets_request.index', compact('eng_request_infos', 'engineers'));
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function variable_completed_list()
    {
        $eng_request_infos = VariableRequestInfo::with('variable_request_items_table')->orderBy('id', 'DESC')->get()->where('request_status', 'completed');
        return view('variable_assets_request.completed.index', compact('eng_request_infos'));
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function variable_reject_list()
    {
        $eng_request_infos = VariableRequestInfo::with('variable_request_items_table')->orderBy('id', 'DESC')->get()->where('accept_reject_status', 'reject');
        return view('variable_assets_request.reject.index', compact('eng_request_infos'));
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
        $eng_request_items = VariableRequestInfo::with('variable_request_items_table')->get()->where('id', $id);
        return view('variable_assets_request.show', compact('eng_request_items'));
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


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function change_request_status_completed($id)
    {
        $request_info = VariableRequestInfo::findOrFail($id);
        $request_info->request_status = 'completed';
        $request_info->request_status_date = date('Y-m-d H:i:sa');
        $request_info->request_status_user = auth()->user()->id ?? 0;
        $request_info->update();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function change_request_status_incompleted($id)
    {
        $request_info = VariableRequestInfo::findOrFail($id);
        $request_info->request_status = NULL;
        $request_info->request_status_date = date('Y-m-d H:i:sa');
        $request_info->request_status_user = auth()->user()->id ?? 0;
        $request_info->update();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }
}
