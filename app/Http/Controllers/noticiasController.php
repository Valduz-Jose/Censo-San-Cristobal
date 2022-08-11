<?php

namespace App\Http\Controllers;

use App\Models\noticia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class noticiasController extends Controller
{
    //
    public function show(){
        //$noticias = noticia::all();//extraigo la coleccion de datos
        $noticias = noticia::orderBy('id','desc')->paginate(); //paginado
        return view("noticias",compact('noticias'));
    }
    public function create(){
        return view("CrearNoticia");
    }
    public function store(Request $request){
        // creo el objeo
        $noticia = new noticia();
        // Guardo los datos
        $noticia->titulo = $request->titulo;
        $noticia->descripcion = $request->descripcion;
        // salvo el objeto
        $noticia->save();
        if(Auth::check() ){//si ya esta logueado
            return redirect('noticias'); 
        }else{
            return view("login");
        }
    }
}
