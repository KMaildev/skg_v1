<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSentByUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sent_by_users', function (Blueprint $table) {
            $table->id();
            $table->integer('request_info_id');
            $table->integer('user_id');
            $table->integer('project_id');
            $table->integer('customer_id');
            $table->text('sending_date')->nullable();
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
        Schema::dropIfExists('sent_by_users');
    }
}
