<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddReceivedFieldsToVariableRequestItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('variable_request_items', function (Blueprint $table) {
            $table->text('received_qty')->nullable();
            $table->text('received_date')->nullable();
            $table->text('received_user')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('variable_request_items', function (Blueprint $table) {
            //
        });
    }
}
