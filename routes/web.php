<?php

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

     Route::resource('/', 'homecontroller');
     Route::resource('blog', 'postscontroller');
    Route::resource('aboutus', 'aboutuscontroller');
    Route::resource('Service', 'Servicecontroller');
    Route::resource('contact', 'contactcontroller');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
