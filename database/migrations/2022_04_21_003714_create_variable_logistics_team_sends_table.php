<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVariableLogisticsTeamSendsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('variable_logistics_team_sends', function (Blueprint $table) {
            $table->increments('id');
            $table->text('transfer_from')->nullable();
            $table->integer('transfer_from_warehouse_id')->nullable();
            $table->text('transfer_to')->nullable();
            $table->text('sent_date')->nullable();
            $table->text('user_id')->nullable();
            $table->text('variable_request_info_id')->nullable();
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
        Schema::dropIfExists('variable_logistics_team_sends');
    }
}
