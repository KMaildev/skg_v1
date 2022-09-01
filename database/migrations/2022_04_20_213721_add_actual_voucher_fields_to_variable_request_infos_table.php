<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddActualVoucherFieldsToVariableRequestInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('variable_request_infos', function (Blueprint $table) {
            $table->text('actual_voucher_upload')->nullable();
            $table->text('actual_voucher_upload_date')->nullable();

            $table->text('finance_payment_slip_upload')->nullable();
            $table->text('finance_payment_slip_upload_date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('variable_request_infos', function (Blueprint $table) {
            //
        });
    }
}
