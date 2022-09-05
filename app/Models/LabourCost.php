<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LabourCost extends Model
{
    protected $fillable = ['project_id', 'particular', 'unit', 'quantity', 'rate', 'per', 'user_id', 'created_at', 'updated_at'];
}
