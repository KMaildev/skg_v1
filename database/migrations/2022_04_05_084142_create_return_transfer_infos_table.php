<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReturnTransferInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('return_transfer_infos', function (Blueprint $table) {
            $table->increments('id');
            $table->text('transfer_from')->nullable();
            $table->text('transfer_to_warehouse_id')->nullable();
            $table->text('sent_date')->nullable();
            $table->text('remark')->nullable();
            $table->text('engineer_return_info_id')->nullable();
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
        Schema::dropIfExists('return_transfer_infos');
    }
}
