<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddDateFieldsToEngineerReturnInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('engineer_return_infos', function (Blueprint $table) {
            $table->text('qs_team_check_pass_date')->nullable();
            $table->text('logistics_team_check_sent_date')->nullable();
            $table->text('received_store_manager_date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('engineer_return_infos', function (Blueprint $table) {
            //
        });
    }
}
