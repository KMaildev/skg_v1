<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('customer_id');
            $table->text('project_code')->nullable();

            $table->text('floor_plan_status')->nullable();
            $table->text('floor_plan_upload_date')->nullable();

            $table->text('quotation_proposal_status')->nullable();
            $table->text('quotation_proposal_date')->nullable();

            $table->text('exterior_design_fees')->nullable();
            $table->text('structure_design_fees')->nullable();

            $table->text('archi_exterior_design_status')->nullable();
            $table->text('archi_exterior_design_upload_date')->nullable();

            $table->text('structure_design_status')->nullable();
            $table->text('structure_design_upload_date')->nullable();

            $table->text('created_date')->nullable();
            $table->text('remark')->nullable();
            $table->text('project_status')->nullable();


            $table->text('permit_status')->nullable();
            $table->text('permit_upload_date')->nullable();

            $table->text('contract_status')->nullable();
            $table->text('contract_upload_date')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('projects');
    }
}
