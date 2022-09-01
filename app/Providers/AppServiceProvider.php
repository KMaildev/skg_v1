<?php

namespace App\Providers;

use App\Models\RequestInfo;
use App\Models\VariableRequestInfo;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $variable_request_count_total = VariableRequestInfo::where('request_status', NULL)
            ->where('accept_reject_status', 'accept')
            ->count();
        view()->share('variable_request_count_total', $variable_request_count_total);



        $fixed_assets_request_count_total = RequestInfo::where('request_status', NULL)
            ->where('accept_reject_status', 'accept')
            ->count();
        view()->share('fixed_assets_request_count_total', $fixed_assets_request_count_total);
    }
}
