<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\info;
use Illuminate\Support\Facades\Auth;

class alcaldiaController extends Controller
{
    //
    public function index(){
        //indexar datos extraidos de la DB para las estadisticas y retornar el parametro
        $r1['covid']=info::where('virus','covid')->get()->count();
        $r1['variante']=info::where('virus',"variante del covid")->get()->count();
        $r1['viruela']=info::where('virus',"viruela del mono")->get()->count();
        $r1['nodiagnosticado']=info::where('virus',"no diagnosticado")->get()->count();

        $r2['tos'] = info::where('sintomas','like',"%tos%")->get()->count();
        $r2['fiebre'] = info::where('sintomas','like',"%fiebre%")->get()->count();
        $r2['erupciones'] = info::where('sintomas','like',"%erupciones en la piel%")->get()->count();
        $r2['dolor_cabeza'] = info::where('sintomas','like',"%dolor de cabeza%")->get()->count();
        $r2['dolores_musculares'] = info::where('sintomas','like',"%dolores musculares%")->get()->count();
        $r2['vomito'] = info::where('sintomas','like',"%vomito%")->get()->count();
        $otros= info::all();
        $cont=0;
        foreach($otros as $otro){
            if($otro->otroSintomas!=null){
                $cont++;
            }
        }
        
        $r2['otroSintoma'] = $cont;

        if(Auth::check() ){//si ya esta logueado
            if(auth()->user()->credencial== "7777"){
                return view("alcaldia", compact('r1'), compact('r2'));
            }else{
                return redirect("home");
            }
        }else{
            return redirect("login");
        }
    }



}
