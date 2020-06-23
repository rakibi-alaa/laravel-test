<?php

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
    return view('welcome');
});

Route::get('/login', function () {
    return view('login');
});

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
Route::post('/', 'HomeController@filter')->name('homeFilter');
Route::post('/apply/{id}', 'HomeController@apply')->name('offerApplication');
//Route::get('/', 'OffersController@index');
