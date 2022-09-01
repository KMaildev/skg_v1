<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQsTeamCheckPassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('qs_team_check_passes', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');

            $table->integer('eng_request_item_id')->nullable();
            $table->integer('project_id')->nullable();

            $table->integer('eng_request_qty')->nullable();
            $table->integer('qs_passed_qty')->nullable();

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
        Schema::dropIfExists('qs_team_check_passes');
    }
}
