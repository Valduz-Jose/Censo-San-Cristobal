<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{url('assets/css/bootstrap.min.css')}}">
    {{-- a los contenidos variables les agrego
        @yield --}}
    <title>@yield('title')</title>
    <!-- Favicon -->
    <!-- estilos -->
    <style>
        body{
            width: 100%;
            /* height: 145vh; */
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top:40px;
        }
        .form-container{
            width: 400px;
        }
    </style>
</head>
<body>
    <main class="form-container">
        <div class="container  fluid">
            @yield('content')
        </div>
        
    </main>
    <script src="{{url('assets/js/bootstrap.min.js')}}"></script>
    <!-- header -->
    <!-- nav -->
    <!-- footer -->
    <!-- script -->
</body>
</html>