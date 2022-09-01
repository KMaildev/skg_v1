<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVariableActualVouchersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('variable_actual_vouchers', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->nullable();
            $table->text('actual_voucher_upload_status')->nullable();
            $table->text('actual_voucher_upload_date')->nullable();
            $table->text('actual_voucher_file')->nullable();
            $table->text('original_name')->nullable();
            $table->integer('variable_request_info_id')->nullable();
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
        Schema::dropIfExists('variable_actual_vouchers');
    }
}
