<?php

namespace App\Http\Controllers\ManageVariableRequest;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreVariableActualVouchers;
use App\Models\VariableActualVoucher;
use App\Models\VariableRequestInfo;
use Illuminate\Http\Request;

class VariableActualVoucherController extends Controller
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
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVariableActualVouchers $request)
    {
        $id = $request->variable_request_info_id;

        if ($request->hasFile('files')) {
            foreach ($request->file('files') as $key => $file) {
                $path = $file->store('public/actual_voucher');
                $original_name = $file->getClientOriginalName();

                $insert[$key]['actual_voucher_file'] = $path;
                $insert[$key]['original_name'] = $original_name;
                $insert[$key]['variable_request_info_id'] = $request->variable_request_info_id;
                $insert[$key]['actual_voucher_upload_status'] = 'finished';
                $insert[$key]['actual_voucher_upload_date'] = date('Y-m-d H:i:sa');
                $insert[$key]['remark'] = $request->remark;
                $insert[$key]['user_id'] = auth()->user()->id;
                $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
                $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
            }
        }

        VariableActualVoucher::insert($insert);

        $request_info = VariableRequestInfo::findOrFail($id);
        $request_info->actual_voucher_upload = 'finished';
        $request_info->actual_voucher_upload_date = date('Y-m-d H:i:sa');
        $request_info->update();
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
        $variable_actual_vouchers = VariableActualVoucher::get()->where('variable_request_info_id', $id);
        return view('variable_assets_request.variable_actual_voucher.show', compact('variable_actual_vouchers'));
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

    public function actual_voucher_upload($id = null)
    {
        $request_info = VariableRequestInfo::findOrFail($id);
        return view('variable_assets_request.variable_actual_voucher.create', compact('request_info'));
    }
}
