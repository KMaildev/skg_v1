<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SoilTest extends Model
{
    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
