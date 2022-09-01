<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVariableQsTeamChecksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('variable_qs_team_checks', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->nullable();
            $table->integer('variable_request_item_id')->nullable();
            $table->text('eng_request_qty')->nullable();
            $table->text('qs_passed_qty')->nullable();
            $table->integer('variable_request_info_id')->nullable();
            $table->integer('variable_asset_id')->nullable();
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
        Schema::dropIfExists('variable_qs_team_checks');
    }
}
