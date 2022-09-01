<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVariableAssetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('variable_assets', function (Blueprint $table) {
            $table->increments('id');
            $table->text('item_name')->nullable();
            $table->text('unit')->nullable();
            $table->integer('qty')->nullable();
            $table->text('remark')->nullable();
            $table->integer('main_warehouse_id')->nullable();
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
        Schema::dropIfExists('variable_assets');
    }
}
