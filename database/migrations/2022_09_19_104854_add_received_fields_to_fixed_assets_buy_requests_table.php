<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddReceivedFieldsToFixedAssetsBuyRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('fixed_assets_buy_requests', function (Blueprint $table) {
            $table->text('received_qty')->nullable();
            $table->text('received_remark')->nullable();
            $table->text('received_user_id')->nullable();
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
        Schema::table('fixed_assets_buy_requests', function (Blueprint $table) {
            //
        });
    }
}
