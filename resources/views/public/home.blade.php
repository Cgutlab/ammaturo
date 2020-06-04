@extends('layouts.app')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div id="carouselExampleSlidesOnly" class="carousel slide w-100" data-ride="carousel">
            <ol class="carousel-indicators">
                @foreach($sliders as $key => $slider)
                    @if($loop->first)
                        <li data-target="#carouselExampleSlidesOnly" data-slide-to="{{$key}}" class="active"></li>
                    @else
                        <li data-target="#carouselExampleSlidesOnly" data-slide-to="{{$key}}"></li>
                    @endif
                @endforeach
            </ol>
            <div class="carousel-inner" style="position: relative;">
                @foreach($sliders as $slider)
                    @if($loop->first)
                        <div class="carousel-item active">
                    @else
                        <div class="carousel-item" >
                    @endif
                        <div class="position-relative">
                            <div class="sombra"></div>
                            <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" src="{{asset($slider->imagen)}}?t=<?php echo time(); ?>" class="d-block img-fluid  w-100 slider_img" alt="...">
                        </div>
                        <div class="carousel-caption slider_contenido" style="position: absolute;">
                            <div class="left">
                                {!! $slider->contenido[app()->getLocale()] !!}
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row my-5">
        <div class="col-12">
            <h1 class="titulo_productos_seccion text-center mb-4">{{__t('Productos destacados')}}</h1>
        </div>
        @foreach ($productos as $producto)
            <div class="col-12 col-md-6 col-lg-3 mb-4 text-center d-flex">
                <a href="{{route('producto', $producto->id)}}" class="hvr-grow d-flex">
                    <div class="border">
                        <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" src="{{asset($producto->imagenes()->first()['imagen'])}}" class="w-100" alt="">
                        <div class="my-4">
                            <span class="nombre-producto-home">{{$producto->nombre[app()->getLocale()]}}</span>
                        </div>
                    </div>
                </a>
            </div>
        @endforeach
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="position-relative w-100" style="background-image: url({{asset($enlace->imagen)}})">
            <div class="sombra_imagen_enlace w-100 h-100 position-absolute"></div>
            <div class="col-12 text-center py-5">
                <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" src="{{asset($enlace->logo)}}" class="mb-4" alt="">
                <h5 class="titulo_enlace">{{$enlace->titulo[app()->getLocale()]}}</h5>
                <div class="contenido_enlace pb-4"> {!! $enlace->descripcion[app()->getLocale()]!!} </div>
                <a href="{{$enlace->url}}" class="btn btn-base px-4" target="_blank">{{__t('Ingresar')}}</a>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row my-5">
        <div class="col-12">
            <h4 class="titulo_seccion_icono text-center mb-5">{{__t('Industria, Ingeniería y Servicio')}}</h4>
        </div>
        @foreach ($iconos as $icono)
            <div class="col-12 col-md-12 col-lg-4 text-center">
                <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" src="{{asset($icono->imagen)}}" class="pb-4" alt="">
                <h3 class="titulo_icono">{{ $icono->titulo[app()->getLocale()] }}</h3>
                <div class="contenido_icono">{!! $icono->texto[app()->getLocale()] !!}</div>
            </div>
        @endforeach
    </div>
</div>
@endsection