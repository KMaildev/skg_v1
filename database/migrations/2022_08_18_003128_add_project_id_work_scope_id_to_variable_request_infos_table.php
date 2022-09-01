<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddProjectIdWorkScopeIdToVariableRequestInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('variable_request_infos', function (Blueprint $table) {
            $table->integer('project_id')->nullable();
            $table->integer('work_scope_id')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('variable_request_infos', function (Blueprint $table) {
            //
        });
    }
}
