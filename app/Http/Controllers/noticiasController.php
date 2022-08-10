<?php

namespace App\Http\Controllers;

use App\Models\noticia;
use Illuminate\Http\Request;


class noticiasController extends Controller
{
    //
    public function show(){
        //$noticias = noticia::all();//extraigo la coleccion de datos
        $noticias = noticia::paginate();//paginado
        return view("noticias",compact('noticias'));
    }
    public function create(){
        return view("CrearNoticia");
    }
}
