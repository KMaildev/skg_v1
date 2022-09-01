<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class FixedAssetsPurchase extends Model
{
    protected $fillable = ['reference', 'item_name', 'unit', 'fixed_asset_id', 'qty', 'price', 'desciption', 'order_date', 'user_id'];


    public function fixed_assets_table()
    {
        return $this->belongsTo(FixedAssets::class, 'fixed_asset_id', 'id');
    }


    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
