<?php

namespace App\Providers;

use App\Category;
use App\NewSetting;
use App\SubCategory;
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
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('*', function ($view) {
            $view->with('categories', Category::where('status', '1')->get());
        });
        view()->composer('*', function ($view) {
            $view->with('subcategories', SubCategory::where('status', '1')->get());
        });

        view()->composer('*', function ($view) {
            $info = NewSetting::find(1, ['phone', 'email', 'address', 'about','image']);
            $view->with('info', $info);
        });
    }
}
