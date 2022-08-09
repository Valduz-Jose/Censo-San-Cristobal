{{-- direcciono a mi plantilla --}}
@extends('layouts.plantilla')

@section('title','Home')
    
@section('content')
    <h1>Bienvenido al Censo San Cristobal</h1>
    {{-- Si esta autenticado --}}
    @auth
        <p>Bienvenido {{auth()->user()->name ?? auth()->user()->email}}, estas autenticado</p>
        <p><a href="logout">Logout</a></p>
    @endauth
    {{-- No Autenticado --}}
    @guest
    <p>Autenticate para ver el contenido <a href="login">Inicia Sesión</a></p>
    @endguest
@endsection
