<?php

namespace App;

use App\Models\Department;
use App\Models\Projects;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use Notifiable, HasRoles;

    protected $guarded = [];

    use LogsActivity;
    protected static $logName = 'users_log';
    protected static $logAttributes = [
        'name',
        'email',
        'phone',
        'created_at',
        'updated_at',
        'employee_id',
        'phone',
        'nrc_number',
        'gender',
        'address',
        'department_id',
        'contact_person',
        'emergency_contact',
        'join_date',
        'employment_type',
        'last_login_at',
        'last_login_ip',
        'agent',
    ];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'last_login_at',
        'last_login_ip',
        'agent',
        'is_banned',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function department()
    {
        return $this->belongsTo(Department::class, 'department_id', 'id');
    }

    public function projects()
    {
        return $this->belongsToMany(Projects::class, 'projects_users');
    }
}
