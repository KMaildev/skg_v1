<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFixedAssetsPurchasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fixed_assets_purchases', function (Blueprint $table) {
            $table->increments('id');
            $table->text('reference')->nullable();
            $table->text('item_name')->nullable();
            $table->text('unit')->nullable();
            $table->integer('qty')->nullable();
            $table->text('desciption')->nullable();
            $table->text('order_date')->nullable();
            $table->integer('fixed_asset_id')->nullable();
            $table->integer('user_id')->nullable(); //purchase_representative
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
        Schema::dropIfExists('fixed_assets_purchases');
    }
}
