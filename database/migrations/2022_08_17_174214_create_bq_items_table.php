<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBqItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bq_items', function (Blueprint $table) {
            $table->increments('id');
            $table->text('variable_asset_id')->nullable();
            $table->text('qty')->nullable();
            $table->text('rate')->nullable();
            $table->text('project_bq_id')->nullable();
            $table->text('project_id')->nullable();
            $table->text('work_scope_id')->nullable();
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
        Schema::dropIfExists('bq_items');
    }
}
