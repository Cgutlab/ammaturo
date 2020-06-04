@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('linea') }}">Linea de Tiempo</a></li>
            </ol>
        </nav>
        <h3>Editar</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\LineaController@update', $punto->id)}}">
            @csrf
            @method('PUT')
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <label for="item">A&ntilde;o</label>
                        <input type="text" class="form-control" id="item" name="item"  aria-describedby="ordenHelp" placeholder="Ingrese el orden" value="{{$punto->item}}">
                    </div>
                </div>
            </div>  
            <div class="row">
                @foreach (LaravelLocalization::getSupportedLocales() as $key => $lang)
                <div class="col-6">
                    <div class="form-group">
                        <label for="contenido_{{$key}}">Contenido ({{$lang['name']}})</label>
                        <textarea class="form-control contenido" id="contenido_{{$key}}" name="texto[{{$key}}]" rows="3">{{$punto->texto[$key]}}</textarea>
                    </div>
                </div>
                @endforeach            
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <label for="orden">Orden</label>
                        <input type="text" class="form-control" id="orden" name="orden"  aria-describedby="ordenHelp" placeholder="Ingrese el orden" value="{{$punto->orden}}">
                    </div>
                </div>
            </div>   
            <div class="row ">
                <div class="col-6">
                    <a href="{{ route('linea') }}" class="btn btn-eliminar">Cancelar</a>
                </div>
                <div class="col-6">
                    <button class="btn btn-enviar d-flex align-items-center" type="submit" name="action">Guardar
                        <i class="material-icons right">send</i>
                    </button>
                </div>
            </div>
            </div>
        </form>
    </div>
</div>
@endsection
@push('script')
    <script>
            CKEDITOR.replaceClass = 'contenido';
            CKEDITOR.config.height = '150px';
            CKEDITOR.config.width = '100%';
    </script>
@endpush