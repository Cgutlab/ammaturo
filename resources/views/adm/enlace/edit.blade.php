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
                <li class="breadcrumb-item"><a class="breadcrump-element" href="">Enlace</a></li>
            </ol>
        </nav>
        <h3>Enlace</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\EnlaceController@update', $enlace->id)}}">
            @csrf
            @method('PUT')
            <div class="row">           
                @foreach (LaravelLocalization::getSupportedLocales() as $key => $lang)
                <div class="col-6">
                    <div class="form-group">
                        <label for="titulo_{{$key}}">T&iacute;tulo({{$lang['name']}}):</label>
                        <input type="text" class="form-control" id="titulo_{{$key}}" name="titulo[{{$key}}]"  aria-describedby="ordenHelp" placeholder="Ingrese el orden" value="{{$enlace->titulo[$key]}}">
                    </div>
                    <div class="form-group">
                        <label for="contenido_{{$key}}">Descripci&oacute;n({{$lang['name']}}):</label>
                        <textarea class="form-control contenido" id="contenido_{{$key}}" name="descripcion[{{$key}}]"  rows="3">{{$enlace->descripcion[$key]}}</textarea>
                    </div>
                </div>
                @endforeach  
            </div>
            <div class="row">
                    <div class="col-6">
                        <label for="imagen">Imagen</label>
                        <div class="input-group mb-3">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" onChange="readURL(this, 'img_label')" name="imagen" id="imagen" aria-describedby="inputGroupFileAddon01" >
                                <label class="custom-file-label" id="img_label" for="imagen">Seleccione la imagen (Tamaño recomendado: 1400x450px)</label>
                            </div>
                        </div>
                        <div class="imagen_show">
                            <img class="img_slider" src="{{ asset($enlace->imagen) }}" alt="">
                        </div>
                    </div>
                    <div class="col-6">
                        <label for="logo">Logo</label>
                        <div class="input-group mb-3">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" onChange="readURL(this, 'logo_label')" name="logo" id="logo" aria-describedby="inputGroupFileAddon01" >
                                <label class="custom-file-label" id="logo_label" for="logo">Seleccione la imagen (Tamaño recomendado: 245x45px)</label>
                            </div>
                        </div>
                        <div class="imagen">
                            <img src="{{ asset($enlace->logo) }}" alt="">
                        </div>
                    </div>
                </div>
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <label for="orden">URL</label>
                        <input type="text" class="form-control" id="orden" name="url"  aria-describedby="ordenHelp" placeholder="Ingrese el orden" value="{{$enlace->url}}">
                    </div>
                </div>
            </div>  
                <div class="row">
                    <div class="col-12">
                        <button class="btn btn-enviar d-flex align-items-center" type="submit" name="action">Guardar 
                            <i style="font-size:24px;" class="material-icons">send</i>
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