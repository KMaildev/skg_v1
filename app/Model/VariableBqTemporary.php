<?php

namespace App\Model;

use App\Models\VariableAssets;
use Illuminate\Database\Eloquent\Model;

class VariableBqTemporary extends Model
{
    public function variable_assets_table()
    {
        return $this->belongsTo(VariableAssets::class, 'variable_asset_id', 'id');
    }
}
