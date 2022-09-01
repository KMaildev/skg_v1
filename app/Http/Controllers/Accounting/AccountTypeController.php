<?php

namespace App\Http\Controllers\Accounting;

use App\Accounting\AccountClassification;
use App\Accounting\AccountType;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\StoreAccountType;
use App\Http\Requests\UpdateAccountType;

class AccountTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $account_types = AccountType::latest()->paginate(20);
        return view('accounting.accounttype.index', compact('account_types'))
            ->with('i', (request()->input('page', 1) - 1) * 20);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $account_classifications = AccountClassification::orderBy('id')->get();
        return view('accounting.accounttype.create', compact('account_classifications'));
    }

    public function dependentAjax($id)
    {
        $account = AccountType::findOrFail($id);
        return json_encode($account);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAccountType $request)
    {
        $AccountType = new AccountType;

        $AccountType->number = $request->account_number;
        $AccountType->description = $request->description;
        $AccountType->account_classification_id = $request->account_type;
        $AccountType->financial_statement = $request->financial_statement;
        $AccountType->save();
        return redirect()->route('accounttype.create')
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
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $account_types = AccountType::findOrFail($id);
        $account_classifications = AccountClassification::orderBy('name')->get();
        return view('accounting.accounttype.edit', compact('account_types', 'account_classifications'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateAccountType $request, $id)
    {
        $AccountType = AccountType::findOrFail($id);
        $AccountType->number = $request->account_number;
        $AccountType->description = $request->description;
        $AccountType->account_classification_id = $request->account_type;
        $AccountType->financial_statement = $request->financial_statement;
        $AccountType->update();
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
        $AccountType = AccountType::findOrFail($id);
        $AccountType->delete();
        return redirect()->route('accounttype.index')
            ->with('success', 'Deleted successfully.');
    }
}
