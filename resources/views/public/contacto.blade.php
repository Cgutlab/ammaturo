@extends('layouts.app')
@section('content')
<div class="mapa">
    {!! $dato->mapa!!}
</div>
<div class="container my-5 pb-5">
    <form action="{{route('contacto_send')}}" method="post" class="mb-5">
    @csrf
    <div class="row">
        <div class="col-12 col-lg-4">
            <div class="fondo_categoria p-4">
                <h2 class="titulo_contacto mb-2 text-uppercase">Ammaturo S.A.</h2>
                <h5 class="subtitulo_contacto mb-4">{{__t('Ingeniería, industria y servicio')}}</h5>
                <div class="datos_contacto d-flex mb-4">
                    <div>
                        <i class="material-icons icon_contacto  mr-3">location_on</i>
                    </div>
                    <div>
                        <div class="text-uppercase subtitulo_icono">{{__t('dirección')}}</div>
                        {{$direccion['calle'].' '. $direccion['altura']}}<br>
                        {{$direccion['localidad'].' '. $direccion['provincia']}}
                    </div>
                </div>
                <div class="datos_contacto d-flex mb-4">
                    <div>
                        <i class="material-icons icon_contacto mr-3">phone_in_talk</i>
                    </div>
                    <div>                   
                        <div class="text-uppercase subtitulo_icono">{{__t('télefono')}}</div>    
                        @foreach($telefonos as $telefono)
                            @if($telefono['tipo'] == 'tel')
                               {{$telefono['num']}}
                            @endif
                        @endforeach
                    </div>
                </div>
                <div class="datos_contacto d-flex mb-4">
                    <div>
                        <i class="material-icons icon_contacto  mr-3">send</i>
                    </div>
                    <div>
                        <div class="text-uppercase subtitulo_icono">{{__t('correos')}}</div>
                        {{$email}}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-8">
            <div class="row justify-content-center">
                <input type="hidden" name="recaptcha_response" id="recaptchaResponse">

                <div class="col-12 col-md-6">
                    <input type="text" name="nombre" class="form-control mb-4" placeholder="{{ __t('Nombre') }}" required>
                </div>
                <div class="col-12 col-md-6">
                    <input type="text" name="telefono" class="form-control mb-4" placeholder="{{ __t('Télefono') }}" required>
                </div>
                <div class="col-12 col-md-6">
                    <input type="email" name="email" class="form-control mb-4" placeholder="{{ __t('Correo electrónico') }}" required>
                </div>
                <div class="col-12 col-md-6">
                    <input type="text" name="empresa" class="form-control mb-4" placeholder="{{ __t('Empresa') }}" required>
                </div>
                <div class="col-12">
                    <textarea name="mensaje" id="" rows="3" class="form-control mb-4" placeholder="{{ __t('Mensaje') }}"></textarea>
                </div>
                <div class="col-12 mb-4">
                    <div class="d-flex terminos_contacto">
                        <input type="checkbox" id="terminos_aceptados" class="terminos_check mt-1 mr-2" data-toggle="modal" data-target="#modal_terminos"/>
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
                <div class="col-12">
                    <button class="btn btn-base px-5">{{__t('Enviar')}}</button>
                </div>
            </div>
        </div>
    </div>
</form>
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