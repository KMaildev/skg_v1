<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class VariableLogisticsTeamSend extends Model
{
    public function main_warehouses_table()
    {
        return $this->belongsTo(MainWarehouse::class, 'transfer_from_warehouse_id', 'id');
    }

    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id')->latest();
    }
}
