@extends('layouts.app')
@section('content')
<div class="position-relative" style="background-image:url({{asset($portada->imagen)}}); background-repeat: no-repeat; background-position-x: right; background-color: #369144;">
    <div class="container mb-4">
        <div class="row pb-3 pt-5">
            <div class="col-12">
                <span class="portada_seccion">{{__t('Solicitar Presupuesto') }} {{ (session('productos'))? '('.count(json_decode(session('productos'), true)).')':''}}  </span>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center mb-4">
        <table class="text-center w-100">
            <thead class="thead-light">
                <tr class="">
                    <th scope="col" class="text-uppercase border-dark border-top-0 py-3">{{__t('Productos')}}</th>
                    <th scope="col" class="text-uppercase border-dark border-top-0 py-3">{{__t('CATEGORÍA')}}</th>
                    <th scope="col" class="text-uppercase border-dark border-top-0 py-3">{{__t('cantidad')}}</th>
                    <th scope="col" class="text-uppercase border-dark border-top-0 py-3">{{__t('eliminar')}}</th>
                </tr>
            </thead>    
            <tbody>
                @forelse ($productos as $key =>$producto)
                    <tr class="mb-4 border-bottom">
                        <td class="d-flex align-items-center">
                            <div class="img_table">
                                <div class="diametro">
                                    <div class="contenedor_informacion">
                                        <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" src="{{asset($producto['imagen']) }}" alt="" class="mw-100">
                                    </div>  
                                </div>
                            </div>
                            <div class="texto_tabla ml-4">
                                {{ $producto['nombre'][app()->getlocale()] }}
                            </div>
                        </td>
                        <td>
                            {{ $producto['categoria'][app()->getlocale()] }}
                        </td>
                        <td class="">
                            <div class="text-center d-flex justify-content-center">
                                <input class="form-control w-50" type="number" onchange="cantidad(this, {{$key}})" name="cantidad_producto[{{$producto['id']}}]" value="{{$producto['cant_producto']}}">
                            </div>
                        </td>
                        <td>
                            <a onclick="return confirm('Realmente desea eliminar este registro?')"   href="{{route('remover_producto', $producto['id'])}}" class="eliminar_producto">
                                <i style="cursor:pointer" class="far fa-times-circle"></i>
                            </a>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td>
                            {{__t('No existen registros')}}
                        </td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
    <div class="row mb-5">
        <div class="col-12 col-md-6">
            <a href="{{route('productos_menu', $familia)}}" class="btn btn-previo">{{__t('Agregar productos')}}</a>
        </div>
        <div class="col-12 col-md-6 text-right">
            <a href="{{route('presupuesto')}}" class="btn btn-base px-5">{{__t('Solicitar')}}</a>
        </div>
    </div>
</div>
@endsection
@push('script')
    <script>
        function cantidad(t, id) {
            let formData = new FormData();
            let url = `{{ route('updateCantidad') }}`;
            var xmlHttp = new XMLHttpRequest();
            formData.set("id_producto",id);
            formData.set("cantidad",$(t).val());
            formData.set("_token","<?php echo csrf_token() ?>");
            xmlHttp.open( "post", url, true );
            
            xmlHttp.send( formData );
        }
    </script>
@endpush