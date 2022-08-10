<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class alcaldiaController extends Controller
{
    //
    public function index(){
        //indexar datos extraidos de la DB para las estadisticas y retornar el parametro
        return view("alcaldia");
    }

    public function search(Request $request){
        //buscar usuario en la DB por cedula y cargar la vista de todos los datos del usuario

        return "buscando ".$request->input('cedula'); 
    }

   /* public function post(){
        return view('alcaldia.post'); 
    }*/
 
}
