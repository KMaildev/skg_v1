<?php

namespace App\Http\Controllers\Engineer;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreVariableRequestInfo;
use App\Models\FixedAssets;
use App\Models\Projects;
use App\Models\VariableAssets;
use App\Models\VariableAssetsTemporary;
use App\Models\VariableRequestInfo;
use App\Models\VariableRequestItem;
use App\Models\WorkScope;
use App\User;
use Illuminate\Http\Request;

class EngineerVariableAssetsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user_id = auth()->user()->id;
        $eng_request_infos = VariableRequestInfo::with('variable_request_items_table')->where('engineer_id', $user_id)->get();
        return view('engineer.variable_assets.index', compact('eng_request_infos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $request_infos = VariableRequestInfo::all();
        $variable_assets = VariableAssets::all();
        $user_id = auth()->user()->id;
        $projects_users = User::where('id', $user_id)->get();

        // Variable Assets
        $categories = VariableAssets::select('category')
            ->groupBy('category')
            ->get();
        $variable_assets = VariableAssets::orderBy('display_order', 'ASC')->get();

        $work_scopes = WorkScope::all();
        return view('engineer.variable_assets.create', compact('variable_assets', 'projects_users', 'request_infos', 'categories', 'variable_assets', 'work_scopes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVariableRequestInfo $request)
    {
        $user_id = auth()->user()->id;

        // for request code
        $variable_assets_count = VariableRequestInfo::all();
        $code_count = count($variable_assets_count);
        $increment = 'VR-' . sprintf('%06d', $code_count + 1);

        $variable_asset = new VariableRequestInfo();
        $variable_asset->code = $increment;
        $variable_asset->date = $request->date;
        $variable_asset->need_date = $request->need_date;
        $variable_asset->customer_id = $request->customer_id;
        $variable_asset->engineer_id = $user_id;

        // Project Id 
        $customer_id = $request->customer_id;
        $project = Projects::where('customer_id', $customer_id)->first();
        $project_id = $project->id;
        $variable_asset->project_id = $project_id;

        // Work Scope Id 
        $work_scope_id = $request->work_scope_id;
        $work_scope = WorkScope::findOrFail($work_scope_id);
        $variable_asset->work_scope = $work_scope->title;
        $variable_asset->work_scope_id = $request->work_scope_id;

        $variable_asset->save();
        $variable_asset_id = $variable_asset->id;
        $project_id = $variable_asset->project_id;
        $work_scope_id = $variable_asset->work_scope_id;

        foreach ($request->variable_asset_id as $key => $variable_asset) {
            VariableRequestItem::create([
                'variable_asset_id' => $variable_asset,
                'quantity' => $request->quantity[$key],
                'size' => '',
                'user_id' => $user_id,
                'variable_request_info_id' => $variable_asset_id,
                'project_id' => $project_id,
                'work_scope_id' => $work_scope_id,
            ]);
        }
        VariableAssetsTemporary::where('session_id', session()->getId())->delete();
        return redirect()->back()->with('success', 'Your processing has been completed.');
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
        return view('engineer.variable_assets.show', compact('eng_request_items'));
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
