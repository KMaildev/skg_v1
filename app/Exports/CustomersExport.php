<?php

namespace App\Exports;

use App\Models\Customers;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;

class CustomersExport implements FromView
{

    public function __construct($customers)
    {
        $this->customers = $customers;
    }

    public function view(): View
    {
        return view('customers.export.index', [
            'customers' => $this->customers,
        ]);
    }
}
