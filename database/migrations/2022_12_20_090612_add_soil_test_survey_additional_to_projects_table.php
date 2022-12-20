<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSoilTestSurveyAdditionalToProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('projects', function (Blueprint $table) {
            $table->text('additional_work_status')->nullable();
            $table->text('additional_work_date')->nullable();

            $table->text('surver_status')->nullable();
            $table->text('surver_date')->nullable();

            $table->text('soil_test_status')->nullable();
            $table->text('soil_test_date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('projects', function (Blueprint $table) {
            //
        });
    }
}
