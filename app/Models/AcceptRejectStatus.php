<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class AcceptRejectStatus extends Model
{
    public function accept_reject_statuse_user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
