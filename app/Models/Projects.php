<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Projects extends Model
{
    protected $guarded = [];

    public function customer_table()
    {
        return $this->belongsTo(Customers::class, 'customer_id', 'id');
    }

    public function floor_plans_table()
    {
        return $this->hasMany(FloorPlan::class, 'project_id', 'id');
    }

    public function quotationproposals_table()
    {
        return $this->hasMany(Quotationproposal::class, 'project_id', 'id');
    }

    public function exterior_design_fees_table()
    {
        return $this->hasMany(Exterior_design_fees::class, 'project_id', 'id');
    }

    public function structure_design_fees_table()
    {
        return $this->hasMany(Structure_design_fees::class, 'project_id', 'id');
    }

    public function archi_exterior_designs_table()
    {
        return $this->hasMany(ArchiExteriorDesign::class, 'project_id', 'id');
    }

    public function structure_designs_table()
    {
        return $this->hasMany(StructureDesign::class, 'project_id', 'id');
    }

    public function approved_bies_table()
    {
        return $this->hasMany(ApprovedBy::class, 'project_id', 'id');
    }


    public function permits_table()
    {
        return $this->hasMany(Permit::class, 'project_id', 'id');
    }


    public function contracts_table()
    {
        return $this->hasMany(Contract::class, 'project_id', 'id');
    }

    public function processing_files_table()
    {
        return $this->hasMany(ProcessingFile::class, 'project_id', 'id');
    }

    public function users()
    {
        return $this->belongsToMany(User::class, 'projects_users');
    }
}
