<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Info;

class alcaldiaController extends Controller
{
    //
    public function index(){
        //indexar datos extraidos de la DB para las estadisticas y retornar el parametro
        $r1['covid']=Info::where('virus','covid')->get()->count();
        $r1['variante']=Info::where('virus',"variante del covid")->get()->count();
        $r1['viruela']=Info::where('virus',"viruela del mono")->get()->count();
        $r1['nodiagnosticado']=Info::where('virus',"no diagnosticado")->get()->count();

        $r2['tos'] = Info::where('sintomas','like',"%tos%")->get()->count();
        $r2['fiebre'] = Info::where('sintomas','like',"%fiebre%")->get()->count();
        $r2['erupciones'] = Info::where('sintomas','like',"%erupciones en la piel%")->get()->count();
        $r2['dolor_cabeza'] = Info::where('sintomas','like',"%dolor de cabeza%")->get()->count();
        $r2['dolores_musculares'] = Info::where('sintomas','like',"%dolores musculares%")->get()->count();
        $r2['vomito'] = Info::where('sintomas','like',"%vomito%")->get()->count();
        $otros= Info::all();
        $cont=0;
        foreach($otros as $otro){
            if($otro->otroSintomas!=null){
                $cont++;
            }
        }
        
        $r2['otroSintoma'] = $cont;
        return view("alcaldia", compact('r1'), compact('r2'));
    }



}
