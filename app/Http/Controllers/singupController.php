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
        $user = User::create($request->validated());
        return redirect('login')->with('success','Account Created Successfully');
    }
}
