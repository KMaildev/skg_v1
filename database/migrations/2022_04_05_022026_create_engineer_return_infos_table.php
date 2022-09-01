<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEngineerReturnInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('engineer_return_infos', function (Blueprint $table) {
            $table->increments('id');
            $table->text('return_code')->nullable();
            $table->text('return_date')->nullable();
            $table->integer('return_from_id')->nullable(); //customer_id
            $table->integer('return_user_id')->nullable(); //user_id

            $table->text('qs_team_check_pass_status')->nullable();
            $table->text('logistics_team_check_sent_status')->nullable();
            $table->text('received_store_manager_status')->nullable();
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
        Schema::dropIfExists('engineer_return_infos');
    }
}
