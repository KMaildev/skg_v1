<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdditionalWork extends Model
{
    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
