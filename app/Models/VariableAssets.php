<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VariableAssets extends Model
{
    public function variable_request_items_table()
    {
        return $this->hasMany(VariableRequestItem::class, 'variable_asset_id', 'id');
    }
}
