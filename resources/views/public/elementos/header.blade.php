<div class="">
    <nav class="navbar navbar-expand-lg esconder">
        <div class="container pt-3">
            <a href="{{route('index')}}" class="nav-brand position-absolute">
                <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" src="{{asset($logo_header->imagen)}}" alt="">
            </a>
            <div class="row w-100 justify-content-end flex-column">
                <ul class="list-unstyled d-flex justify-content-end pt-2 mb-1 align-items-center info">
                    <li class="list-group-item p-1 bg-transparent "> 
                        <a href="{{route('contacto')}}" class="enlace_header {{ ($active  == "contacto") ? 'menu_active' : '' }} px-1 text-uppercase">
                            {{__t('Contacto')}}
                        </a>
                    </li>
                    <li class="list-group-item p-1 bg-transparent d-flex mx-1"> 
                        <a href="{{url('mailto:'.$email)}}" class="enlace_header ml-2" target="_blank">{{$email}}</a>
                    </li>
                    <li class="list-group-item p-1 bg-transparent d-flex mx-1">
                        <i class="material-icons icono_header">phone_in_talk</i>
                        @foreach($telefonos as $telefono)
                            @if($telefono['tipo'] == 'tel' && $telefono['seccion'] == 'header' || $telefono['seccion'] == 'ambos')
                                <a href="{{ 'tel:'.$telefono['num'] }}" class="enlace_header ml-2 " target="_blank">{{$telefono['num']}}</a>
                            @endif
                        @endforeach
                    </li>
                    <li class="list-group-item p-1 bg-transparent d-flex mx-1">
                        <img src="{{asset('imagenes/estatico/whatsapp-icon.png')}}" style="height:20px;">
                        @foreach($telefonos as $telefono)
                            @if($telefono['tipo'] == 'wsp')
                                <a href="{{ 'https://wa.me/549'.$telefono['num'] }}" class="enlace_header ml-2" target="_blank">{{$telefono['num']}}</a>
                            @endif
                        @endforeach
                    </li>
                    <li class="list-group-item p-1 bg-transparent d-flex mx-1">
                        @foreach ($redes as $red)
                            <a href="{{$red->url}}" class="icono_header mr-2 ml-2" target="_blank">
                                <i class="{{$red->icono}}"></i>
                            </a>
                        @endforeach
                    </li>
                    <li class="list-group-item p-1 bg-transparent border-0"> 
                            <a href="{{route('buscador')}}">
                                <img src="{{asset('imagenes/estatico/buscador_icon.png')}}" alt="">
                            </a>
                        </li>
                        <li class="list-group-item p-1 bg-transparent border-0">
                            <div class="dropdown">
                                <a class="btn btn-selector d-flex align-items-center" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="texto_navbar text-uppercase">{{app()->getLocale()}}</span>
                                    <i class="material-icons">keyboard_arrow_down</i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right menu-list" aria-labelledby="dropdownMenuLink">
                                    @foreach (LaravelLocalization::getSupportedLocales() as $key => $item)
                                        <a class="dropdown-item text-uppercase" href="{{ LaravelLocalization::getLocalizedURL($key, null, [], true) }}">{{$key}}</a>
                                    @endforeach
                                </div>
                            </div>
                        </li>
                </ul>
                <ul class="hidden-tablet list-unstyled mb-0 d-flex justify-content-end align-items-center">
                    <ul class="list-unstyled d-flex justify-content-end pt-2 mb-1 align-items-center menu" >
                        <li class="list-group-item p-2 bg-transparent border-0"> 
                            <a href="{{route('index')}}" class="enlace_menu px-1 text-uppercase">
                                {{__t('Inicio')}}
                            </a>
                        </li>
                        <li class="list-group-item p-2 bg-transparent border-0"> 
                            <a href="{{route('empresa_menu')}}" class="enlace_menu {{ ($active  == "empresa") ? 'menu_active' : '' }} px-1 text-uppercase">
                                {{__t('Empresa')}}
                            </a>
                        </li>
                        <li class="list-group-item p-2 bg-transparent border-0 producto"> 
                        <div class="dropdown">
                                <a href="" class="enlace_menu text-uppercase {{ ($active == "producto") ? 'menu_active' : '' }} px-1" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    {{__t('Productos')}}
                                </a>
                                <div class="dropdown-menu menu-producto" aria-labelledby="dropdownMenuLink">
                                    @foreach ($familias as $familia)
                                        <a class="dropdown-item enlace_menu" href="{{route('productos_menu', $familia->id)}}"> {{$familia->nombre[app()->getLocale()]}}</a>
                                    @endforeach
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item p-2 bg-transparent border-0"> 
                            <a href="{{route('novedades')}}" class="enlace_menu text-uppercase {{ ($active  == "novedades") ? 'menu_active' : '' }} px-1">
                                {{__t('Novedades')}}
                            </a>
                        </li>
                        <li class="list-group-item p-2 bg-transparent border-0"> 
                            <a href="{{route('ingenieria')}}" class="enlace_menu text-uppercase {{ ($active  == "ingenieria") ? 'menu_active' : '' }}px-1">
                                {{__t('Ingeniería')}}
                            </a>
                        </li>
                        <li class="list-group-item p-2 bg-transparent border-0"> 
                            <a href="{{route('presupuesto')}}" class="enlace_menu text-uppercase {{ ($active  == "presupuesto") ? 'menu_active' : '' }} px-1">
                                {{__t('Solicitar Presupuesto')}}
                            </a>
                        </li>
                        <li class="list-group-item p-2 bg-transparent border-0"> 
                            <a href="{{route('postventas')}}" class="enlace_menu text-uppercase {{ ($active  == "postventa") ? 'menu_active' : '' }} px-1">
                                {{__t('Post-Venta')}}
                            </a>
                        </li>
                    </ul>
                </ul>
            </div>
        </div>
    </nav>
    <nav class="navbar navbar-expand-lg navbar-light justify-content-center w-100 mostrar">
        <div class="d-flex align-items-center justify-content-center">
            <a class="navbar-brand" href="{{route('index')}}">
                <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" class="img-fluid" src="{{asset($logo_header->imagen)}}">
            </a>
            <div >
                <button class="navbar-toggler bg-light" type="button" data-toggle="modal" data-target="#menuNav" aria-controls="navbarTogglerDemo03">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </div>
        <div id="menuNav" class="modal fade menuNav" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel" aria-modal="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content border-top-0 border-left-0 border-bottom-0">
                    <div class="modal-header bg-light">
                        <h5 class="modal-title">Menú</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="list-group list-group-flush">
                        <li class="list-group-item text-uppercase"><a class="enlace_header text-uppercase" href="{{route('index')}}">{{__t('Inicio')}}</a></li>
                            <li class="list-group-item text-uppercase"><a class="enlace_header text-uppercase" href="{{route('empresa_menu')}}">{{__t('Empresa')}}</a></li>
                            <li class="list-group-item text-uppercase">
                                <a class="enlace_header text-uppercase" href=""  data-toggle="collapse" data-target="#navbar_list" aria-controls="navbar_list" aria-expanded="false" aria-label="Toggle navigation">{{__t('Productos')}}</a>
                                <ul class="list-unstyled list-group list-group-flush collapse" id="navbar_list" style="">
                                    </li>
                                    @foreach ($familias as $familia)
                                    <li>
                                        <a class="enlace_header" href="{{route('productos_menu', $familia->id)}}"> {{$familia->nombre[app()->getLocale()]}}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </li>
                        <li class="list-group-item text-uppercase"><a class="enlace_header text-uppercase" href="{{route('novedades')}}">{{__t('Novedades')}}</a></li>
                            <li class="list-group-item text-uppercase"><a class="enlace_header text-uppercase" href="{{route('ingenieria')}}">{{__t('Ingeniería')}}</a></li>
                            <li class="list-group-item text-uppercase"><a class="enlace_header text-uppercase" href="{{route('presupuesto')}}">{{__t('Solicitar Presupuesto')}}</a></li>
                            <li class="list-group-item text-uppercase"><a class="enlace_header text-uppercase" href="{{route('postventas')}}">{{__t('Post-Venta')}}</a></li>
                            <li class="list-group-item text-uppercase"><a class="enlace_header text-uppercase" href="{{route('contacto')}}">{{__t('Contacto')}}</a></li>
                            <li class="list-group-item text-uppercase">
                                <a class="enlace_header text-uppercase" href=""  data-toggle="collapse" data-target="#navbar_list2" aria-controls="navbar_list" aria-expanded="false" aria-label="Toggle navigation">
                                    {{app()->getLocale()}}
                                </a>
                                <ul class="list-unstyled list-group list-group-flush collapse" id="navbar_list2" style="">
                                    </li>
                                    @foreach (LaravelLocalization::getSupportedLocales() as $key => $item)
                                    <li>
                                        <a class="enlace_header" href="{{ LaravelLocalization::getLocalizedURL($key, null, [], true) }}">{{$key}}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="modal-footer bg-light info">
                        <form method="post" action="{{route('busqueda')}}" class="position-relative w-100">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                            <input type="text" class="form-control" name="datos" placeholder="Buscar..." id="">
                            <i class="fas fa-search position-absolute icon_buscar iconos" style="right: 5%;"></i>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</div>