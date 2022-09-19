<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddApprovalFieldsToFixedAssetsBuyRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('fixed_assets_buy_requests', function (Blueprint $table) {
            $table->text('approval_qty')->nullable();
            $table->text('approval_remark')->nullable();
            $table->text('approval_user_id')->nullable();
            $table->text('approval_date')->nullable();
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
