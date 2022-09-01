<?php

namespace App\Http\Controllers\Activity;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Spatie\Activitylog\Models\Activity;

class ActivityLogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employees = User::all();
        return view('activitylog.login_history', compact('employees'));
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $activities_logs = Activity::with('causer')->where('log_name', $id)->get()->toArray();
        return view('activitylog.index', compact('activities_logs'));
    }
}
