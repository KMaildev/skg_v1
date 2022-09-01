<?php

namespace App\Http\Controllers\Accounting;

use App\Accounting\AccountClassification;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\StoreAccountClassification;
use App\Http\Requests\UpdateAccountClassification;
use Illuminate\Support\Facades\DB;

class AccountClassificationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $account_classifications = AccountClassification::latest()->paginate(20);
        return view('accounting.accountclassification.index', compact('account_classifications'))
            ->with('i', (request()->input('page', 1) - 1) * 20);
    }

    /**
     * Get Ajax Request and restun Data
     *
     * @return \Illuminate\Http\Response
     */
    public function dependentAjax($id)
    {
        $account_classifications = AccountClassification::findOrFail($id);
        return json_encode($account_classifications);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('accounting.accountclassification.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAccountClassification $request)
    {
        $Account = new AccountClassification;
        $Account->name = $request->account_name;
        $Account->ac_code = $request->account_code;
        $Account->save();
        return redirect()->route('accountclassification.create')
            ->with('success', 'Created successfully.');
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
        $account_classifications = AccountClassification::findOrFail($id);
        return view('accounting.accountclassification.edit', compact('account_classifications'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateAccountClassification $request, $id)
    {
        $Account = AccountClassification::findOrFail($id);
        $Account->name = $request->account_name;
        $Account->ac_code = $request->account_code;
        $Account->update();
        return redirect()->back()->with('success', 'Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Account = AccountClassification::findOrFail($id);
        $Account->delete();
        return redirect()->route('accountclassification.index')
            ->with('success', 'Deleted successfully.');
    }
}
