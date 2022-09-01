<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVariableFinancePaymentSlipsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('variable_finance_payment_slips', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->nullable();
            $table->text('finance_payment_slip_upload')->nullable();
            $table->text('finance_payment_slip_upload_date')->nullable();
            $table->text('finance_payment_slip_file')->nullable();
            $table->text('original_name')->nullable();
            $table->integer('variable_request_info_id')->nullable();
            $table->text('remark')->nullable();
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
        Schema::dropIfExists('variable_finance_payment_slips');
    }
}
