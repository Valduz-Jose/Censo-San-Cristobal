{{-- direcciono a mi plantilla --}}
@extends('layouts.plantilla')

@section('title','Home')
    
@section('content')
    <div class="container-fluid">
        <h1 class="text-center">Bienvenido al Censo San Cristobal</h1>
            <hr class="border border-primary border-3 opacity-75">
            {{-- Si esta autenticado --}}
            @auth
                {{-- @include('CrearNoticia') --}}
            @endauth
            {{-- No Autenticado --}}
            @guest
            <p>Autenticate para ver el contenido <a href="login">Inicia Sesión</a></p>
            @endguest
    </div>    
@endsection
