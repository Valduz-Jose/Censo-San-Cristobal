
@extends('layouts.plantilla')

@section('title','Singup')
    
@section('content')
    <h1>Singup</h1>

    <form action="singup" method="POST">
    @csrf
        <input type="email" name="email" id="">
        <input type="password" name="password" id="">
        <input type="password" name="password_confirmation" id="">
        <input type="text" name="cedula" id="">
        <input type="text" name="apellido" id="">
        <input type="text" name="name" id="">
        <input type="text" name="municipio" id="">
        <input type="text" name="localidad" id="">
        <input type="text" name="direccion" id="">
        <input type="text" name="tlf" id="">
        <input type="text" name="tlm" id="">
        <input type="submit" value="Registrarse">
    </form>
@endsection
