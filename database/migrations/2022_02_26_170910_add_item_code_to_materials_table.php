<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddItemCodeToMaterialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('materials', function (Blueprint $table) {
            $table->string('item_code')->nullable();
            $table->text('description')->nullable();
            $table->integer('unitos_of_measure_id')->nullable();
            $table->text('selling_price')->nullable();
            $table->integer('sale_account_id')->nullable();
            $table->text('cost_price')->nullable();
            $table->integer('purchase_account_id')->nullable();
            $table->integer('inventory_account_id')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('materials', function (Blueprint $table) {
            //
        });
    }
}
