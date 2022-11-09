<?php

namespace App\Exports;

use App\Models\VariableAssets;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;

class VariableAssetsExport implements FromView
{
    public function __construct($variable_assets, $categories)
    {
        $this->variable_assets = $variable_assets;
        $this->categories = $categories;
    }

    public function view(): View
    {
        return view('inventory.variable_assets.export.index', [
            'variable_assets' => $this->variable_assets,
            'categories' => $this->categories,
        ]);
    }
}
