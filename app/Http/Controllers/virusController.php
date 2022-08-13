<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\info;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\InfoRequest;

class virusController extends Controller
{
    //
    public function create(){
        if(Auth::check() ){//si ya esta logueado
            if(auth()->user()->credencial== null){
                return view("virus.create");
            }else{
                return redirect("home");
            }
        }else{
            return redirect("login");
        }
    }
    public function show($name){//paso la variable a la vista
        return view("virus.show",compact('name'));
        //compact('name')  ['name'=>$name]
    }

    public function store(InfoRequest $request){
        $sintomas=$request->input('sintomas');
        $sintomaDB="";
        if($sintomas!=null){
            foreach($sintomas as $sintoma){
                $sintomaDB.=$sintoma;
                $sintomaDB.=", ";
            }
        }
        
        
        $usermail= session('userMail');
        $user = User::where('email',$usermail)->first();
        $id=$user->cedula;
        $info = info::find($id);

        if($info==null){
            $info= new info;
            //saf
        }
        //sac
        $info->id= $id;
        if($request->input('virus')==null){
            return redirect()->to('virus')->withErrors('Por favor ingrese el virus con el que fue diagnosticado');
        }
        $info->virus= $request->input('virus');
        $info->centro= $request->input('centroSalud');
        $info->sintomas= $sintomaDB;
        
        $info->otroSintomas= $request->input('otroSintoma');

        $info->save();    
        
        return redirect('home');
    }
}