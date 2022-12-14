<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class FixedAssets extends Model
{
    public function eng_request_items_table()
    {
        return $this->hasMany(EngRequestItem::class, 'fixed_asset_id', 'id');
    }

    public function qs_team_check_passes_table()
    {
        return $this->hasMany(QsTeamCheckPass::class, 'fixed_asset_id', 'id');
    }

    public function return_qs_team_check_passes_table()
    {
        return $this->hasMany(ReturnQsTeamCheckPass::class, 'fixed_asset_id', 'id');
    }

    public function return_items_table()
    {
        return $this->hasMany(ReturnItem::class, 'fixed_asset_id', 'id');
    }

    public function fixed_assets_buy_requests_table()
    {
        return $this->hasMany(FixedAssetsBuyRequest::class, 'fixed_asset_id', 'id');
    }

    public function unusable_fixed_assets_table()
    {
        return $this->hasMany(UnusableFixedAssets::class, 'fixed_asset_id', 'id');
    }
}
