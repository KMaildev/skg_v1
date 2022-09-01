<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVariableRequestInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('variable_request_infos', function (Blueprint $table) {
            $table->increments('id');
            $table->text('code')->nullable();
            $table->text('date')->nullable();
            $table->integer('customer_id')->nullable();
            $table->integer('engineer_id')->nullable();
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
        Schema::dropIfExists('variable_request_infos');
    }
}
