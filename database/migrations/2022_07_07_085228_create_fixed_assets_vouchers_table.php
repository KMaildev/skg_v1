<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFixedAssetsVouchersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fixed_assets_vouchers', function (Blueprint $table) {
            $table->increments('id');
            $table->text('voucher')->nullable();
            $table->text('original_name')->nullable();
            $table->text('fixed_asset_id')->nullable();
            $table->text('remark')->nullable();
            $table->text('voucher_date')->nullable();
            $table->integer('user_id')->nullable();
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
        Schema::dropIfExists('fixed_assets_vouchers');
    }
}
