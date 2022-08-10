{{-- direcciono a mi plantilla --}}
@extends('layouts.plantilla')

@section('title','Crear Noicia')
    
@section('content')
<div class="container-fluid">
    <h1 class="text-center">Bienvenido al Censo San Cristobal</h1>
    <hr class="border border-primary border-3 opacity-75">
            {{-- Si esta autenticado --}}
            @auth
                <form action="noticias" method="post">
                    @csrf
                    <div class="container-fluid">
                        <div class="row justify-content-center">
                            <div class="col-6">
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Titulo">
                                    <label for="exampleFormControlInput1"  class="form-label">Titulo de la Noticia</label>
                                </div>
                                <div class=" mb-3">
                                    <label for="exampleFormControlTextarea1" class="form-label">Descripción del Contenido</label>
                                    <textarea class="form-control" placeholder="Contenido" id="exampleFormControlTextarea1" rows="3"></textarea>
                                </div>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <button type="submit" class="btn btn-primary">Crear Noticia</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            @endauth
            {{-- No Autenticado --}}
            @guest
                {{view('home')}}
            @endguest
    </div>    
@endsection
