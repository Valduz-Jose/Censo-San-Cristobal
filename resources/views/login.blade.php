
@extends('layouts.plantillaregistros')

@section('title','Login')
    
@section('content')
    <h1 class="text-center">Login</h1>
    <form action="login" method="post">
        @csrf
        @include('layouts.partials.messages')
        <div class="mb-3 form-floating">
          <input type="email" placeholder="Email address" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          <label for="exampleInputEmail1" class="form-label">Email address</label>
          <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
        <div class="mb-3 form-floating">
          <input type="password" placeholder="Password" name="password" class="form-control" id="exampleInputPassword1">
          <label for="exampleInputPassword1" class="form-label">Password</label>
        </div>
        <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Recordarme</label>
            
        </div>
        <div class="d-grid gap-2 col-6 mx-auto">
            <button type="submit" class="btn btn-primary">Login</button>
        <p>Or <a href="singup">Singup</a></p>
        </div>
    </form>
@endsection

