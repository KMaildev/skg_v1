<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class QsTeamCheckPass extends Model
{
    public function qs_team_check_passes_user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
