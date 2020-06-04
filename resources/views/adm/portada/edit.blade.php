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
                <li class="breadcrumb-item"><a class="breadcrump-element" href="">Portada</a></li>
            </ol>
        </nav>
        <h3>Editar Portada</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\PortadaController@update', $portada->id)}}">
            @csrf
            @method('PUT')
            <div class="row">
                <input type="hidden" name="seccion" value="{{$seccion}}">
                <div class="col-12">
                    <label for="imagen">Imagen</label>
                    <div class="input-group mb-3">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" onChange="readURL(this, 'img_label')" name="imagen" id="imagen" aria-describedby="inputGroupFileAddon01" >
                            <label class="custom-file-label" id="img_label" for="imagen">Seleccione la imagen (Tamaño recomendado: 1400x108px)</label>
                        </div>
                    </div>
                    <div class="imagen_show">
                        <img class="img_slider mw-100" src="{{ asset($portada->imagen) }}" alt="">
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