
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    {{-- <a class="navbar-brand" href="home"><img src="assets/img/city3.svg" alt="" width="54" height="54"></a> --}}
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="home"><img src="assets/img/city3.svg" alt="" width="44" height="44">   Home</a>
          </li>
          @auth
          
          <form action="{{route('navBar.search')}}" method="POST" class="d-flex" role="search">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="noticias"><img src="assets/img/news.svg" alt="" width="44" height="44">   Noticias</a>
            </li>
          </ul>
          {{-- Boton de busqueda--}}
          @if (auth()->user()->credencial== "7777")    
          @csrf
          <input name="cedula" class="form-control me-2" type="search" placeholder="Cedula a Buscar" aria-label="Search">
          <button name="buscar" class="btn btn-outline-info" type="submit">Buscar</button>
          @endif
          {{-- Submenu --}}
          <ul class="navbar-nav me-5 mb-2 mb-lg-0">   
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" id="navbarDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                {{auth()->user()->name}}
              </a>
              <ul class="dropdown-menu">
                {{-- Menu para Usuario --}}
                {{-- @if (auth()->user()->credencial== "0") 
                <li><a class="dropdown-item" href="https://policlinicametropolitana.org/informacion-de-salud/viruela-del-mono-origen-sintomas-y-tipos-de-contagio/">Enfermedad del Mono</a></li>  
                @endif
                 --}}
                {{-- Menu para Alcaldia --}}
                @if (auth()->user()->credencial== "7777")    
                <li><a class="dropdown-item" href="CrearNoticia">Crear Noticia</a></li>
                <li><a class="dropdown-item" href="alcaldia">Reportes</a></li>
                @endif
                {{-- lOGOUT --}}
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="logout">Logout</a></li>
                
              </ul>
            </li>
          </ul>
          {{-- Cierre Submenu --}}
          
        </form>
        @endauth
      </div>
    </div>
  </nav>