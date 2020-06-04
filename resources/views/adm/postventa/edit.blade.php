@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="">Post-Venta</a></li>
            </ol>
        </nav>
        <h3>Post-Venta</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\PostVentaController@update', $postventa->id)}}">
            @csrf
            @method('PUT')
            <div class="row">           
                @foreach (LaravelLocalization::getSupportedLocales() as $key => $lang)
                <div class="col-6">
                    <div class="form-group">
                        <label for="titulo_{{$key}}">T&iacute;tulo ({{$lang['name']}}):</label>
                        <input type="text" class="form-control" id="titulo_{{$key}}" name="titulo[{{$key}}]"  aria-describedby="ordenHelp" placeholder="Ingrese el titulo" value="{{$postventa->titulo[$key]}}">
                    </div>
                    <div class="form-group">
                        <label for="contenido_{{$key}}">Descripci&oacute;n ({{$lang['name']}}):</label>
                        <textarea class="form-control contenido" id="contenido_{{$key}}" name="descripcion[{{$key}}]"  rows="3">{{$postventa->descripcion[$key]}}</textarea>
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