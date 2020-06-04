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
                        <a href="{{route('productos_menu', $familia->id)}}">
                            {{$familia->nombre[app()->getlocale()]}}
                        </a>
                    </li>
                </ol>
            </nav>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-md-12 col-lg-3">
            <button class="btn btn-base text-uppercase d-block d-sm-none mb-2 collapsed" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                Productos
            </button>
            <div class="side_menu dont-collapse-sm collapse" id="collapseExample">
                <ul class="list-unstyled border-0">
                    @foreach ($familias as $familia_op)
                    <li class="list-group-item border-0">
                        <a href="" class="d-flex align-items-center justify-content-between border-bottom {{($familia_op->id == $familia->id)? 'active-menu':''}}" data-target="#productos_{{$familia_op->id}}" data-toggle="collapse">
                            <span class="submenu_enlace" onclick="location.href='{{route('productos_menu', $familia_op->id)}}'">{{$familia_op->nombre[app()->getlocale()]}}</span>
                            <i class="material-icons flecha">keyboard_arrow_right</i>
                        </a>
                        <ul id="productos_{{$familia_op->id}}" class="list-unstyled border-0 collapse sub-menu {{($familia_op->id == $familia->id)? 'show':''}}">
                            @foreach ($productos as $producto_op)   
                            @if($producto_op->id_superior == $familia_op->id)
                            <li class="py-1 pl-3 d-flex align-items-center border-0 bg-transparent">
                                <a href="{{route('producto', $producto_op->id)}}">
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
            <div class="row">
                @foreach ($producto_list as $producto_item)  
                <div class="col-12 col-md-6 col-lg-4 text-center mb-5 d-flex">
                    <a href="{{route('producto', $producto_item->id)}}" class="enlace_producto d-flex">
                        <div class="border">
                            <div class="position-relative">
                                <div class="efecto-hover">
                                    <p class="icon_producto m-0">+</p>
                                </div>
                                <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" src="{{asset($producto_item->imagenes()->first()['imagen'])}}" class="w-100 img-hover" alt="">
                            </div>
                            <div class="my-4">
                                <span class="nombre-producto-home">{{$producto_item->nombre[app()->getLocale()]}}</span>
                            </div>
                        </div>
                    </a>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection