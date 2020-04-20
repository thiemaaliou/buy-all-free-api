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

Route::group(['middleware' => 'auth:api', 'prefix' => 'fr'], function(){
    Route::get('articles/{id}/comments', 'CommentsController@getCommentsByArticle');

    Route::post('images/upload', 'FilesController@store');
    Route::resource('articles', 'ArticlesController');
    Route::resource('comments', 'CommentsController');
    Route::resource('likes', 'LikesController');
    Route::resource('categories', 'CategoriesController');
});