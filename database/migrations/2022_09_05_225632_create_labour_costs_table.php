<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLabourCostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('labour_costs', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('project_id')->nullable();
            $table->text('particular')->nullable();
            $table->text('unit')->nullable();
            $table->text('quantity')->nullable();
            $table->text('rate')->nullable();
            $table->text('per')->nullable();
            $table->integer('user_id')->nullable();
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
        Schema::dropIfExists('labour_costs');
    }
}
