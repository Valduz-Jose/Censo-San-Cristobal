
@extends('layouts.plantillaregistros')

@section('title','Sintomas')
    
@section('content')
    <h1>Encuesta de sintomas</h1>
    <form action="{{route('virus.store')}}" method="post">
        @csrf
        <div>
            <div class="badge bg-primary text-wrap fs-6">
                Virus con el que fue diagnosticado
            </div>
            <div class="form-check">
                <input name="virus" value="viruelaMono" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                    Viruela del mono 
                </label>
            </div>
    
            <div class="form-check">
                <input name="virus" value="covid" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                    COVID-19 
                </label>
            </div>
            
            <div class="form-check">
                <input name="virus" value="noDiagnosticado" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                    No diagnosticado 
                </label>
            </div>
            
            <div class="badge bg-primary text-wrap fs-6">
                ¿Ya fue atendido por un centro de salud?
            </div>
            
            <div class="form-check">
                <input name="atendido" value="si" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                    Si 
                </label>
            </div>
            
            <div class="form-check">
                <input name="atendido" value="no" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                    No 
                </label>
            </div>
            
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label badge bg-primary text-wrap fs-6">Ingrese el el centro de salud: </label>
                <input placeholder="Ingrese el centro de salud" type="text" name='centroSalud' class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
            </div>
            
            <div class="badge bg-primary text-wrap fs-6">
                Sintomas que presenta
            </div>
            <div class="form-check">
                <input class="form-check-input" name="sintomas[]" type="checkbox" value="tos" id="defaultCheck1">
                <label class="form-check-label" for="defaultCheck1">
                  Tos
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" name="sintomas[]" type="checkbox" value="fiebre" id="defaultCheck1">
                <label class="form-check-label" for="defaultCheck1">
                  Fiebre
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" name="sintomas[]" type="checkbox" value="erupciones en la piel" id="defaultCheck1">
                <label class="form-check-label" for="defaultCheck1">
                    Erupciones en la piel
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" name="sintomas[]" type="checkbox" value="dolor de cabeza" id="defaultCheck1">
                <label class="form-check-label" for="defaultCheck1">
                    Dolor de cabeza
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" name="sintomas[]" type="checkbox" value="dolores musculares" id="defaultCheck1">
                <label class="form-check-label" for="defaultCheck1">
                    Dolores musculares
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" name="sintomas[]" type="checkbox" value="vomito" id="defaultCheck1">
                <label class="form-check-label" for="defaultCheck1">
                  Vomito
                </label>
            </div>
    
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label badge bg-primary text-wrap fs-6">Otros Sintomas</label>
                <textarea name="otroSintoma" id="otroSintoma" placeholder="Ingrese otros sintomas" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
    
            <div class="d-grid gap-2 col-6 mx-auto">
                <input class="btn btn-primary" type="submit" value="Enviar" name="enviar">
            </div>
            @auth
                <p class="text-center">Bienvenido {{auth()->user()->name ?? auth()->user()->email}}, estas autenticado</p>
            @endauth
        </div>
    </form>
@endsection
