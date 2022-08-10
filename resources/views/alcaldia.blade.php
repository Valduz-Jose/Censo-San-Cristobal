
@extends('layouts.plantilla')

@section('title','Alcaldia')
    
@section('content')
    <h1>Alcaldia</h1>
    {{-- comment <a href="{{route('alcaldia.post')}}">Publicar una noticia</a> --}} 
    <div>
        <br>
        <form action="{{route('alcaldia.search')}}" method="post">
            @csrf
            <label for="">Buscar usuario: </label>
            <input type="number" name="cedula" id="cedula">
            <br>
            <input type="submit" value="Buscar" name="buscar">
        </form>
    </div>

    <div>
        <h3>Reportes: </h3>
        <br>
        <p>Cantidad de personas contagiadas: </p>
        <label for="">Covid:</label>
        <br>
        <label for="">Viruela del mono: </label>
        <h4>Estadistica de sintomas presentados: </h4>
        <canvas></canvas>
    </div>
    <br>
    
@endsection
