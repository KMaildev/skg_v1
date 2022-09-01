<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReturnQsTeamCheckPassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('return_qs_team_check_passes', function (Blueprint $table) {
            $table->increments('id');
            $table->text('user_id')->nullable();
            $table->text('return_item_id')->nullable();
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
        Schema::dropIfExists('return_qs_team_check_passes');
    }
}
