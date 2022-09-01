<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class FloorPlan extends Model
{

    // use LogsActivity;
    // protected static $logName = 'floor_plans_log';
    // protected static $logAttributes = ['project_id', 'user_id', 'original_name', 'remark', 'created_at', 'updated_at'];

    protected $table = "floor_plans";

    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
