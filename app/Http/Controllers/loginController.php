<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class loginController extends Controller
{
    //
    public function show(){
        if(Auth::check()){//si ya esta logueado
            return redirect("home");
        }
        return view ("login");
    }

    public function login(LoginRequest $request){
        $credentials = $request->getCredentials();
        if(!Auth::validate($credentials)){
            return redirect()->to('login')->withErrors('Email y/o Password incorrectos');
        }
        $user = Auth::getProvider()->retrieveByCredentials($credentials);
        Auth::login($user);
        session(['userMail'=> $request->input('email')]);
        return $this->authenticated($request,$user);
    }
    public function authenticated (Request $request, $user){
        return redirect('home');
    }
}
