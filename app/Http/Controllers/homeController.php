<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class homeController extends Controller
{
    //Metodos que administraran las rutas
    public function __invoke(){//el Invoke 
        return view("home");
    }
}
