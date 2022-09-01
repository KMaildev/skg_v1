<?php

namespace App\Http\Controllers\ManageVariableRequest;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreVariableFinancePaymentSlips;
use App\Models\VariableFinancePaymentSlip;
use App\Models\VariableRequestInfo;
use Illuminate\Http\Request;

class VariableFinancePaymentSlipController extends Controller
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
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVariableFinancePaymentSlips $request)
    {
        $id = $request->variable_request_info_id;

        if ($request->hasFile('files')) {
            foreach ($request->file('files') as $key => $file) {
                $path = $file->store('public/variable_finance_payment_slip');
                $original_name = $file->getClientOriginalName();
                $insert[$key]['finance_payment_slip_file'] = $path;
                $insert[$key]['original_name'] = $original_name;
                $insert[$key]['variable_request_info_id'] = $request->variable_request_info_id;
                $insert[$key]['finance_payment_slip_upload'] = 'finished';
                $insert[$key]['finance_payment_slip_upload_date'] = date('Y-m-d H:i:sa');
                $insert[$key]['remark'] = $request->remark;
                $insert[$key]['user_id'] = auth()->user()->id;
                $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
                $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
            }
        }

        VariableFinancePaymentSlip::insert($insert);

        $request_info = VariableRequestInfo::findOrFail($id);
        $request_info->finance_payment_slip_upload = 'finished';
        $request_info->finance_payment_slip_upload_date = date('Y-m-d H:i:sa');
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
        $finance_payment_slips = VariableFinancePaymentSlip::get()->where('variable_request_info_id', $id);
        return view('variable_assets_request.finance_payment_slip.show', compact('finance_payment_slips'));
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


    public function payment_slip_upload($id = null)
    {
        $request_info = VariableRequestInfo::findOrFail($id);
        return view('variable_assets_request.finance_payment_slip.create', compact('request_info'));
    }
}
