<?php

namespace App\Models;

use App\Http\Controllers\Inventory\QsTeamCheckController;
use App\User;
use Illuminate\Database\Eloquent\Model;

class RequestInfo extends Model
{
    public function projects_table()
    {
        return $this->belongsTo(Projects::class, 'project_id', 'id');
    }

    public function customer_table()
    {
        return $this->belongsTo(Customers::class, 'customer_id', 'id');
    }

    public function eng_request_items_table()
    {
        return $this->hasMany(EngRequestItem::class);
    }

    public function user_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function main_warehouse_table()
    {
        return $this->belongsTo(MainWarehouse::class, 'main_warehouse_id', 'id');
    }


    public function request_infos_table()
    {
        return $this->belongsTo(RequestInfo::class, 'other_site_id', 'id');
    }


    public function request_infos_table_another()
    {
        return $this->belongsTo(RequestInfo::class, 'id', 'other_site_id');
    }


    public function qs_team_check_passes_table()
    {
        return $this->belongsTo(QsTeamCheckPass::class, 'id', 'request_info_id');
    }


    public function accept_reject_statuses_table()
    {
        return $this->belongsTo(AcceptRejectStatus::class, 'id', 'request_info_id')->latest();
    }

    public function transfer_infos_table()
    {
        return $this->belongsTo(TransferInfo::class, 'id', 'request_info_id')->latest();
    }
}
