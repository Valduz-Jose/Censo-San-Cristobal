
@extends('layouts.plantilla')

@section('title','Sintomas '.$name)
    
@section('content')
    <h1>Sintomas del Paciente {{$name}}</h1>{{-- directiva para imprimir una variable php{{}} --}}
@endsection

