<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class singupController extends Controller
{
    //
    public function __invoke(){
        return view("singup");
    }
}
