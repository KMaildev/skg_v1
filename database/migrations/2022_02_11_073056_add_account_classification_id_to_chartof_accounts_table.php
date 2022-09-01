<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddAccountClassificationIdToChartofAccountsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('chartof_accounts', function (Blueprint $table) {
            $table->integer('account_classification_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('chartof_accounts', function (Blueprint $table) {
            $table->dropColumn('account_classification_id');
        });
    }
}
