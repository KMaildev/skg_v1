<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddQsTeamCheckDateToRequestInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('request_infos', function (Blueprint $table) {
            $table->text('qs_team_check_date')->nullable();
            $table->text('logistics_team_check_sent_date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('request_infos', function (Blueprint $table) {
            //
        });
    }
}
