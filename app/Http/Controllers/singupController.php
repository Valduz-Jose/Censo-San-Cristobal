<?php

namespace App\Http\Controllers;
use App\Http\Requests\RegisterRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class singupController extends Controller
{
    //

    public function show(){
        if(Auth::check()){
            return redirect("home");
        }
        return view('singup');
    }
    //reglas para insertar
    public function singup(RegisterRequest $request){
        // $request->getCredentials();
        // if($request->input('credencial')==null){
        //     $request->credencial=0;
        //     $user = User::create($request->validated());
        // }
        // else if($request->input('credencial')=='7777' || $request->input('credencial')=='0'){
        //     $user = User::create($request->validated());
        // }
        // else{
        //     return redirect('singup')->withErrors('Credencial erronea, si no tiene credencial deje el espacio vacio');
        // }
        
        return redirect('login')->with('success','Account Created Successfully');
    }
}
