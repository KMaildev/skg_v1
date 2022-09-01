<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class ProjectBq extends Model
{
    public function projects_table()
    {
        return $this->belongsTo(Projects::class, 'project_id', 'id');
    }

    public function users_table()
    {
        return $this->belongsTo(User::class, 'bq_user', 'id');
    }

    public function work_scopes_table()
    {
        return $this->belongsTo(WorkScope::class, 'work_scope_id', 'id');
    }
}
