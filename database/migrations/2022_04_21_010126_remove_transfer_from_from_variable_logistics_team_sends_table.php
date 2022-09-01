<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RemoveTransferFromFromVariableLogisticsTeamSendsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('variable_logistics_team_sends', function (Blueprint $table) {
            $table->dropColumn('transfer_from');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('variable_logistics_team_sends', function (Blueprint $table) {
            //
        });
    }
}
