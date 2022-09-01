<?php

namespace App\Http\Controllers\Engineer;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreEngineerReturn;
use App\Models\EngineerReturnInfo;
use App\Models\EngRequestItem;
use App\Models\FixedAssets;
use App\Models\return_item;
use App\Models\ReturnItem;
use App\User;
use Illuminate\Http\Request;
use Symfony\Component\VarDumper\Cloner\Data;

class EngineerReturnController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user_id = auth()->user()->id;
        $returns = EngineerReturnInfo::where('return_user_id', $user_id)->get();
        return view('engineer.return.index', compact('returns'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($customer_id = null)
    {
        $customer_id = $customer_id;
        $user_id = auth()->user()->id;
        $fixed_assets = FixedAssets::all();
        $projects_users = User::where('id', $user_id)->get();
        $request_items = EngRequestItem::where('user_id', $user_id)
            ->where('customer_id', $customer_id)
            ->get();
        return view('engineer.return.create', compact('fixed_assets', 'projects_users', 'request_items', 'customer_id'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreEngineerReturn $request)
    {
        $user_id = auth()->user()->id;
        // for request code
        $variable_assets_count = EngineerReturnInfo::all();
        $code_count = count($variable_assets_count);
        $increment = 'RE-' . sprintf('%06d', $code_count + 1);

        $eng_return = new EngineerReturnInfo();
        $eng_return->return_code = $increment;
        $eng_return->return_date = $request->return_date;
        $eng_return->return_from_id = $request->return_from;
        $eng_return->return_user_id = $user_id;
        $eng_return->save();
        $eng_return_id = $eng_return->id;

        $data = $request->except('_token');
        // Qty Config
        $qty = $data['quantity'] ?? [];
        $remove = array(0, NULL);
        $arr_qty = array_diff($qty, $remove);
        $array_qty = [];
        foreach ($arr_qty as $key => $value) {
            $array_qty[] = $value;
        }

        $fixed_asset_id = count($data['fixed_asset_id'] ?? []);
        if ($fixed_asset_id == 0) {
            return redirect()->back()->with('error', 'You need to check return item.');
        } elseif ($fixed_asset_id) {
            for ($i = 0; $i < $fixed_asset_id; $i++) {
                $save = new ReturnItem();
                $save->fixed_asset_id = $data['fixed_asset_id'][$i];
                $save->quantity = $array_qty[$i] ?? 0;
                $save->user_id = $user_id;
                $save->engineer_return_info_id = $eng_return_id;
                $save->save();
            }
        }

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
        $return_info = EngineerReturnInfo::findOrFail($id);
        return view('engineer.return.show', compact('return_info'));
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
