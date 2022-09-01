<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBqTemporariesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bq_temporaries', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('variable_asset_id')->nullable();
            $table->text('qty')->nullable();
            $table->text('rate')->nullable();
            $table->text('project_id')->nullable();
            $table->text('session_id')->nullable();
            $table->text('user_id')->nullable();
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
        Schema::dropIfExists('bq_temporaries');
    }
}
