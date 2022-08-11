
@extends('layouts.plantilla')

@section('title','Sintomas')
    
@section('content')
    <h1>Encuesta de sintomas: </h1>
    <form action="{{route('virus.store')}}" method="post">
        @csrf
        <label >Virus con el que fue diagnosticado: </label>
        <input type="radio" name="virus" value="viruela del mono" ><label >Viruela del mono </label>
        <input type="radio" name="virus" value="covid" ><label >COVID-19 </label>
        <input type="radio" name="virus" value="variante del covid" ><label >COVID-19 Variantes</label>
        <input type="radio" name="virus" value="no diagnosticado"><label >No diagnosticado</label>
        <br>
        <label >¿Ya fue atendido por un centro de salud?</label>
        <input type="radio" name="atendido" value="si" ><label >SI</label>
        <input type="radio" name="atendido" value="no"> <label >NO</label>
        <br>
        <label>Ingrese el el centro de salud: </label><input type='text' name='centroSalud' id='centroSalud' placeholder="Ingrese el centro de salud...">
        <br>
        <label >Sintomas que presenta: </label>
        <input type="checkbox" name="sintomas[]" value="tos"><label>tos</label>
        <input type="checkbox" name="sintomas[]" value="fiebre"><label >fiebre</label>
        <input type="checkbox" name="sintomas[]" value="erupciones en la piel"><label >erupciones en la piel</label>
        <input type="checkbox" name="sintomas[]" value="dolor de cabeza"><label >dolor de cabeza</label>
        <input type="checkbox" name="sintomas[]" value="dolores musculares"><label >dolores musculares</label>
        <input type="checkbox" name="sintomas[]" value="vomito"><label >vomito</label>
        <br><label for="otroSintoma">Otros Sintomas</label>
        <br><textarea name="otroSintoma" id="otroSintoma" placeholder="Ingrese otros sintomas..." rows="5" cols="40"></textarea>
        <br><input type="submit" value="Enviar" name="enviar">
  

        




    </form>
@endsection
