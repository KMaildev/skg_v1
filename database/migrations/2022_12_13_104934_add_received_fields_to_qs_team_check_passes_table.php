<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddReceivedFieldsToQsTeamCheckPassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('qs_team_check_passes', function (Blueprint $table) {
            $table->text('received_qty')->nullable();
            $table->text('received_date')->nullable();
            $table->text('received_user')->nullable();
            $table->text('received_remark')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('qs_team_check_passes', function (Blueprint $table) {
            //
        });
    }
}
