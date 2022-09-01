<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BqItems extends Model
{
    public function variable_assets_table()
    {
        return $this->belongsTo(VariableAssets::class, 'variable_asset_id', 'id');
    }

    public function variable_request_items_table()
    {
        return $this->hasMany(VariableRequestItem::class, 'variable_asset_id', 'variable_asset_id');
    }
}
