<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Structure_design_fees extends Model
{
    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
