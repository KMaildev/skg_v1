<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVariablePaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('variable_payments', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('variable_request_info_id')->nullable();
            $table->integer('user_id')->nullable();
            $table->text('transportation')->nullable();
            $table->text('labor')->nullable();
            $table->text('banking_percent')->nullable();
            $table->text('extra')->nullable();
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
        Schema::dropIfExists('variable_payments');
    }
}
