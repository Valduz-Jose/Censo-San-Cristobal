<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{url('assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="shortcut icon"   href="{{url('assets/img/robot2.svg')}}" type="image/x-icon">
    
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
    <footer class="bd-footer py-4 py-md-5 mt-5 bg-light">
        @auth
            <br><p class="text-center">Bienvenido {{auth()->user()->name ?? auth()->user()->email}}, estas autenticado</p>
            <p class="text-center"><a href="logout">Logout</a></p>
        @endauth
    <div class="container py-4 py-md-5 px-4 px-md-3">
        <div class="row">
            <div class="col-lg-3 mb-3">
                <a class="d-inline-flex align-items-center mb-2 link-dark text-decoration-none" href="https://github.com/Valduz-Jose/Censo-San-Cristobal.git" aria-label="Repositorio en Github">
                    <svg aria-hidden="true" height="24" viewBox="0 0 16 16" version="1.1" width="24" data-view-component="true" class="octicon octicon-mark-github">
                    <path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path>
                    </svg>
                    <ul class="list-unstyled small text-muted">
                        <li class="mb-2">Designed and built with all the love in the world by @José.Valduz and @Frank.Benítez</a>.</li>
                        <li class="mb-2">Version v1.0</li>
                    </ul>
                </a>
            </div>
        </div>
    </div>
    </footer>

    <!-- script -->
    <script src="{{url('assets/js/bootstrap.bundle.min.js')}}"></script>
</body>

</html>