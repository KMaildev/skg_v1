<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class UnusableFixedAssets extends Model
{
    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function fixed_assets_table()
    {
        return $this->belongsTo(FixedAssets::class, 'fixed_asset_id', 'id');
    }
}
