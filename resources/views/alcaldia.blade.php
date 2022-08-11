
@extends('layouts.plantilla')

@section('title','Alcaldia')
    
@section('content')
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js" integrity="sha512-ElRFoEQdI5Ht6kZvyzXhYG9NqjtkmlkfYk0wr6wHxU9JEHakS7UJZNeml5ALk+8IKlU6jDgMabC3vkumRokgJA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <h1>Alcaldia</h1>
    {{-- comment <a href="{{route('alcaldia.post')}}">Publicar una noticia</a> --}} 


    <div>
        <h3>Reportes: </h3>
        <br>
        <p>Cantidad de personas contagiadas: </p>
        <label for="">COVID-19: {{$r1['covid']}}</label>
        <br>
        <label for="">Variantes del COVID: {{$r1['variante']}} </label>
        <br>
        <label for="">Viruela del mono: {{$r1['viruela']}} </label>
        <br>
        <label for="">No Diagnosticados: {{$r1['nodiagnosticado']}}</label>
        <h4>Estadistica de sintomas presentados: </h4>
        <div style="height: 500px">
            <canvas id='estadisticas' ></canvas>
        </div>
        <script>
            var ctx= document.getElementById('estadisticas');
            var mychart= new Chart(ctx, {
                type:"pie", 
                data: {
                    labels:['Tos','Fiebre',"Erupciones en la piel", "Dolor de cabeza", "Dolores musculares", "Vomito", "Otros sintomas"],
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
    
@endsection
