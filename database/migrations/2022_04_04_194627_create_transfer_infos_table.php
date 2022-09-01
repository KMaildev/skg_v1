<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransferInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transfer_infos', function (Blueprint $table) {
            $table->id();
            $table->text('transfer_from')->nullable();
            $table->integer('main_warehouse_id')->nullable();
            $table->integer('customer_id')->nullable();
            $table->text('sent_date')->nullable();
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
        Schema::dropIfExists('transfer_infos');
    }
}
