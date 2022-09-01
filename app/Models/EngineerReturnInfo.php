<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class EngineerReturnInfo extends Model
{
    public function customer_table()
    {
        return $this->belongsTo(Customers::class, 'return_from_id', 'id');
    }

    public function return_items_table()
    {
        return $this->hasMany(ReturnItem::class);
    }

    public function user_table()
    {
        return $this->belongsTo(User::class, 'return_user_id', 'id');
    }

    public function fixed_assets_table()
    {
        return $this->belongsTo(FixedAssets::class, 'fixed_asset_id', 'id');
    }

    public function return_transfer_info_table()
    {
        return $this->belongsTo(ReturnTransferInfo::class, 'id', 'engineer_return_info_id');
    }


    public function return_qs_team_check_passes_table()
    {
        return $this->belongsTo(ReturnQsTeamCheckPass::class, 'id', 'engineer_return_info_id')->latest();
    }

    public function return_transfer_infos_another_table()
    {
        return $this->belongsTo(ReturnTransferInfo::class, 'id', 'engineer_return_info_id')->latest();;
    }

    public function received_by_store_managers_table()
    {
        return $this->belongsTo(ReceivedByStoreManager::class, 'id', 'engineer_return_infos_id')->latest();;
    }
}
