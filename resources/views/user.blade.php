@extends('layouts.plantilla')

@section('title','Busqueda de usuario')
    
@section('content')
    <h1>Usuario: </h1>
    @if ($r['user']!=null)
        <h2>Informacion Personal: </h2>
        <table>
            <tr>
                <th>Nombre: </th>
                <td>{{$r['user']->name}}</td>
            </tr>
            <tr>
                <th>Apellido: </th>
                <td>{{$r['user']->apellido}}</td>
            </tr>
            <tr>
                <th>Cedula: </th>
                <td>{{$r['user']->cedula}}</td>
            </tr>
            <tr>
                <th>Correo: </th>
                <td>{{$r['user']->email}}</td>
            </tr>
            <tr>
                <th>Municipio: </th>
                <td>{{$r['user']->municipio}}</td>
            </tr>
            <tr>
                <th>Localidad: </th>
                <td>{{$r['user']->localidad}}</td>
            </tr>
            <tr>
                <th>Direccion: </th>
                <td>{{$r['user']->direccion}}</td>
            </tr>
            <tr>
                <th>Telefono fijo: </th>
                <td>{{$r['user']->tlf}}</td>
            </tr>
            <tr>
                <th>Telefono movil: </th>
                <td>{{$r['user']->tlm}}</td>
            </tr>
        </table>
        <br>
        @if ($r['sintomas']!=null)
        <h2>Informacion de salud: </h2>
        <table>
            <tr>
                <th>Virus diagnosticado: </th>
                <td>{{$r['sintomas']->virus}}</td>
            </tr>
            <tr>
                <th>Centro de atencion: </th>
                <td>{{$r['sintomas']->centro}}</td>
            </tr>
            <tr>
                <th>Sintomas: </th>
                <td>{{$r['sintomas']->sintomas." ".$r['sintomas']->otroSintomas}}</td>
            </tr>
            
        </table>
        @else
            <h2>Informacion de salud no registrada</h2>
        @endif
    @else
        <h3>Usuario no encontrado</h3>
    @endif

@endsection
