<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTransferFromStatusToRequestInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('request_infos', function (Blueprint $table) {
            $table->text('transfer_from_status')->nullable();
            $table->integer('main_warehouse_id')->nullable();
            $table->integer('other_site_id')->nullable();
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
