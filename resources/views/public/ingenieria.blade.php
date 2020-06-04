@extends('layouts.app')
@section('content')
<div class="position-relative" style="background-image:url({{asset($portada->imagen)}}); background-repeat: no-repeat;     background-position-x: right;background-color: #369144;">
    <div class="container mb-4">
        <div class="row pb-3 pt-5">
            <div class="col-12">
                <span class="portada_seccion">{{__t('Ingeniería')}}</span>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row mb-5">
        @foreach ($ingenierias as $item)       
        <div class="col-12 col-md-6 d-flex mb-4">
            <div class="icon_ing d-flex align-items-start mr-4">
                <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" src="{{asset($item->imagen)}}" alt="">
            </div>
            <div class="contenido_ing">
                <h3 class="titulo_ing mb-0">{{$item->titulo[app()->getlocale()]}}</h3>
                <h5 class="subtitulo_ing">{{$item->subtitulo[app()->getlocale()]}}</h5>
                <div class="texto_ing">
                    {!! $item->texto[app()->getlocale()] !!}
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection