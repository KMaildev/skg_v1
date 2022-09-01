<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VariableAssetsTemporary extends Model
{
    public function variable_assets_table()
    {
        return $this->belongsTo(VariableAssets::class, 'variable_asset_id', 'id');
    }
}
