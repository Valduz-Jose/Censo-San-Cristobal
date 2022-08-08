<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class virusController extends Controller
{
    //
    public function create(){
        return view("virus.create");
    }
    public function show($name){//paso la variable a la vista
        return view("virus.show",compact('name'));
        //compact('name')  ['name'=>$name]
    }
    public function store(Request $request){
        $sintomas=$request->input('sintomas');
        $sintomaDB="";
        foreach($sintomas as $sintoma){
            $sintomaDB.=$sintoma;
            $sintomaDB.=", ";
        }
        $sintomaDB.=$request->input('otroSintoma'); // variable concatenada con todos los sintomas
        return $sintomaDB;
    }
}
