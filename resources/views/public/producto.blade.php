@extends('layouts.app')
@section('content')
<div class="position-relative" style="background-image:url({{asset($portada->imagen)}}); background-repeat: no-repeat;background-position-x: right;background-color: #369144;">
    <div class="container">
        <div class="row pb-3 pt-5">
            <div class="col-12">
                <span class="portada_seccion">{{__t('Productos')}}</span>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-12 col-md-12 col-lg-12">
            <nav aria-label="breadcrumb ">
                <ol class="breadcrumb bg-transparent">
                    <li class="breadcrumb-item">
                        <a href="{{route('productos_menu',$producto->familia->id)}}">
                            {{$producto->familia->nombreshow_format}}
                        </a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{route('producto',$producto->id)}}">
                            {{$producto->nombre[app()->getlocale()]}}
                        </a>
                    </li>
                </ol>
            </nav>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-12 col-md-12 col-lg-3">
            <button class="btn btn-base text-uppercase d-block d-sm-none mb-2 collapsed" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                Productos
            </button>
            <div class="side_menu dont-collapse-sm collapse" id="collapseExample">
                <ul class="list-unstyled border-0">
                    @foreach ($familias as $familia_op)
                    <li class="list-group-item border-0">
                        <a href="" class="d-flex align-items-center justify-content-between border-bottom {{($familia_op->id == $producto->id_superior)? 'active-menu':''}}" data-target="#productos_{{$familia_op->id}}" data-toggle="collapse">
                            <span class="submenu_enlace" onclick="location.href='{{route('productos_menu', $familia_op->id)}}'">{{$familia_op->nombre[app()->getlocale()]}}</span>
                            <i class="material-icons flecha">keyboard_arrow_right</i>
                        </a>
                        <ul id="productos_{{$familia_op->id}}" class="list-unstyled border-0 collapse sub-menu {{($familia_op->id == $producto->id_superior)? 'show':''}}">
                            @foreach ($productos as $producto_op)   
                            @if($producto_op->id_superior == $familia_op->id)
                            <li class="py-1 pl-3 d-flex align-items-center border-0 bg-transparent">
                                <a href="{{route('producto', $producto_op->id)}}"class="{{($producto_op->id == $producto->id)? 'active-menu':''}}">
                                    {{$producto_op->nombre[app()->getlocale()]}}
                                </a> 
                            </li>
                            @endif
                            @endforeach
                        </ul>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
        <div class="col-12 col-md-12 col-lg-9">
            <div class="row mb-5">
                <div class="col-12 col-md-6 col-lg-6">
                    <div class="borde_img">
                        <div id="carouselExampleSlidesOnly" class="carousel slide h-100 w-100" data-ride="carousel">
                            <ol class="carousel-indicators">
                                @foreach($producto->imagenes as $key => $slider)
                                @if($loop->first)
                                <li data-target="#carouselExampleSlidesOnly" data-slide-to="{{$key}}" class="active"></li>
                                @else
                                        <li data-target="#carouselExampleSlidesOnly" data-slide-to="{{$key}}"></li>
                                        @endif
                                @endforeach
                            </ol>
                            <div class="carousel-inner" style="position: relative;">
                                @foreach($producto->imagenes as $slider)
                                    @if($loop->first)
                                    <div class="carousel-item active">
                                    @else
                                    <div class="carousel-item" >
                                    @endif
                                        <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" src="{{asset($slider->imagen)}}" class="d-block img-fluid h-100 w-100 ">
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-12 col-md-6 col-lg-6">
                    <div class="nombre_producto_ficha">
                        {{$producto->nombre[app()->getlocale()]}}
                    </div>
                    <div class="nombre_producto_familia pb-2 mb-4">
                        {{$producto->familia->nombre_format}}
                    </div>
                    <div class="descripcion_producto">
                        {!! $producto->descripcion[app()->getlocale()] !!}
                    </div>
                    <a href="{{route('producto_presupuesto',$producto->id)}}" class="btn btn-base px-3 text-uppercase mb-4 mb-lg-0">{{__t('Solicitar Presupuesto')}}</a>
                    @if($producto->archivo[app()->getLocale()] != "null" )
                    <a href="{{ asset($producto->archivo[app()->getLocale()]) }}" target="__blank" class="btn btn-base px-3 text-uppercase mb-4 mb-lg-0"> 
                        <img src="{{asset('imagenes/estatico/icono_descarga.png')}}" alt="">
                        {{__t('Ficha Técnica')}}
                    </a>
                    @endif
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-12 col-lg-12 mb-4">
                    <div class="titulo_contenido mb-4 w-100 fondo-titulo">
                       {{__t('CARACTERÍSTICAS')}}
                    </div>
                    <div class="contenido_producto mt-4">
                        {!! $producto->caracteristicas[app()->getlocale()] !!}
                    </div>
                </div>
            </div>
            @if(!is_null($producto->video[app()->getLocale()]))
            <div class="row fondo-titulo py-4 mb-4">
                <div class="col-12 col-lg-6  d-flex">
                    <div class="texto_video d-flex align-items-center">
                        {{ __t('Para más información,  mirá el video a continuación')}}
                    </div>
                </div>
                
                <div class="col-12 col-lg-6 video_producto text-center">
                    <iframe src="https://www.youtube.com/embed/{{$producto->video[app()->getLocale()] }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>
            @endif
            @if(!is_null($producto->plano))
            <div class="row">
                <div class="col-12 col-md-12 col-lg-12">
                    <div class="titulo_contenido mb-4 w-100 fondo-titulo">
                        {{__t('PlANOS')}}
                    </div>
                </div>
                <div class="col-12">
                    <img src="{{asset($producto->plano)}}" alt="" class="w-100 mw-100">
                </div>
            </div>
            @endif
            @if($producto->relacionados)
            <div class="row mb-5">
                <div class="col-12 col-md-12 col-lg-12 mb-3 fondo-titulo">
                    <div class="titulo_contenido w-100 ">
                        {{__t('Productos Relacionados')}}
                    </div>
                </div>
                @foreach ($producto->relacionados as $relacionados)
                <div class="col-12 col-md-6 col-lg-4 text-center d-flex">
                    <a href="{{route('producto', $relacionados->id)}}" class="enlace_producto d-flex">
                        <div class="border">
                            <div class="position-relative">
                                <div class="efecto-hover">
                                    <p class="icon_producto m-0">+</p>
                                </div>
                                <img src="{{asset($relacionados->imagenes()->first()['imagen'])}}" class="w-100 img-hover" alt="">
                            </div>
                            <div class="my-4">
                                <span class="nombre-producto-home">{{$relacionados->nombre[app()->getLocale()]}}</span>
                            </div>
                        </div>
                    </a>
                </div>
                @endforeach
            </div>
            @endif
        </div>
    </div>
</div>
@endsection