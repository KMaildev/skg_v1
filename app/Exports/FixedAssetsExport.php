<?php

namespace App\Exports;

use App\Models\FixedAssets;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;

class FixedAssetsExport implements FromView
{

    public function __construct($fixed_assets)
    {
        $this->fixed_assets = $fixed_assets;
    }

    public function view(): View
    {
        return view('fixed_assets.export.index', [
            'fixed_assets' => $this->fixed_assets,
        ]);
    }
}
