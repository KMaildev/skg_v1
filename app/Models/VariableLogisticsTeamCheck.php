<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class VariableLogisticsTeamCheck extends Model
{
    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id')->latest();
    }

    public function variable_assets_table()
    {
        return $this->belongsTo(VariableAssets::class, 'variable_asset_id', 'id');
    }
}
