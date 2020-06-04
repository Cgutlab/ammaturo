@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('categorias') }}">Categorias</a></li>
            </ol>
        </nav>
        <h3>Nuevo</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\CategoriasController@store')}}">
            @csrf
            <div class="row">
                    @foreach (LaravelLocalization::getSupportedLocales() as $key => $lang)
                    <div class="col-6">
                        <div class="form-group">
                            <label for="nombre">Nombre ({{$lang['name']}})</label>
                            <input type="text" class="form-control" id="nombre" name="nombre[{{$key}}]"  aria-describedby="nombreHelp" placeholder="Ingrese el nombre">
                        </div>
                    </div>
                    @endforeach
                </div>         
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <label for="orden">Orden</label>
                        <input type="text" class="form-control" id="orden" name="orden"  aria-describedby="ordenHelp" placeholder="Ingrese el orden">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <a href="{{ route('categorias') }}" class="btn btn-eliminar">Cancelar</a>
                </div>
                <div class="col-6">
                    <button class="btn btn-enviar d-flex align-items-center" type="submit" name="action">Guardar
                        <i class="material-icons right">send</i>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection