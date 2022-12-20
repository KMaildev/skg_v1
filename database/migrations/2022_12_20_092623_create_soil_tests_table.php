<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSoilTestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('soil_tests', function (Blueprint $table) {
            $table->increments('id');
            $table->text('floor_plan_image')->nullable();
            $table->text('original_name')->nullable();
            $table->text('project_id')->nullable();
            $table->text('remark')->nullable();
            $table->text('user_id')->nullable();
            $table->text('upload_date')->nullable();
            $table->text('upload_time')->nullable();
            $table->text('upload_date_time')->nullable();
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
        Schema::dropIfExists('soil_tests');
    }
}
