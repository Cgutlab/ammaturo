@extends('layouts.app')
@section('content')
<div class="position-relative" style="background-image:url({{asset($portada->imagen)}}); background-repeat: no-repeat;background-position-x: right;background-color: #369144;">
    <div class="container mb-4">
        <div class="row pb-3 pt-5">
            <div class="col-12">
                <span class="portada_seccion">{{__t('Post-Venta') }}</span>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row mb-5">
        <div class="col-12 col-md-12 text-center">
            <div class="texto_postventa">{!! $postventa->descripcion[app()->getlocale()] !!}</div>
        </div>
    </div>
    <div class="row mb-5">
        @foreach ($iconos as $icono)
            <div class="col-12 col-md-4 text-center mb-4">
                <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" src="{{asset($icono->imagen)}}" alt="" class="mb-3">
                <h3 class="titulo_icono_postventa">{{$icono->titulo[app()->getlocale()] }}</h3>
            </div>
        @endforeach
    </div>
</div>
<div class="fondo_categoria py-5">
    <div class="container">
        <form method="POST" class="w-100" action="{{ route('postventas_send') }}">
            @csrf
            @method('POST')
            <input type="hidden" name="recaptcha_response" id="recaptchaResponse">
            <div class="row justify-content-center text-center texto-superior-presupuesto">
                <div class="col-12 col-md-12 col-lg-8 ">
                    <div class="titulo_solucion"> {{__t('¿Necesitás Asesoramiento?')}} </div>
                </div>
            </div>
            <div class="row justify-content-center text-center mb-5 texto-superior-presupuesto">
                <div class="col-12 col-md-12 col-lg-8 ">
                    <div class="mensaje_solucion">{{__t('Contáctanos y te brindaremos toda la información que necesites')}}</div>
                </div>
            </div>
            <div class="row justify-content-center text-center pb-4">
                <div class="col-12 col-md-12 col-lg-8 ">
                <input type="text" class="form-control" name="nombre" aria-label="nombre" placeholder="{{__t('Nombre')}}" required>
                </div>
            </div>
            <div class="row justify-content-center text-center pb-4">
                <div class="col-12 col-md-12 col-lg-8 ">
                    <input type="email" class="form-control" name="email" aria-label="email" placeholder="{{__t('Correo electrónico')}}" required>
                </div>
            </div>
            <div class="row justify-content-center text-center pb-4">
                <div class="col-12 col-md-12 col-lg-8">
                    <input type="text" class="form-control " name="empresa" aria-label="empresa" placeholder="{{__t('Empresa')}}" required>
                </div>
            </div>
            <div class="row justify-content-center text-center pb-4">
                <div class="col-12 col-md-12 col-lg-8">
                    <textarea class="form-control " name="mensaje" placeholder="{{__t('Mensaje')}}" style="height:100px"></textarea>
                </div>
            </div>
            <div class="row justify-content-center text-center pb-5">
                <div class="col-12">
                    <div class="d-flex justify-content-center align-items-center terminos_contacto pl-5">
                        <input type="checkbox" id="terminos_aceptados" class="terminos_check mr-3" data-toggle="modal" data-target="#modal_terminos" required/>
                        {{ __t('Acepto los términos y condiciones de privacidad') }}
                    </div>
                    <div class="modal fade" id="modal_terminos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">{{ __t('Términos y condiciones de la empresa') }}</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    {!! $terminos[app()->getlocale()] !!}
                                </div>
                                <div class="modal-footer">
                                    <button type="button" id="rechazar" class="btn btn-previo" data-dismiss="modal">{{__t('Cerrar')}}</button>
                                    <button type="button" id="aceptar" class="btn btn-base" data-dismiss="modal">{{__t('Aceptar')}}</button>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
            <div class="row justify-content-center text-center pb-5">
                <div class="col-12 col-md-12 col-lg-6 ">
                    <div class=" d-flex justify-content-center">
                        <button class="btn btn-base text-uppercase px-5">{{__t('Enviar')}}</button>
                    </div>
                </div>
            </div>
        </form>
    </div>    
</div>
@endsection
@push('script')
    <script>
        $('#aceptar').on('click', function(){
            $( "#terminos_aceptados" ).prop( "checked", true );
        });

        $('#rechazar').on('click', function(){
            $( "#terminos_aceptados" ).prop( "checked", false );
        });
    </script>
@endpush