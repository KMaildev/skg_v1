<?php

namespace App\Http\Controllers\Bq;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProjectBq;
use App\Http\Requests\UpdateBqItems;
use App\Models\BqItems;
use App\Models\Customers;
use App\Models\ProjectBq;
use App\Models\Projects;
use App\Models\VariableAssets;
use App\Models\WorkScope;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProjectBqController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $project_bqs = ProjectBq::select('*')
            ->groupBy('project_id')
            ->get();
        return view('bq.project_bq.index', compact('project_bqs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $projects = Projects::all();

        // Variable Assets
        $categories = VariableAssets::select('category')
            ->groupBy('category')
            ->get();
        $variable_assets = VariableAssets::orderBy('display_order', 'ASC')->get();

        $work_scopes = WorkScope::all();
        return view('bq.project_bq.create', compact('projects', 'categories', 'variable_assets', 'work_scopes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreProjectBq $request)
    {
        if ($request->VariableAsset) {
            $project_bq = new ProjectBq();
            $project_bq->project_id = $request->project_id;
            $project_bq->work_scope_id = $request->work_scope_id;
            $project_bq->remark = $request->remark;
            $project_bq->bq_user = auth()->user()->id ?? 0;
            $project_bq->save();
            $project_bq_id = $project_bq->id;

            foreach ($request->VariableAsset as $key => $value) {
                $insert[$key]['variable_asset_id'] = $value['variable_asset_id'];
                $insert[$key]['qty'] = $value['qty'];
                $insert[$key]['rate'] = $value['rate'];
                $insert[$key]['project_bq_id'] = $project_bq_id;
                $insert[$key]['project_id'] = $request->project_id ?? 0;
                $insert[$key]['work_scope_id'] = $request->work_scope_id ?? 0;
                $insert[$key]['remark'] = $request->remark ?? 0;
                $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
                $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
            }
            BqItems::insert($insert);
            return redirect()->back()->with('success', 'Your processing has been completed.');
        } else {
            return redirect()->back()->with('error', 'processing failed.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }


    public function project_bq_show($id = null, $project_id = null, $work_scope_id = null, $overall_status = null)
    {
        $project_bqs = ProjectBq::get()->where('project_id', $project_id);
        $project = ProjectBq::where('project_id', $project_id)->first();
        $work_scope = WorkScope::findOrFail($work_scope_id);

        if ($overall_status == 'true_overall') {
            $bq_items = BqItems::select('*')
                ->selectRaw('sum(qty) as qty, sum(rate) as rate')
                ->groupBy('variable_asset_id')
                ->where('project_id', $project_id)
                ->get();
        } elseif ($overall_status == 'false_overall') {
            $bq_items = BqItems::where(
                [
                    'project_bq_id' => $id,
                    'project_id' => $project_id,
                    'work_scope_id' => $work_scope_id
                ]
            )->get();
        }

        $overall_status = $overall_status;

        // For Edit 
        $categories = VariableAssets::select('category')
            ->groupBy('category')
            ->get();
        $variable_assets = VariableAssets::orderBy('display_order', 'ASC')->get();

        return view('bq.project_bq.show', compact('project_bqs', 'project', 'bq_items', 'work_scope', 'overall_status', 'categories', 'variable_assets'));
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

    public function get_bq_item_edit($id)
    {
        $bq_items = BqItems::findOrFail($id);

        $variable_asset_id = $bq_items->variable_asset_id;
        $variable_asset = VariableAssets::findOrFail($variable_asset_id);

        return response()->json(['data' => $bq_items, 'variable_asset' => $variable_asset]);
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

    public function update_bq_item(UpdateBqItems $request)
    {
        $id = $request->bq_item_id;
        $bq_item = BqItems::findOrFail($id);
        $bq_item->variable_asset_id = $request->variable_asset_id;
        $bq_item->qty = $request->qty;
        $bq_item->rate = $request->rate;
        $bq_item->remark = $request->remark;
        $bq_item->created_at = date('Y-m-d H:i:s');
        $bq_item->updated_at = date('Y-m-d H:i:s');
        $bq_item->update();
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
        $delete = BqItems::findOrFail($id);
        $delete->delete();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }
}
