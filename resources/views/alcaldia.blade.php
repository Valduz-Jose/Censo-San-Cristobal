
@extends('layouts.plantilla')

@section('title','Alcaldia')
    
@section('content')
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js" integrity="sha512-ElRFoEQdI5Ht6kZvyzXhYG9NqjtkmlkfYk0wr6wHxU9JEHakS7UJZNeml5ALk+8IKlU6jDgMabC3vkumRokgJA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    {{-- <h1 class="text-center">Alcaldia</h1> --}}
    {{-- comment <a href="{{route('alcaldia.post')}}">Publicar una noticia</a> --}} 
    <hr class="border border-primary border-3 opacity-75">
            
    <div>
        <p class="fw-semibold fs-2 text-decoration-underline">Reportes </p>
        
        <div class="border border-primary border border-5">
            <p class="fw-bolde fs-3" >Cantidad de personas contagiadas: </p>
            <label class="fs-6" for="">COVID-19: {{$r1['covid']}}</label>
            <br>
            <label class="fs-6"for="">Variantes del COVID: {{$r1['variante']}} </label>
            <br>
            <label class="fs-6"for="">Viruela del mono: {{$r1['viruela']}} </label>
            <br>
            <label class="fs-6"for="">No Diagnosticados: {{$r1['nodiagnosticado']}}</label>
        </div><br>
        <hr class="border border-primary border-3 opacity-75">

        <p class="fw-semibold fs-2 text-decoration-underline" >Estadistica de sintomas presentados </p>
        <div class="border border-primary border border-5">
            <div style="height: 800px">
                <canvas id='estadisticas' ></canvas>
            </div>
            <script>
                var ctx= document.getElementById('estadisticas');
                var mychart= new Chart(ctx, {
                    type:"pie", 
                    data: {
                        labels: ['Tos','Fiebre',"Erupciones en la piel", "Dolor de cabeza", "Dolores musculares", "Vomito", "Otros sintomas"],
                        datasets:[{
                            label:"Numero de personas con estos sintomas",
                            data:[ 
                                {{$r2['tos']}},
                                {{$r2['fiebre']}},
                                {{$r2['erupciones']}},
                                {{$r2['dolor_cabeza']}},
                                {{$r2['dolores_musculares']}},
                                {{$r2['vomito']}},
                                {{$r2['otroSintoma']}},
                            ],

                            backgroundColor:[
                                '#FF5733',
                                '#E6FF33',
                                '#33FFA5',
                                '#FF33E0',
                                '#33FF42',
                                '#3386FF',
                                '#5344D3'
                            ]
                        }]
                    },
                    options: { 
                        responsive:true,
                        maintainAspectRatio: false,
                    }


                });

            </script>
        </div>
        <br>
    </div>    
@endsection
