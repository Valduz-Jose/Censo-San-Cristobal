<?php

use App\Http\Controllers\alcaldiaController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\homeController;
use App\Http\Controllers\loginController;
use App\Http\Controllers\noticiasController;
use App\Http\Controllers\singupController;
use App\Http\Controllers\virusController;
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

Route::get('login',loginController::class);

Route::get('singup', singupController::class);

Route::get('alcaldia', alcaldiaController::class);

Route::get('noticias', noticiasController::class);

//se le especifica el metodo en el array junto con el controller

//Creo un grupo de rutas
Route::controller(virusController::class)->group(function(){
    Route::get('virus','create');
    Route::get('virus/{name}','show');
});
