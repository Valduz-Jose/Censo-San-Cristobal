{{-- direcciono a mi plantilla --}}
@extends('layouts.plantilla')

@section('title','Home')
    
@section('content')
{{-- Si esta autenticado --}}
    <h1 class="text-center">Bienvenido al Censo San Cristobal</h1>
        <hr class="border border-primary border-3 opacity-75">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
              
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="assets/img/foto2.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>San Cristobal Se cuida</h5>
                  <p></p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="assets/img/foto1.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>¿Conoces Sobre el Virus?</h5>
                  <p></p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="assets/img/foto3.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>¿Ya te Vacunaste? </h5>
                  <p>Conoce los Centros de Salud mas cercanos</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="assets/img/foto4.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Indices de Contagios</h5>
                  <p>Se logra reducir el número de contagios Diarios</p>
                </div>
              </div>
              
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
    
@endsection
