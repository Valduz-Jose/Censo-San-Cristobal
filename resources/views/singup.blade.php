
@extends('layouts.plantilla')

@section('title','Registro de usuarios: ')
    
@section('content')
    <h1>Registro de usuarios nuevos: </h1>
    <form action="" method="post">
        <label>Correo electronico: </label>
        <input type="email" name="newMail" id="mail" placeholder="Ingrese E-mail">
        <br>
        <label>Cedula: </label>
        <input type="number" name="cedula" id="cedula">
        <br>
        <label>Nombre: </label>
        <input type="text" name="cedula" id="cedula">


    </form>
@endsection
