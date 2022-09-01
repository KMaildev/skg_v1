<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class VariableRequestItem extends Model
{

    protected $fillable = ['variable_asset_id', 'quantity', 'user_id', 'variable_request_info_id', 'created_at', 'updated_at', 'size', 'project_id', 'work_scope_id'];


    public function variable_request_infos_table()
    {
        return $this->belongsTo(VariableRequestInfo::class, 'variable_request_info_id', 'id');
    }

    public function variable_assets_table()
    {
        return $this->belongsTo(VariableAssets::class, 'variable_asset_id', 'id');
    }

    public function variable_qs_team_checks_table()
    {
        return $this->hasMany(VariableQsTeamCheck::class, 'variable_request_item_id', 'id');
    }

    public function qs_team_pass_users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
