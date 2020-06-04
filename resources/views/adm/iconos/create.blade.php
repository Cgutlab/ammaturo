@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('iconos', $seccion) }}">Iconos</a></li>
            </ol>
        </nav>
        <h3>Nuevo</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\IconosController@store')}}">
            @csrf
            <input type="hidden" name="seccion" value="{{$seccion}}">
            <div class="row">
                <div class="col-12">
                    <div class="input-group mb-3">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" onChange="readURL(this, 'img_label')" name="imagen" id="imagen" aria-describedby="inputGroupFileAddon01">
                            <label class="custom-file-label" id="img_label" for="imagen">Seleccione (Tamaño recomendado: 69x60px)</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach (LaravelLocalization::getSupportedLocales() as $key => $lang)
                <div class="col-6">
                    <div class="form-group">
                        <label for="titulo">T&iacute;tulo({{$lang['name']}})</label>
                        <input type="text" class="form-control" id="titulo" name="titulo[{{$key}}]"  aria-describedby="ordenHelp" placeholder="Ingrese el titulo">
                    </div>
                    @if($seccion == 'home')
                    <div class="form-group">
                        <label for="contenido_{{$key}}">Contenido ({{$lang['name']}})</label>
                        <textarea class="form-control contenido" id="contenido_{{$key}}" name="contenido[{{$key}}]"  rows="3"></textarea>
                    </div>
                    @endif
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
            <div class="row ">
                <div class="col-6">
                    <a href="{{ route('iconos', $seccion) }}" class="btn btn-eliminar">Cancelar</a>
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