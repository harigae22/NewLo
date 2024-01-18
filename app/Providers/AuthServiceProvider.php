<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
      $this->registerPolicies();

        // 管理者以上に許可
        Gate::define('admin-higher', function ($user) {
            return $user->role === 'admin';
        });
        // 一般ユーザ以上に許可
        Gate::define('user-higher', function ($user) {
            return $user->role === 'user';
        });
        }
}
