<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{url('assets/css/bootstrap.min.css')}}">
    {{-- a los contenidos variables les agrego
        @yield --}}
        <!-- header -->
    <title>@yield('title')</title>
    <!-- Favicon -->
    <!-- estilos -->
</head>
<body>
    <!-- nav -->
    @include('layouts.partials.navbar')
    <main>
        <div class="container-fluid">
            @yield('content')
        </div>
    </main>
    <script src="{{url('assets/js/bootstrap.min.js')}}"></script>
    
    <!-- footer -->
    <footer>
        @auth
            <br><p class="text-center">Bienvenido {{auth()->user()->name ?? auth()->user()->email}}, estas autenticado</p>
            <p class="text-center"><a href="logout">Logout</a></p>
        @endauth
         </footer>

    <!-- script -->
    <script src="{{url('assets/js/bootstrap.bundle.min.js')}}"></script>
</body>

</html>