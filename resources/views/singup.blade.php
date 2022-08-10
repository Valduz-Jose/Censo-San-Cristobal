
@extends('layouts.plantillaregistros')

@section('title','Singup')
    
@section('content')
    <h1 class="text-center">Singup</h1>
        <form action="singup" method="POST">
            @csrf 
            @include('layouts.partials.messages')
            <div class="form-floating mb-3">
                <input placeholder="Email Adress" type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
            </div>
            <div class="form-floating mb-3">
                <input placeholder="Password" type="password" name="password" class="form-control" id="exampleInputPassword1">
                <label for="exampleInputPassword1" class="form-label">Password</label>
            </div>
            <div class="form-floating mb-3">
                <input placeholder="Password Confirmation" type="password" name="password_confirmation" class="form-control" id="exampleInputPassword1">
                <label for="exampleInputPassword1" class="form-label">Password Confirmation</label>
            </div>
              
            <div class="form-floating mb-3">
                <input placeholder="Nombre" type="text" name="name" class="form-control" id="exampleInputPassword1">
                <label for="exampleInputText" class="form-label">Nombre</label>
            </div>
            <div class="form-floating mb-3">
                <input placeholder="Apellido" type="text" name="apellido" class="form-control" id="exampleInputPassword1">
                <label for="exampleInputText" class="form-label">Apellido</label>
            </div>
            <div class="form-floating mb-3">
                <input placeholder="Cedula" type="text" name="cedula" class="form-control" id="exampleInputPassword1">
                <label for="exampleInputText" class="form-label">Cedula</label>
            </div>
            <div class="form-floating mb-3">
                <input placeholder="Municipio" type="text" name="municipio" class="form-control" id="exampleInputPassword1">
                <label for="exampleInputText" class="form-label">Municipio</label>
            </div>
            <div class="form-floating mb-3">
                <input placeholder="Localidad" type="text" name="localidad" class="form-control" id="exampleInputPassword1">
                <label for="exampleInputText" class="form-label">Localidad</label>
            </div>
            <div class="form-floating mb-3">
                <input placeholder="Dirección" type="text" name="direccion" class="form-control" id="exampleInputPassword1">
                <label for="exampleInputText" class="form-label">Direccion</label>
            </div>
            <div class="form-floating mb-3">
                <input placeholder="Telefono Fijo" type="text" name="tlf" class="form-control" id="exampleInputPassword1">
                <label for="exampleInputText" class="form-label">Telefono Fijo</label>
            </div>
            <div class="form-floating mb-3">
                <input placeholder="Telefono Movil" type="text" name="tlm" class="form-control" id="exampleInputPassword1">
                <label for="exampleInputText" class="form-label">Telefono Movil</label>
            </div>
            <div class="form-floating mb-3">
                <input placeholder="Credenciales Usuario Natual 0" type="text" name="credencial" class="form-control" id="exampleInputPassword1">
                <label for="exampleInputText" class="form-label">Credenciales</label>
            </div>
            
            <div class="d-grid gap-2 col-6 mx-auto">
                <button placeholder="" type="submit" class="btn btn-primary ">Singup</button>
            <p>Or <a href="login">Login</a></p>
            </div>

        </form>
@endsection