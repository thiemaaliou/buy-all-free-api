<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['prefix' => 'auth'], function () {
    Route::post('login', 'Auth\LoginController@login');
    Route::post('signup', 'Auth\RegisterController@create');
});

Route::group(['middleware' => 'auth:api'], function(){
    Route::get('client/{uid}', 'UsersController@getUserByUid');
    Route::resource('product', 'ProductController');
    Route::resource('purchase', 'PurchaseController');
    Route::resource('users', 'UsersController');
    Route::post('sendsms', 'PurchaseController@sendSms');
});
