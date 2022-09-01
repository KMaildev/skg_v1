<?php

namespace App\Http\Controllers;

use App\Models\Department;
use App\Models\MembersLists;
use App\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;

class MembersListsController extends Controller
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
    public function store(Request $request)
    {
        $user_id = $request->user_id;
        if ($request->hasFile('members_list_file')) {
            foreach ($request->file('members_list_file') as $key => $file) {
                $path = $file->store('public/members_list_file');
                $original_name = $file->getClientOriginalName();

                $insert[$key]['members_list_file'] = $path;
                $insert[$key]['original_name'] = $original_name;

                $insert[$key]['user_id'] = $user_id;
                $insert[$key]['insert_user_id'] = auth()->user()->id;
                $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
                $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
            }
        }
        MembersLists::insert($insert);
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
        $employee = User::findOrFail($id);
        $old_roles = $employee->roles->pluck('id')->toArray();
        $departments = Department::orderBy('title')->get();
        $roles = Role::all();

        $members_lists = MembersLists::where('user_id', $id)->get();
        return view('members_lists.show', compact('employee', 'old_roles', 'departments', 'roles', 'members_lists'));
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
        $member = MembersLists::findOrFail($id);
        $member->delete();
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }
}
