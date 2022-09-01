<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class ProjectsUsers extends Model
{
    protected $guarded= []; 

    public function projects_table()
    {
        return $this->belongsTo(Projects::class, 'projects_id', 'id');
    }

    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
