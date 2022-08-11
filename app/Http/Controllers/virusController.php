<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Info;
use App\Models\User;

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
        //$sintomaDB.=$request->input('otroSintoma'); // variable concatenada con todos los sintomas
        
        $usermail= session('userMail');
        $user = User::where('email',$usermail)->first();
        $id=$user->cedula;
        $info = Info::find($id);

        if($info==null){
            $info= new Info;
        }
        
        $info->id= $id;
        $info->virus= $request->input('virus');
        $info->centro= $request->input('centroSalud');
        $info->sintomas= $sintomaDB;
        
        $info->otroSintomas= $request->input('otroSintoma');

        $info->save();    
        
        return redirect('home')->with('success','Sintomas Cargados Satisfactoriamente');
    }
}