{{-- Condicionales para ver que muestro --}}
@if (isset($errors) && count($errors)>0)
    <div class="alert alert-danger">
        <ul class="list-unstyled mb-0">
            {{-- Lista de erorres --}}
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

{{-- Para el Succes --}}
@if (Session::get('success',false))
    {{-- Obtengo todos los datos --}}
    <?php $data = Session::get('success');?>
    @if (is_array($data))
        @foreach ($data as $message)
            <div class="alert alert-success">
                <i class="fa fa-check"></i>
                {{$data}}
            </div>
        @endforeach
    @else
        <div class="alert alert-success">
            <i class="fa fa-check"></i>
            {{$data}}
        </div>
    @endif
@endif
