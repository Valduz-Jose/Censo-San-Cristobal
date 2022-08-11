
@extends('layouts.plantilla')

@section('title','Noticias')
    
@section('content')
{{-- <div class="container-fluid"> --}}
    <h1 class="text-center">Noticias</h1>
    <hr class="border border-primary border-3 opacity-75">
    <div class="row">
    @foreach ($noticias as $noticia)
        <div class="col-sm-6">
            <div class="card ">
                <div class="card-body">
                    <img src="..." class="card-img-top" alt="...">
                    <h5 class="card-title">{{$noticia->titulo}}</h5>
                    <p class="card-text">{{$noticia->descripcion}}</p>
                </div>
            </div>
        </div>
    @endforeach
    </div>
    {{$noticias->links()}}
{{-- </div> --}}
@endsection
{{-- <ul>
    @foreach ($noticias as $noticia)
        <li>{{$noticia->titulo}}</li>   
    @endforeach
</ul> --}}