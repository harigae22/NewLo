<?php

use GuzzleHttp\Middleware;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('newlo.home');
})->name('newlo.home');

Route::get('/newlo/home', function () {
    return view('newlo.home');
})->name('newlo.home');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

// admin or user の識別
Route::get('redirects', 'App\Http\Controllers\Auth\LoginController@index')
    ->name('redirects');


Route::prefix('/newlo/login/{provider}')->where(['provider' => 'line'])->group(function(){
    Route::get('/', [App\Http\Controllers\Auth\LoginController::class, 'redirectToProvider'])->name('social_login.redirect');
    Route::get('/callback', [App\Http\Controllers\Auth\LoginController::class, 'handleProviderCallback'])->name('social_login.callback');
});

//一般ユーザー
Route::group(['middleware' => ['auth', 'can:user-higher']], function () {

    Route::prefix('/newlo')->group(function() {

        Route::get('/', \App\Http\Controllers\Event\IndexController::class)
        ->name('newlo.main');

            // Main
            Route::post('/like/main_list', '\App\Http\Controllers\Event\LikeController@like_MainList')
            ->name('newlo.like.main_list');

            // 検索機能
            Route::get('/main/serach', \App\Http\Controllers\Event\MainListSearchController::class)
            ->name('newlo.main_search');


            // Event
            Route::get('/event/list', \App\Http\Controllers\Event\EventListController::class)
                ->name('newlo.event_list');

            Route::get('/event/list/show/{eventId}', \App\Http\Controllers\Event\EventShowController::class)
                ->name('newlo.event_show');

            Route::post('/like/show_like', '\App\Http\Controllers\Event\LikeController@show_like')
                ->name('newlo.event_show.like');

            Route::post('/like/event/list/like', '\App\Http\Controllers\Event\LikeController@like_EventList')
                ->name('newlo.event_list.like');


            // Like
            Route::get('/like/list', \App\Http\Controllers\Event\LikeListController::class)
                ->name('newlo.like_list');

            Route::get('/like/list/show/{eventId}', \App\Http\Controllers\Event\LikeShowController::class)
                ->name('newlo.like_show');

            Route::post('/like.show_like', '\App\Http\Controllers\Event\LikeController@like_show_like')
                ->name('newlo.like_show.like');

            Route::post('/like/like_list', '\App\Http\Controllers\Event\LikeController@like_LikeList')
                ->name('newlo.like_list.like');


            // My List
            Route::get('/my/list', \App\Http\Controllers\Event\MyListController::class)
                ->name('newlo.my_list');

            Route::get('/my/list/show/{eventId}', \App\Http\Controllers\Event\MyEventShowController::class)
                ->name('newlo.my_show');


            // 検索機能
            Route::get('/serach', \App\Http\Controllers\Event\EventListSearchController::class)
                ->name('newlo.search');

            // 投稿機能
            Route::get('/tweet', \App\Http\Controllers\Event\TweetController::class)
                ->name('tweet');

            Route::post('/tweet', \App\Http\Controllers\Event\EventTweetController::class)
                ->name('newlo.tweet');

            // 編集機能
            Route::get('/update/{eventId}', \App\Http\Controllers\Event\Update\IndexController::class)
                ->name('newlo.update.index');

            Route::put('/update/{eventId}', \App\Http\Controllers\Event\Update\PutController::class)
                ->name('newlo.update.put');

            // 投稿削除
            Route::delete('delete/{eventId}', \App\Http\Controllers\Event\DeleteController::class)
                ->name('newlo.delete');
    });
});


// 管理者以上
Route::group(['middleware' => ['auth', 'can:admin-higher']], function () {
    //ここにルートを記述
    Route::prefix('/newlo')->group(function() {

        Route::get('/admin', \App\Http\Controllers\Event\Admin\IndexController::class)
            ->name('admin');

        Route::get('/admin/list/user', \App\Http\Controllers\Event\Admin\UserController::class)
            ->name('admin.list.user');

        Route::get('/admin/show/{eventId}', \App\Http\Controllers\Event\Admin\ShowController::class)
            ->name('admin.show.index');

        Route::get('/admin/user/{userId}', \App\Http\Controllers\Event\Admin\UserShowController::class)
            ->name('admin.user.show');

        Route::delete('/admin/delete/{eventId}', \App\Http\Controllers\Event\Admin\DeleteController::class)
            ->name('admin.delete');

        Route::get('/admin/update/{eventId}', \App\Http\Controllers\Event\Admin\Update\IndexController::class)
            ->name('admin.update.index');

        Route::put('/admin/update/{eventId}', \App\Http\Controllers\Event\Admin\Update\PutController::class)
            ->name('admin.update.put');
    });

});