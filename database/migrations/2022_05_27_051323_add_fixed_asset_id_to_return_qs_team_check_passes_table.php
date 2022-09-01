<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFixedAssetIdToReturnQsTeamCheckPassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('return_qs_team_check_passes', function (Blueprint $table) {
            $table->integer('fixed_asset_id')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('return_qs_team_check_passes', function (Blueprint $table) {
            //
        });
    }
}
