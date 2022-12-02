<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class FixedAssetsVoucher extends Model
{
    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function fixed_assets_buy_requests_table()
    {
        return $this->belongsTo(FixedAssetsBuyRequest::class, 'fixed_assets_buy_request_id', 'id');
    }
}
