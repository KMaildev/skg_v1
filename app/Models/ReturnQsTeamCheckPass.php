<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class ReturnQsTeamCheckPass extends Model
{

    public function return_qs_team_check_passes()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

}
