<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class ReturnItem extends Model
{

    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function engineer_return_infos_table()
    {
        return $this->belongsTo(EngineerReturnInfo::class, 'engineer_return_info_id', 'id');
    }

    public function fixed_assets_table()
    {
        return $this->belongsTo(FixedAssets::class, 'fixed_asset_id', 'id');
    }

    public function return_qs_team_check_passes_table()
    {
        return $this->belongsTo(ReturnQsTeamCheckPass::class, 'id', 'return_item_id');
    }
}
