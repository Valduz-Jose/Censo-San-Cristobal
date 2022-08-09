
@extends('layouts.plantilla')

@section('title','Login')
    
@section('content')
    <h1>Login</h1>
    <form action="login" method="post">
        @csrf
        username/email
        <input type="email" name="email" id="">
        password
        <input type="password" name="password" id="">
        <input type="submit" value="Login">
    </form>
@endsection
