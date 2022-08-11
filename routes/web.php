<?php

use App\Http\Controllers\alcaldiaController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\homeController;
use App\Http\Controllers\loginController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\noticiasController;
use App\Http\Controllers\singupController;
use App\Http\Controllers\virusController;
use App\Http\Controllers\navBarController;
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

// Creo todas mis rutas

Route::get('/', homeController::class);
Route::get('home', homeController::class);

Route::get('login', [loginController::class,'show']);
Route::post('login',[loginController::class,'login']);


Route::get('singup', [singupController::class,'show']);
Route::post('singup',[singupController::class,'singup']);

Route::get('alcaldia', [alcaldiaController::class,'index']);
Route::post('alcaldia',[alcaldiaController::class,'search'])->name('alcaldia.search');

Route::get('noticias', [noticiasController::class,'show']);
Route::get('CrearNoticia', [noticiasController::class,'create']);
Route::post('CrearNoticia', [noticiasController::class,'store']);

//se le especifica el metodo en el array junto con el controller

//Creo un grupo de rutas
Route::controller(virusController::class)->group(function(){
    Route::get('virus','create');
    Route::post('virus','store')->name('virus.store');
    //Route::get('virus/{name}','show');
});

Route::get('logout', [LogoutController::class, 'logout']);

Route::post('search',[navBarController::class,'search'])->name('navBar.search');

