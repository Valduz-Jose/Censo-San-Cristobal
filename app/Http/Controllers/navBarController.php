<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\info;
use App\Models\User;

class navBarController extends Controller
{
    public function search(Request $request){
        //codigo de busqueda de usuarios para la alcaldia 
        $r['user']= User::where('cedula',$request->input('cedula'))->first();
        if($r['user']!=null)
            $r['sintomas']= info::where('id',$r['user']->cedula)->first();
        
        return view('user', compact('r')); //se devuelve la vista junto con un array con toda la info 
    }
}
