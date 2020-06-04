<div class="footer_container">
    <div class="container pt-5" style="background-image:url({{asset('imagenes/estatico/footer_fondo.svg')}}); background-repeat:no-repeat; background-position-x:center;">
        <div class="row"> 
            <div class="col-12 col-md-12 col-lg-3 mb-4 mb-lg-0 mt-4 mt-lg-0 text-center text-lg-left">
                <a href="{{route('index')}}" class="navbar-brand p-0 m-0 mb-4">
                    <img onError="this.src='{{ asset('imagenes/estaticos/no_img.jpg')  }}'" src="{{asset($logo_footer->imagen)}}?t=<?php echo time(); ?>" class="img-fluid" >
                </a>
                <div class="redes_footer">
                    {{__t('SEGUINOS EN')}} 
                    @foreach ($redes as $red)
                        <a href="{{$red->url}}" class="icono_footer mr-2 ml-2">
                            <i class="{{$red->icono}}"></i>
                        </a>
                    @endforeach
                </div>
            </div>
            <div class="col-12 col-md-12 col-lg-3 text-center text-lg-left mb-4 mb-0">
                <h1 class="titulo_footer text-center text-lg-left mb-3">{{__t('SITEMAP')}}</h1>
                <div class="d-flex justify-content-center justify-content-lg-start">
                    <ul class="list-unstyled mapa pr-4">
                        <li class="pb-2">
                            <a href="{{route('index')}}" class="enlace_footer">{{__t('Inicio')}}</a>
                        </li>
                        <li class="pb-2">
                            <a href="{{route('empresa_menu')}}" class="enlace_footer">{{__t('Empresa')}}</a>
                        </li>
                        <li class="pb-2">
                            <a href="{{route('novedades')}}" class="enlace_footer">{{__t('Novedades')}}</a>    
                        </li>
                        <li class="pb-2">
                            <a href="{{route('ingenieria')}}" class="enlace_footer">{{__t('Ingeniería')}}</a>    
                        </li>
                    </ul>
                    <ul class="list-unstyled mapa">

                        <li class="pb-2">
                            <a href="{{route('presupuesto')}}" class="enlace_footer">{{__t('Solicitar Presupuesto')}}</a>
                        </li>
                        <li class="pb-2">
                            <a href="{{route('postventas')}}" class="enlace_footer">{{__t('Post-Venta')}}</a>
                        </li>
                        <li class="pb-2">
                            <a href="{{route('contacto')}}" class="enlace_footer">{{__t('Contacto')}}</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-12 col-md-12 col-lg-3 text-center text-lg-left mb-4 mb-0">
                <h1 class="titulo_footer mb-3 text-center text-lg-left">{{__t('NEWSLETTER')}}</h1>
                <div class="subcripcion d-flex flex-column ">
                    <form method="post" action="{{ route('enviar_email') }}" class="position-relative w-100">
                        @csrf
                        <div class="texto_sub text-uppercase mb-3">{{__t('SUSCRIBITE A NUESTRAS ÚLTIMAS NOVEDADES')}}</div>
                        <div class="d-flex align-items-center">
                            <input type="text" name="email_subcribir" class="form-control input-subcripcion mr-3" placeholder="{{__t('Ingresar Email')}}" required>
                            <button type="submit" class="text-uppercase btn btn-supcripcion">{{__t('ENVIAR')}}</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-12 col-md-12 col-lg-3 text-center text-lg-left mb-4 mb-0">			
                <h1 class="titulo_footer text-uppercase text-center text-lg-left mb-3">
                    {{__('Ammaturo S.A')}}
                </h1>
                <div class="d-flex justify-content-center justify-content-lg-start mb-3">
                    <i class="material-icons icon_footer">location_on</i>
                    <a href="{{url('https://www.google.com.ar/maps/search/'.$direccion['calle'].'+'.$direccion['altura'].'+'.$direccion['localidad'].'+'.$direccion['provincia']  )}}" class="enlace_footer_datos ml-2" target="_blank">
                        {{$direccion['calle'].' '. $direccion['altura']}}<br>
                        {{$direccion['localidad'].' '. $direccion['provincia']}}<br>
                        {{$direccion['pais']}}
                    </a>
                </div>
                <div class="d-flex justify-content-center justify-content-lg-start mb-3">
                    <i class="material-icons icon_footer">phone_in_talk</i>
                    <div class="d-flex flex-column ml-2" style="line-height: 1.3;">
                        @foreach($telefonos as $telefono)
                            @if($telefono['tipo'] == 'tel')
                                <a href="{{ 'tel:'.$telefono['num'] }}" class="enlace_footer_datos" target="_blank">{{$telefono['num']}}</a>
                            @endif
                        @endforeach
                    </div>
                </div>
                <div class="d-flex justify-content-center justify-content-lg-start mb-3">
                    <img src="{{asset('imagenes/estatico/whatsapp-icon.png')}}" style="height:20px;">
                    <div class="d-flex flex-column ml-2" style="line-height: 1.3;">
                        @foreach($telefonos as $telefono)
                            @if($telefono['tipo'] == 'wsp')
                                <a href="{{ 'https://wa.me/549'.$telefono['num'] }}" class="enlace_footer_datos ml-2" target="_blank">{{$telefono['num']}}</a>
                            @endif
                        @endforeach
                    </div>
                </div>
                <div class="d-flex justify-content-center justify-content-lg-start mb-3">
                    <i class="material-icons icon_footer">send</i>
                    <a href="{{url('mailto:'.$email)}}" class="enlace_footer_datos ml-2" target="_blank">{{$email}}</a>
                </div>
            </div>
        </div>
        <div class="row">
            <hr class="divisor w-100 mb-0">
            <div class="col-12 text-right">
                <p class="texto_footer text-uppercase py-3 m-0">by osole</p>
            </div>
        </div>
    </div>
</div>