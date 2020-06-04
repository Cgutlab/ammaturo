@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    @if(session('alert'))
    <div class="msg bg-success text-white text-center py-1">
        <p class="m-0">{{session('alert')}}</p>
    </div>
    @endif
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="">Empresa</a></li>
            </ol>
        </nav>
        <h3>Empresa</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\EmpresaController@update', $empresa->id)}}">
            @csrf
            @method('PUT')
            <div class="row">           
                @foreach (LaravelLocalization::getSupportedLocales() as $key => $lang)
                <div class="col-6">
                    <div class="form-group">
                        <label for="titulo_{{$key}}">T&iacute;tulo ({{$lang['name']}}):</label>
                        <input type="text" class="form-control" id="titulo_{{$key}}" name="titulo[{{$key}}]"  aria-describedby="ordenHelp" placeholder="Ingrese el titulo" value="{{$empresa->titulo[$key]}}">
                    </div>
                    <div class="form-group">
                        <label for="contenido_{{$key}}">Descripci&oacute;n ({{$lang['name']}}):</label>
                        <textarea class="form-control contenido" id="contenido_{{$key}}" name="descripcion[{{$key}}]"  rows="3">{{$empresa->descripcion[$key]}}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="antiguedad_{{$key}}">Antiguedad ({{$lang['name']}}):</label>
                        <textarea class="form-control contenido" id="antiguedad_{{$key}}" name="antiguedad[{{$key}}]"  rows="3">{{$empresa->antiguedad[$key]}}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="trayectoria_{{$key}}">Trayectoria ({{$lang['name']}}):</label>
                        <textarea class="form-control contenido" id="trayectoria_{{$key}}" name="trayectoria[{{$key}}]"  rows="3">{{$empresa->trayectoria[$key]}}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="clientes_{{$key}}">Clientes ({{$lang['name']}}):</label>
                        <textarea class="form-control contenido" id="clientes_{{$key}}" name="clientes[{{$key}}]"  rows="3">{{$empresa->clientes[$key]}}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="video">Video ({{$lang['name']}})</label>
                        <p>Nota: Debera ingresar solamente el codigo al final del enlace del video
                            <br>Ejm: www.youtube.com/watch?v=<strong>emeqwgwqeMs</strong>
                        </p>
                        <input type="text" class="form-control" id="video" name="video[{{$key}}]"  aria-describedby="videoHelp" placeholder="Ingrese el codigo del video" value="{{$empresa->video[$key]}}">
                    </div>
                </div>
                @endforeach  
            </div> 
            <div class="row">
                <div class="col-12">
                    <button class="btn btn-enviar d-flex align-items-center" type="submit" name="action">Guardar 
                        <i style="font-size:24px;" class="material-icons">send</i>
                    </button>
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