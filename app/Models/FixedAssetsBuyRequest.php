<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class FixedAssetsBuyRequest extends Model
{
    public function fixed_assets_table()
    {
        return $this->belongsTo(FixedAssets::class, 'fixed_asset_id', 'id');
    }

    public function user_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
