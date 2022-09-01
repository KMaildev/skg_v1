<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddQsTeamCheckStatusFieldsToVariableRequestInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('variable_request_infos', function (Blueprint $table) {
            $table->text('qs_team_check_status')->nullable();
            $table->text('qs_team_check_date')->nullable();

            $table->text('logistics_team_check')->nullable();
            $table->text('logistics_team_check_date')->nullable();

            $table->text('management_accept_reject_status')->nullable();
            $table->text('management_accept_reject_date')->nullable();

            $table->text('received_by_engineer_status')->nullable();
            $table->text('received_date')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('variable_request_infos', function (Blueprint $table) {
            //
        });
    }
}
