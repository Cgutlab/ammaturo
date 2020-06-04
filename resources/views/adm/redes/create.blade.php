@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('redes') }}">Redes Sociales</a></li>
            </ol>
        </nav>
        <h5>Editar</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\RedesController@store')}}" >
            @csrf
            @method('POST')
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese el nombre red">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <label for="url">Url</label>
                        <input type="text" class="form-control" id="url" name="url" placeholder="Ingrese la url">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-12 col-lg-12">
                    <label for="icono">Icono</label>
                    <div class="input-group mb-3">
                        <select class="custom-select" name="icono" id="icono">
                            <option selected>Seleccione</option>
                            <option value="fab fa-facebook-square">Facebook</option>
                            <option value="fab fa-instagram">Instagram</option>
                            <option value="fab fa-twitter-square">Twitter</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <a href="{{ route('redes') }}" class="btn btn-eliminar">Cancelar</a>
                </div>
                <div class="col-6">
                    <button class="btn btn-enviar d-flex align-items-center" type="submit" name="action">Guardar
                        <i style="font-size:24px;" class="material-icons">send</i>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection