<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class TransferInfo extends Model
{
    public function transfer_infos_user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
