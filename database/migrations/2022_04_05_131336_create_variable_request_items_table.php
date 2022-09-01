<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVariableRequestItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('variable_request_items', function (Blueprint $table) {
            $table->increments('id');
            $table->text('variable_asset_id')->nullable();
            $table->text('quantity')->nullable();
            $table->integer('user_id')->nullable();
            $table->integer('variable_request_info_id')->nullable();
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
        Schema::dropIfExists('variable_request_items');
    }
}
