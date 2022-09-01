<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRequestStatusToRequestInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('request_infos', function (Blueprint $table) {
            $table->text('request_status')->nullable();
            $table->text('request_status_date')->nullable();
            $table->text('request_status_user')->nullable();
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
