
@extends('layouts.plantilla')

@section('title','Noticias')
    
@section('content')
    <h1>Noticias</h1>
    <ul>
        @foreach ($noticias as $noticia)
            <li>{{$noticia->titulo}}</li>   
        @endforeach
    </ul>
    {{$noticias->links()}}
@endsection
