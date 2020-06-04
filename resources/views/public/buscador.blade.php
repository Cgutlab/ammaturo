@extends('layouts.app')
@section('content')
<div class="container my-5">
<div class="row ">
    <div class="col-12">
        <h2 class="titulo_ing">{{__t('Buscador')}}</h2>
    </div>
</div>
<form method="POST" action="{{ route('busqueda') }}" class="w-100 mb-5">
    <div class="row">
        @csrf
            <div class="col-12 col-lg-6">
                <input type="text" class="form-control mb-4 mb-lg-0" name="datos" placeholder="{{__t('Buscar')}}" required>
            </div>
            <div class="col-12 col-lg-6">
                <button type="submit" class="btn btn-base text-uppercase px-5">{{__t('Buscar')}}</button>
            </div>
        </div>
    </form> 
@if(isset($busquedap) && !is_null($busquedap))
<div class="row mb-4">
    <div class="col-12 col-lg-6">
        <div class="titulo_ing ">
            {{__t('Productos')}}
        </div>
    </div>
</div>
<div class="row mb-5">
    @forelse($busquedap as $producto)
        <div class="col-12 col-md-6 col-lg-3 text-center d-flex mb-5">
            <a href="{{route('producto', $producto->id)}}" class="enlace_producto d-flex">
                <div class="border">
                    <div class="position-relative">
                        <div class="efecto-hover">
                            <p class="icon_producto m-0">+</p>
                        </div>
                        <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}?t=<?php echo time(); ?>'"  src="{{asset($producto->imagenes()->first()['imagen'])}}" class="w-100 img-hover" alt="">
                    </div>
                    <div class="my-4">
                        <span class="nombre-producto-home">{{$producto->nombre[app()->getLocale()]}}</span>
                    </div>
                </div>
            </a>
        </div>
    @empty
        <div class="not_result">
            No se han encontrado resultados
        </div>
    @endforelse
</div>
@else
    @if(isset($busquedap))
        <div class="not_result">
            No se han encontrado resultados
        </div>
    @endif
@endif
@if(isset($busquedab) && !is_null($busquedab))
<div class="row mb-4">
    <div class="col-12 col-lg-6">
        <div class="titulo_ing">
           {{__t('Novedades')}}
        </div>
    </div>
</div>
<div class="row mb-5">
    @forelse($busquedab as $blog)
    <div class="col-12 col-md-6 col-lg-6 mb-5 d-flex">
        <a href="{{route('blog', $blog->id)}}" class="d-flex hvr-grow">
            <div class="card card_blog d-flex">
                <img class="imagen_card mb-2 mw-100" onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}?t=<?php echo time(); ?>'"  src="{{asset($blog->imagenes()->first()['imagen'])}}" alt="">
                <div class="card-body ">
                    <span class="categoria text-uppercase px-1">
                    {{$blog->categoria->nombreshow_format}}
                    </span>
                    <div class="contenedor_descripcion_card" >
                    <div class="titulo_card mt-3">{{$blog->titulo[app()->getlocale()]}}</div>
                    </div>             
                </div>
            </div>
        </a>
    </div>
    @empty
        <div class="not_result">
            No se han encontrado resultados
        </div>
    @endforelse
</div>
@else
    @if(isset($busquedab))
        <div class="not_result">
            No se han encontrado resultados
        </div>
    @endif
@endif
@endsection