<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class Customers extends Model
{
    use LogsActivity;
    protected static $logName = 'customers_log';
    protected static $logAttributes = ['name', 'site_location', 'phone', 'project_code', 'address', 'created_at', 'updated_at'];
}
