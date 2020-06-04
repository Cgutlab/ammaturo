@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('ingenierias') }}">Ingenierias</a></li>
            </ol>
        </nav>
        <h3>Editar</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\IngenieriaController@update', $item->id)}}">
            @csrf
            @method('PUT')
            <div class="row">
                <div class="col-12">
                    <div class="input-group mb-3">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" onChange="readURL(this, 'img_label')" name="imagen" id="imagen" aria-describedby="inputGroupFileAddon01">
                            <label class="custom-file-label" id="img_label" for="imagen">Seleccione (Tamaño recomendado: 80x80px)</label>
                        </div>
                    </div>
                    <div>
                        <img class="img_slider" src="{{ asset($item->imagen) }}" alt="">
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach (LaravelLocalization::getSupportedLocales() as $key => $lang)
                <div class="col-6">
                    <div class="form-group">
                        <label for="titulo">T&iacute;tulo({{$lang['name']}})</label>
                        <input type="text" class="form-control" id="titulo" name="titulo[{{$key}}]"  aria-describedby="ordenHelp" placeholder="Ingrese el título" value="{{$item->titulo[$key]}}">
                    </div>
                    <div class="form-group">
                        <label for="subtitulo">SubT&iacute;tulo({{$lang['name']}})</label>
                        <input type="text" class="form-control" id="subtitulo" name="subtitulo[{{$key}}]"  aria-describedby="ordenHelp" placeholder="Ingrese el subtítulo" value="{{$item->subtitulo[$key]}}">
                    </div>
                    <div class="form-group">
                        <label for="contenido_{{$key}}">Contenido ({{$lang['name']}})</label>
                        <textarea class="form-control contenido" id="contenido_{{$key}}" name="contenido[{{$key}}]"  rows="3">{{$item->texto[$key]}}</textarea>
                    </div>
                </div>
                @endforeach            
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <label for="orden">Orden</label>
                        <input type="text" class="form-control" id="orden" name="orden"  aria-describedby="ordenHelp" placeholder="Ingrese el orden" value="{{$item->orden}}">
                    </div>
                </div>
            </div>   
            <div class="row ">
                <div class="col-6">
                    <a href="{{ route('ingenierias') }}" class="btn btn-eliminar">Cancelar</a>
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