@extends('adm.layouts.app')
@section('content')
    <div class="contenido">
        <div class="col-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb" style="background:none;">
                    <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                    <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('productos') }}">Productos</a></li>
                </ol>
            </nav>
            <h5 class="mb-4">Nuevo Producto</h5>
            <div class="divider"></div>
            <form method="POST"  enctype="multipart/form-data" action="{{action('adm\ProductoController@store')}}" >
                @csrf
                @method('POST')
                <div class="row">
                    @foreach (LaravelLocalization::getSupportedLocales() as $key => $lang)
                    <div class="col-6">
                        <div class="form-group">
                            <label for="nombre">Nombre ({{$lang['name']}})</label>
                            <input type="text" class="form-control" id="nombre" name="nombre[{{$key}}]" placeholder="Ingrese el nombre">
                        </div>
                        <div class="form-group">
                            <label for="descripcion">Descripci&oacute;n ({{$lang['name']}})</label>
                            <textarea class="form-control descripcion" id="descripcion" name="descripcion[{{$key}}]"  rows="3"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="descripcion">Caracter&iacute;sticas ({{$lang['name']}})</label>
                            <textarea class="form-control descripcion" id="descripcion" name="caracteristicas[{{$key}}]"  rows="3"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="video_{{$key}}">Video ({{$lang['name']}})</label>
                            <p>Nota: Debera ingresar solamente el codigo al final del enlace del video
                                <br>Ejm: www.youtube.com/watch?v=<strong>emeqwgwqeMs</strong>
                            </p>
                            <input type="text" class="form-control" id="video_{{$key}}" name="video[{{$key}}]"  aria-describedby="videoHelp" placeholder="Ingrese el codigo del video">
                        </div>
                        <div class="form-group">
                        <label for="archivo_{{$key}}">Archivo ({{$lang['name']}})</label>
                            <div class="input-group mb-3">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" onChange="readURL(this, 'archivo_label_{{$key}}')" name="archivo[{{$key}}]" id="archivo_{{$key}}" aria-describedby="inputGroupFileAddon01">
                                    <label class="custom-file-label" id="archivo_label_{{$key}}" for="plano">Seleccione el archivo</label>
                                </div>
                            </div>
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
                        <label for="plano">Plano</label>
                        <div class="input-group mb-3">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" onChange="readURL(this, 'plano_label')" name="plano" id="plano" aria-describedby="inputGroupFileAddon01">
                                <label class="custom-file-label" id="plano_label" for="plano">Seleccione (Tamaño recomendado: 860x270px)</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group">
                            <label for="orden">Orden</label>
                            <input type="text" class="form-control" id="orden" name="orden" placeholder="Ingrese el orden">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label for="familia">Familia</label>
                            <select class="form-control" id="familia" name="familia" required>
                                <option value="">Seleccione una familia</option>
                                @foreach($familias as $familia)
                                    <option value="{{$familia->id}}">{{$familia->nombreselect_format}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label for="relacionadas">Productos Relacionados</label>
                            <select class="js-example-basic-multiple form-control" id="relacionadas" name="relacionados[]" multiple="multiple" style="width:100%">
                                <option value="0">Seleccione los productos</option>
                                @foreach($productos as $producto)
                                    <option value="{{$producto->id}}">{!! $producto->nombreselect_format !!}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label for="destacado">Destacado</label>
                            <input type="checkbox" id="destacado" name="destacado" value="1"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        <a href="{{ route('productos') }}" class="btn btn-eliminar">Cancelar</a>
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
        CKEDITOR.replaceClass  = 'descripcion';
        CKEDITOR.config.height = '150px';
        CKEDITOR.config.width  = '100%';

        $('.js-example-basic-multiple').select2({
            placeHolder: 'Seleccione los productos',
            maximumSelectionLength: 3
        });
    //Creamos una variable global para contar las imagenes subidas e incrementamos
    //Creamos un elemento Html donde declaramos el los campos de imagen y Orden de la imagen
        function agregarImagen(){
            if(window.contadorI === undefined)
                window.contadorI = 0
            window.contadorI++
            let html = '';
            html+= '<div class="col-6 imagen">';
                html+= '<div class="" style="border-radius:0;">';
                    html+= '<div class="row">';
                        html+= '<div class="col-5">';
                            html+= '<div class="custom-file m-0">';
                                html+= `<input type="file" style="border-radius:0;" class="custom-file-input" name="imagenes[]" onChange="readURL(this, 'img_label_${window.contadorI}')" id="imagen-${window.contadorI}" aria-describedby="inputGroupFileAddon01">`;
                                html+= ` <input type="hidden" name="imagenes[]" value="">`;
                                html+= ` <label class="custom-file-label" style="border-radius:0;" id="img_label_${window.contadorI}" for="imagen-${window.contadorI}">Subir</label>`;
                        html+= '</div>';
                    html+= '</div>';
                    html+= '<div class="col-5">';
                        html+= '<div class="form-group m-0">';
                            html+= ` <input type="text" class="form-control" style="border-radius:0;" id="orden-${window.contadorI}" name="orden_imagen[]" placeholder="Ingrese el orden">`;
                        html+= '</div>';
                    html+= '</div>';
                    html+= '<div class="col-2">';
                        html+= '<div class="form-group m-0">';
                            html+= `<button class="btn btn-danger" style="border-radius:0;" onClick="removerImagen(this)" type="button">X</button>`;
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