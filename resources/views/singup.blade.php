
@extends('layouts.plantillaregistros')

@section('title','Singup')
    
@section('content')
    <h1 class="text-center">Singup</h1>
        <form action="singup" method="POST">
            @csrf
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Email address</label>
              <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
              <label for="exampleInputPassword1" class="form-label">Password</label>
              <input type="password" name="password" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password Confirmation</label>
                <input type="password" name="password_confirmation" class="form-control" id="exampleInputPassword1">
            </div>
              
            <div class="mb-3">
                <label for="exampleInputText" class="form-label">Nombre</label>
                <input type="text" name="name" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputText" class="form-label">Apellido</label>
                <input type="text" name="apellido" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputText" class="form-label">Cedula</label>
                <input type="text" name="cedula" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputText" class="form-label">Municipio</label>
                <input type="text" name="municipio" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputText" class="form-label">Localidad</label>
                <input type="text" name="localidad" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputText" class="form-label">Direccion</label>
                <input type="text" name="direccion" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputText" class="form-label">Telefono Fijo</label>
                <input type="text" name="tlf" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputText" class="form-label">Telefono Movil</label>
                <input type="text" name="tlm" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="d-grid gap-2 col-6 mx-auto">
                <button type="submit" class="btn btn-primary ">Singup</button>
            <br>Or <a href="login">Login</a>
            </div>
        </form>
@endsection