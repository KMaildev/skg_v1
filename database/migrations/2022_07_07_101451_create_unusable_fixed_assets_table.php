<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUnusableFixedAssetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('unusable_fixed_assets', function (Blueprint $table) {
            $table->increments('id');
            $table->text('qty')->nullable();
            $table->text('reason')->nullable();
            $table->text('remark')->nullable();
            $table->text('fixed_asset_id')->nullable();
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
        Schema::dropIfExists('unusable_fixed_assets');
    }
}
