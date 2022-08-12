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
        if(Auth::check() ){//si ya esta logueado
            return view("noticias",compact('noticias'));
        }else{
            return redirect("login");
        }
    }
    public function create(){
        if(Auth::check() ){//si ya esta logueado
            if(auth()->user()->credencial== "7777"){
                return view("CrearNoticia"); 
            }else{
                return redirect("home");
            }
        }else{
            return redirect("login");
        }
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
            return redirect("login");
        }
    }
}
