<?php

namespace App\Exports;

use App\User as AppUser;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;

class UserExport implements FromView
{
    public function __construct($users)
    {
        $this->users = $users;
    }

    public function view(): View
    {
        return view('employee.export.index', [
            'employees' => $this->users,
        ]);
    }
}
