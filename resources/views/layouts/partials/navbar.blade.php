<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class= "container-fluid">
      <a class="navbar-brand" href="#"><img src="/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="30" height="24"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="home">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="noticias">Noticias</a>
          </li>
          {{-- Menu para Alcaldia --}}
          @if (auth()->user()->credencial== "7777")    
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="CrearNoticia">Crear Noticia</a>
            </li>
          @endif
          {{-- <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li> --}}
          <li class="nav-item">
            <a class="nav-link disabled">Creacion</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
          <ul class="navbar-nav me-5 mb-2 mb-lg-0">
            {{-- <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Link</a>
            </li> --}}
            @auth    
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                {{auth()->user()->name ?? auth()->user()->email}}
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="home">Estadisticas</a></li>
                <li><a class="dropdown-item" href="CrearNoticia">Crear Noticia</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="Logout">Logout</a></li>
              </ul>
            </li>
            @endauth
            <li class="nav-item">
              <a class="nav-link disabled"></a>
            </li>
          </ul>
        </form>
      </div>
    </div>
  </nav>