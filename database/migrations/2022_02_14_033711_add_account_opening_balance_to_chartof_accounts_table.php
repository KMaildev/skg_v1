<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddAccountOpeningBalanceToChartofAccountsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('chartof_accounts', function (Blueprint $table) {
            $table->text('account_opening_balance')->nullable();
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
            $table->dropColumn('account_opening_balance');
        });
    }
}
