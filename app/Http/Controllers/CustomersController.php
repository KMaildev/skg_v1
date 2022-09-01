<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCustomer;
use App\Http\Requests\UpdateCustomer;
use App\Models\Customers;
use App\Models\Projects;
use Illuminate\Http\Request;

class CustomersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $customers = Customers::query();
        if (request('search')) {
            $customers->where('name', 'Like', '%' . request('search') . '%');
        }
        $customers = $customers->orderBy('id', 'ASC')->paginate(50);
        return view('customers.index', compact('customers'));
    }

    public function dependentAjax($id)
    {
        $customer = Customers::findOrFail($id);
        return json_encode($customer);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('customers.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCustomer $request)
    {
        $customer = new Customers();
        $customer->name = $request->name;
        $customer->phone = $request->phone;
        $customer->email = $request->email;
        $customer->address = $request->address;
        $customer->site_location = $request->site_location;
        $customer->building_area = $request->building_area;
        $customer->construction_type = $request->construction_type;
        $customer->job_scope = $request->job_scope;
        $customer->storeyed = $request->storeyed;
        $customer->project_code = $request->project_code;
        $customer->remark = $request->remark;
        $customer->created_date = date('Y-m-d');
        $customer->save();
        return redirect()->route('customers.create')
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
        $customer = Customers::findOrFail($id);
        return view('customers.edit', compact('customer'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCustomer $request, $id)
    {
        $customer = Customers::findOrFail($id);
        $customer->name = $request->name;
        $customer->phone = $request->phone;
        $customer->email = $request->email;
        $customer->address = $request->address;
        $customer->site_location = $request->site_location;
        $customer->building_area = $request->building_area;
        $customer->construction_type = $request->construction_type;
        $customer->job_scope = $request->job_scope;
        $customer->storeyed = $request->storeyed;
        $customer->project_code = $request->project_code;
        $customer->remark = $request->remark;
        $customer->update();
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
        $customer = Customers::findOrFail($id);
        $customer->delete();
        Projects::where('customer_id', $id)->delete();

        return redirect()->route('customers.index')
            ->with('success', 'Deleted successfully.');
    }
}
