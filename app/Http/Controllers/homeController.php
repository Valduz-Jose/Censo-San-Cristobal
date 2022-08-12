<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class homeController extends Controller
{
    //Metodos que administraran las rutas
    public function __invoke(){//el Invoke 
        if(Auth::check()){//si ya esta logueado
            return view("home");
        }else{
            return redirect("login");
        }
    }
}
