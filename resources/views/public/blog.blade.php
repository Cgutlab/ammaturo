@extends('layouts.app')
@section('content')
<div class="position-relative" style="background-image:url({{asset($portada->imagen)}}); background-repeat: no-repeat;background-position-x: right;background-color: #369144;">
    <div class="container">
        <div class="row pb-3 pt-5">
            <div class="col-12">
                <span class="portada_seccion">{{__t('Novedades')}}</span>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-12 col-md-12 col-lg 12">
            <nav aria-label="breadcrumb ">
                <ol class="breadcrumb bg-transparent">
                    <li class="breadcrumb-item">
                        <a href="{{route('novedades')}}">
                            {{ __t('Novedades') }}
                        </a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{route('blog',$post->id)}}">
                            {{$post->titulo[app()->getlocale()]}}
                        </a>
                    </li>
                </ol>
            </nav>
        </div>
    </div>
    <div class="row mb-5">
        <div class="col-12 col-md-12 col-lg-9 order-2 order-lg-1">
            <div class="borde_img mb-4">
                <div id="carouselExampleSlidesOnly" class="carousel slide h-100" data-ride="carousel">
                    <ol class="carousel-indicators">
                        @foreach($post->imagenes as $key => $slider)
                        @if($loop->first)
                        <li data-target="#carouselExampleSlidesOnly" data-slide-to="{{$key}}" class="active"></li>
                        @else
                                <li data-target="#carouselExampleSlidesOnly" data-slide-to="{{$key}}"></li>
                                @endif
                        @endforeach
                    </ol>
                    <div class="carousel-inner" style="position: relative;">
                        @foreach($post->imagenes as $slider)
                            @if($loop->first)
                            <div class="carousel-item active">
                            @else
                            <div class="carousel-item" >
                            @endif
                                <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" src="{{asset($slider->imagen)}}" class="d-block img-fluid h-100 w-100">
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            <span class="categoria text-uppercase px-1">
                {{$post->categoria->nombreshow_format}}
            </span>
            <div class="titulo_blog mb-4 mt-2">
                {{$post->titulo[app()->getlocale()]}}
            </div>
            <div class="contenido_blog mb-4">
                {!! $post->descripcion[app()->getlocale()] !!}
            </div>
        </div>
        <div class="col-12 col-md-12 col-lg-3 order-1 order-lg-3">
            <div class="fondo_categoria py-5 px-3">  
                <h4 class="titulo_lista_categorias text-uppercase">Categor&iacute;as</h4>
                <hr align="left" class="w-25 linea_categorias mt-2">
                <ul class=" list-unstyled list-group list-group-flush bg-transparent">
                    @foreach($categorias as $categoria)
                        <li class="listado_categoria bg-transparent pb-2">
                            <a href="{{route('blog_filtrado', $categoria->id)}}" class="categoria_enlace ">{{$categoria->nombre[app()->getlocale()]}}</a>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</div>
@endsection