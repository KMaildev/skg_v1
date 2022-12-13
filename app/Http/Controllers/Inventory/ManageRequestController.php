<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Models\FixedAssets;
use App\Models\RequestInfo;
use App\User;
use Illuminate\Http\Request;

class ManageRequestController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $users = User::all();
        $eng_request_infos = RequestInfo::with('eng_request_items_table')
            // ->where('received_by_engineer_status', NULL)
            // ->where('request_status', NULL)
            ->orderBy('id', 'DESC')->get();

        if ($request->user_id) {
            $eng_request_infos = RequestInfo::with('eng_request_items_table')
                // ->where('received_by_engineer_status', NULL)
                // ->orWhere('request_status', NULL)
                ->where('user_id', $request->user_id)
                ->orderBy('id', 'DESC')->get();
        }

        if ($request->q) {
            $eng_request_infos = RequestInfo::with('eng_request_items_table', 'user_table')
                ->where('request_code', 'LIKE', "%{$request->q}%")
                ->orWhere('work_scope', 'LIKE', "%{$request->q}%")
                ->get();
        }

        return view('inventory.manage_request.index', compact('eng_request_infos', 'users'));
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function fixed_assets_completed_list(Request $request)
    {
        $users = User::all();
        $eng_request_infos = RequestInfo::with('eng_request_items_table')
            ->where('received_by_engineer_status', 'received')
            ->orderBy('id', 'DESC')->get();

        if ($request->user_id) {
            $eng_request_infos = RequestInfo::with('eng_request_items_table')
                ->where('user_id', $request->user_id)
                ->orderBy('id', 'DESC')->get();
        }

        if ($request->q) {
            $eng_request_infos = RequestInfo::with('eng_request_items_table', 'user_table')
                ->where('received_by_engineer_status', 'received')
                ->where('request_code', 'LIKE', "%{$request->q}%")
                ->orWhere('work_scope', 'LIKE', "%{$request->q}%")
                ->get();
        }

        return view('inventory.manage_request.completed.index', compact('eng_request_infos', 'users'));
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function fixed_assets_reject_list(Request $request)
    {
        $users = User::all();
        $eng_request_infos = RequestInfo::with('eng_request_items_table')
            ->where('accept_reject_status', 'reject')
            ->orderBy('id', 'DESC')->get();

        if ($request->user_id) {
            $eng_request_infos = RequestInfo::with('eng_request_items_table')
                ->where('user_id', $request->user_id)
                ->where('accept_reject_status', 'reject')
                ->orderBy('id', 'DESC')->get();
        }

        if ($request->q) {
            $eng_request_infos = RequestInfo::with('eng_request_items_table', 'user_table')
                ->where('accept_reject_status', 'reject')
                ->where('request_code', 'LIKE', "%{$request->q}%")
                ->orWhere('work_scope', 'LIKE', "%{$request->q}%")
                ->get();
        }

        return view('inventory.manage_request.reject.index', compact('eng_request_infos', 'users'));
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
        $eng_request_items = RequestInfo::with('eng_request_items_table')->get()->where('id', $id);
        return view('inventory.manage_request.show', compact('eng_request_items'));
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
    public function fixed_assets_status_completed($id)
    {
        $request_info = RequestInfo::findOrFail($id);
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
    public function fixed_assets_status_incompleted($id)
    {
        $request_info = RequestInfo::findOrFail($id);
        $request_info->request_status = NULL;
        $request_info->request_status_date = date('Y-m-d H:i:sa');
        $request_info->request_status_user = auth()->user()->id ?? 0;
        $request_info->update();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }
}
