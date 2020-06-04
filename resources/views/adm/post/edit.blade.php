@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('posts') }}">Posts</a></li>
            </ol>
        </nav>
        <h5 class="mb-4">Editar Posts</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\BlogsController@update', $post->id)}}" >
            @csrf
            @method('PUT')
            <div class="row">
                @foreach (LaravelLocalization::getSupportedLocales() as $key => $lang)
                <div class="col-6">
                    <div class="form-group">
                        <label for="titulo">Nombre ({{$lang['name']}})</label>
                        <input type="text" class="form-control" id="titulo" name="titulo[{{$key}}]" placeholder="Ingrese el título" value="{{$post->titulo[$key]}}">
                    </div>
                    <div class="form-group">
                        <label for="descripcion">Descripci&oacute;n ({{$lang['name']}})</label>
                        <textarea class="form-control descripcion" id="descripcion" name="descripcion[{{$key}}]"  rows="3">
                            {!!$post->descripcion[$key]!!}
                        </textarea>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="row">
                <div class="col-12 d-flex flex-column">
                    <p class="my-3">Galeria de imagenes. Tamaño Recomendado: 385x375px</p>
                    <div>
                        <button class="btn btn-eliminar" onClick="agregarImagen()" type="button">Agregar Imagen</button>
                    </div>
                </div>
            </div>
            <div id="imagenes" class="row mb-4"></div>
            <div class="row">
                <div class="col-6">
                    <div class="form-group">
                        <label for="orden">Orden</label>
                        <input type="text" class="form-control" id="orden" name="orden" placeholder="Ingrese el orden" value="{{$post->orden}}">
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="categoria">Categorias</label>
                        <select class="js-example-basic-single form-control" id="categoria" name="categoria" >
                        <option value="0">Seleccione una categoria</option>
                            @foreach($categorias as $categoria)
                                <option value="{{$categoria->id}}">{{$categoria->nombreselect_format}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <a href="{{ route('posts') }}" class="btn btn-eliminar">Cancelar</a>
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
@push('script')
    <script>
        //Asignamos los valores dinamicos del producto
        post_id          = {!! $post->id !!}
        categoria_post   = {!! $post->categoria_id !!}
        galeria          = {!! $galeria !!}

        CKEDITOR.replaceClass  = 'descripcion';
        CKEDITOR.config.height = '150px';
        CKEDITOR.config.width = '100%';
        
        $('#categoria').val(categoria_post)

    //cargamos las imagenes de la galeria
    for (let i = 0; i < galeria.length; i++) {
        if(window.contadorI === undefined)
            window.contadorI = 0
        window.contadorI++
        imagen = galeria[i].imagen
        ruta_img = `{{asset('')}}`
        let html = '';
        html+= '<div class="col-6 imagen">';
            html+= '<div class="card" style="border-radius:0;">';
                html+= '<div class="boton-borrar">';
                    html+= '<button class="btn btn-danger" onClick="removerImagen(this)" type="button" style="border-radius:0;">X</button>';
                html+= '</div>';
                html+= '<div class="row">';
                    html+= '<div class="col-12 d-flex justify-content-center">';
                    html+= `<img src="${ruta_img+galeria[i].imagen}" class="imagen_producto">`;
                    html+= '</div>';
                html+= '</div>';
                html+= '<div class="row">';
                    html+= '<div class="col-6">';
                        html+= '<div class="custom-file">';
                            html+= `<input type="file" class="custom-file-input" name="imagenes[]" id="imagen-${window.contadorI}" style="border-radius:0;" aria-describedby="inputGroupFileAddon01">`;
                            html+= ` <input type="hidden" name="imagen_e[]" value="${galeria[i].imagen}">`;
                            html+= ` <label class="custom-file-label" style="border-radius:0;" for="imagen-${window.contadorI}">Subir</label>`;
                    html+= '</div>';
                html+= '</div>';
                html+= '<div class="col-6">';
                    html+= '<div class="form-group">';
                        html+= ` <input type="text" class="form-control" style="border-radius:0;" id="orden-${window.contadorI}" name="orden_imagen[]" placeholder="Ingrese el  orden" value="${galeria[i].orden}">`;
                    html+= '</div>';
                html+= '</div>';
            html+= '</div>';
        html+= '</div>';
        $('#imagenes').append(html)
    }
    
    //Creamos una variable global para contar las imagenes subidas e incrementamos
    //Creamos un elemento Html donde declaramos el los campos de imagen y Orden de la imagen
        function agregarImagen(){
            if(window.contadorI === undefined)
                window.contadorI = 0
            window.contadorI++
            let html = '';
            html+= '<div class="col-6 imagen">';
                html+= '<div class="card" style="border-radius:0;">';
                    html+= '<div class="boton-borrar">';
                        html+= '<button class="btn btn-danger" style="border-radius:0;" onClick="removerImagen(this)" type="button">X</button>';
                    html+= '</div>';
                    html+= '<div class="row">';
                        html+= '<div class="col-6">';
                            html+= '<div class="custom-file">';
                                html+= `<input type="file" style="border-radius:0;" class="custom-file-input" name="imagenes[]" id="imagen-${window.contadorI}" aria-describedby="inputGroupFileAddon01">`;
                                html+= ` <input type="hidden" name="imagen_e[]" >`;
                                html+= ` <label class="custom-file-label" style="border-radius:0;" for="imagen-${window.contadorI}">Subir</label>`;
                        html+= '</div>';
                    html+= '</div>';
                    html+= '<div class="col-6">';
                        html+= '<div class="form-group">';
                            html+= ` <input type="text" class="form-control" style="border-radius:0;" id="orden-${window.contadorI}" name="orden_imagen[]" placeholder="Ingrese el orden">`;
                        html+= '</div>';
                    html+= '</div>';
                html+= '</div>';
            html+= '</div>';
            $('#imagenes').append(html)
        }

        //Elimina la imagen creada mas cercada a la clase .imagen y disminuye en 1 el contadpr
        function removerImagen(t){
            $(t).closest(".imagen").remove();
            window.contadorI--;
        }
    </script>
@endpush