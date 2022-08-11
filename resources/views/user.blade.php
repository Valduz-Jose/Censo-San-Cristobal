@extends('layouts.plantilla')

@section('title','Busqueda de usuario')
    
@section('content')
<div class="">
    <h1 class="text-center">Usuario </h1>
    @if ($r['user']!=null)
        <h2>Informacion Personal </h2>
        <table class="table table-info">
            <tr>
                <th scope="col">Nombre: </th>
                <td>{{$r['user']->name}}</td>
            </tr>
            <tr>
                <th scope="col">Apellido: </th>
                <td>{{$r['user']->apellido}}</td>
            </tr>
            <tr>
                <th scope="col">Cedula: </th>
                <td>{{$r['user']->cedula}}</td>
            </tr>
            <tr>
                <th scope="col">Correo: </th>
                <td>{{$r['user']->email}}</td>
            </tr>
            <tr>
                <th scope="col">Municipio: </th>
                <td>{{$r['user']->municipio}}</td>
            </tr>
            <tr>
                <th scope="col">Localidad: </th>
                <td>{{$r['user']->localidad}}</td>
            </tr>
            <tr>
                <th scope="col">Direccion: </th>
                <td>{{$r['user']->direccion}}</td>
            </tr>
            <tr>
                <th scope="col">Telefono fijo: </th>
                <td>{{$r['user']->tlf}}</td>
            </tr>
            <tr>
                <th scope="col">Telefono movil: </th>
                <td>{{$r['user']->tlm}}</td>
            </tr>
        </table>
        <br>
        @if ($r['sintomas']!=null)
        <h2>Informacion de salud </h2>
        <table class="table table-info">
            <tr>
                <th scope="col">Virus diagnosticado: </th>
                <td>{{$r['sintomas']->virus}}</td>
            </tr>
            <tr>
                <th scope="col">Centro de atencion: </th>
                <td>{{$r['sintomas']->centro}}</td>
            </tr>
            <tr>
                <th scope="col">Sintomas: </th>
                <td>{{$r['sintomas']->sintomas." ".$r['sintomas']->otroSintomas}}</td>
            </tr>
            
        </table>
        @else
            <h2>Informacion de salud no registrada</h2>
        @endif
    @else
        <h3>Usuario no encontrado</h3>
    @endif
</div>

@endsection
