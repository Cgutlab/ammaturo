@extends('layouts.app')

@section('content')
<div class="container-fluid mb-4">
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
    <div class="row mb-4">
        <div class="col-12">
            <h4 class="titulo_empresa my-4">{{ $empresa->titulo[app()->getLocale()] }}</h4>
        </div>
        <div class="col-12 col-md-12 col-lg-6">
            
            <div class="contenido_empresa">
                {!! $empresa->descripcion[app()->getLocale()] !!}
            </div>
        </div>
        <div class="col-12 col-md-12 col-lg-6">
            <div class="destacados_empresa mb-4 mb-lg-0 text-center text-lg-left">
                {!! $empresa->antiguedad[app()->getLocale()] !!}
            </div>
            <div class="destacados_empresa mb-4 mb-lg-0 text-center text-lg-left">
                {!! $empresa->trayectoria[app()->getLocale()] !!}
            </div> 
            <div class="destacados_empresa mb-4 mb-lg-0 text-center text-lg-left">
                {!! $empresa->clientes[app()->getLocale()] !!}
            </div>
        </div>
    </div>
    @if($empresa->video)
    <div class="row mb-4">
        <div class="col-12 text-center video">
            <iframe src="https://www.youtube.com/embed/{{$empresa->video[app()->getLocale()] }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </div>
    @endif
</div>
<div class="fondo_empresa py-5 position-relative">
    <div class="triangulo"></div>
    <div class="container py-5 scroll">
        <div class="w-100 timeline">
            <div class="d-flex justify-content-center mb-5">
                @foreach($lineas AS $key => $value)
                <div onclick="change(this)" class="input" data-year="{{ $value->item }}">
                    <span data-year="{{ $value->item }}"></span>
                </div>
                @endforeach
            </div>
            <div class="row justify-content-center">
                <div class="col-12 col-md-7">
                    <div class="d-flex justify-content-center flex-column mt-3">
                        @foreach($lineas AS $key => $value)
                        <div class="text text-center d-none text-white" data-year="{{ $value->item }}">
                            {!! $value->texto[app()->getlocale()] !!}
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@push('script')
    <script>
    $(document).ready(function() {
        $(".input[data-year]:first-child").click();
    });
    change = function(t) {
        year = $(t).data("year");
        $(".input[data-year].active").removeClass("active");
        $(".text[data-year]").addClass("d-none");
        $(t).addClass("active");
        $(`.text[data-year="${year}"]`).removeClass("d-none");
    };
    </script>
@endpush