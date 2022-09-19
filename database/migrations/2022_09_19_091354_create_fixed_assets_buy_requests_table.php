<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFixedAssetsBuyRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fixed_assets_buy_requests', function (Blueprint $table) {
            $table->increments('id');
            $table->text('request_qty')->nullable();
            $table->text('remark')->nullable();
            $table->text('request_date')->nullable();
            $table->integer('user_id')->nullable();
            $table->integer('fixed_asset_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('fixed_assets_buy_requests');
    }
}
