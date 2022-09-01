<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class EngRequestItem extends Model
{

    protected $fillable = ['fixed_asset_id', 'quantity', 'user_id', 'project_id', 'request_info_id', 'customer_id', 'created_at', 'updated_at'];


    public function fixed_assets_table()
    {
        return $this->belongsTo(FixedAssets::class, 'fixed_asset_id', 'id');
    }

    public function customer_table()
    {
        return $this->belongsTo(Customers::class, 'customer_id', 'id');
    }

    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function qs_team_check_passes_table()
    {
        return $this->hasMany(QsTeamCheckPass::class, 'eng_request_item_id', 'id');
    }


    public function another_qs_team_check_passes_table()
    {
        return $this->belongsTo(QsTeamCheckPass::class, 'id', 'eng_request_item_id');
    }

    public function qs_team_check_passes_warehouse_plan()
    {
        return $this->belongsTo(QsTeamCheckPass::class, 'id', 'eng_request_item_id');
    }

    public function request_info_table()
    {
        return $this->belongsTo(RequestInfo::class, 'request_info_id', 'id');
    }


    // For Transferhistory











}
