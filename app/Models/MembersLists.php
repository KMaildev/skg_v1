<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class MembersLists extends Model
{
    public function users_table()
    {
        return $this->belongsTo(User::class, 'insert_user_id', 'id');
    }
}
