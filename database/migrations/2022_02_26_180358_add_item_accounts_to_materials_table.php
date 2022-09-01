<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddItemAccountsToMaterialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('materials', function (Blueprint $table) {
            $table->integer('receivable_account_id')->nullable();
            $table->integer('payable_account_id')->nullable();
            $table->integer('opening_inventory_account_id')->nullable();
            $table->integer('closing_inventory_account_id')->nullable();
            $table->integer('closing_stock_account_id')->nullable();

            $table->integer('quantity_on_hand')->nullable();
            $table->integer('as_of_date')->nullable();
            $table->integer('opening_cost_price')->nullable();
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
