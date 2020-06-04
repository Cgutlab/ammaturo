@extends('layouts.app')
@section('content')
<div class="position-relative" style="background-image:url({{asset($portada->imagen)}}); background-repeat: no-repeat;background-position-x: right;background-color: #369144;">
    <div class="container mb-4">
        <div class="row pb-3 pt-5">
            <div class="col-12">
                <span class="portada_seccion">{{__t('Solicitar Presupuesto') }} {{ (session('productos'))? '('.count(json_decode(session('productos'), true)).')':''}}</span>
            </div>
        </div>
    </div>
</div>

<div class="container mb-5">
    <form action="{{route('presupuesto_send')}}" method="post">
        @csrf                
        <input type="hidden" name="recaptcha_response" id="recaptchaResponse">
        <div class="row justify-content-center">
            <div class="col-12 col-md-12 col-lg-12 mb-5 texto-superior-presupuesto">
                <div class="text-center">
                    {{__t('Ingrese los siguientes datos para que podamos contestarle la solicitud de cotización.')}}
                </div>
                <div class="text-center">
                    {{__t('Nuestro equipo se contactará a la brevedad para asesorarlo en lo que necesite.')}}
                </div>
            </div>
            <div class="col-12 col-md-5">
                <input type="text" name="nombre" class="form-control mb-4" placeholder="{{ __t('Nombre') }}" required>
            </div>
            <div class="col-12 col-md-5">
                <input type="text" name="telefono" class="form-control mb-4" placeholder="{{ __t('Télefono') }}" required>
            </div>
            <div class="col-12 col-md-5">
                <input type="email" name="email" class="form-control mb-4" placeholder="{{ __t('Correo electrónico') }}" required>
            </div>
            <div class="col-12 col-md-5">
                <input type="text" name="empresa" class="form-control mb-4" placeholder="{{ __t('Empresa') }}" required>
            </div>
            <div class="col-10">
                <textarea name="mensaje" id="" rows="3" class="form-control mb-4" placeholder="{{ __t('Mensaje') }}" required></textarea>
            </div>
            <div class="col-10 mb-4">
                <div class="d-flex terminos_contacto">
                    <input type="checkbox" id="terminos_aceptados" class="terminos_check mt-1 mr-2" data-toggle="modal" data-target="#modal_terminos" required/>
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
            <div class="col-10 text-center">
                <button class="btn btn-base px-5">{{__t('Enviar')}}</button>
            </div>
        </div>
    </form>
    <div class="modal fade {{ (session('success'))? 'show':''}}" id="modal_mensaje" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body pb-5">
                    <h2 class="titulo_modal_mensaje">{{ __t('Muchas gracias por su consulta') }}</h2>
                   <div class="contenido_modal_mensaje">
                        {{ __t('Muchas gracias por su consulta') }}
                   </div>
                </div>
            </div>
        </div>
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
        let activar = "{{session('sended')}}"
        if(activar)
            $('#modal_mensaje').modal('show')
    </script>
@endpush