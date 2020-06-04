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
    <div class="row my-5">
        <div class="col-12 col-md-12 col-lg-9 order-2 order-lg-1">
            <div class="row">
                @forelse($blogs as $blog)
                <div class="col-12 col-md-6 mb-5 d-flex">
                    <a href="{{route('blog', $blog->id)}}" class="d-flex hvr-grow">
                        <div class="card card_blog d-flex">
                            <img onError="this.src='{{ asset('imagenes/estatico/no_imagen.jpg')}}'" class="imagen_card mb-2 mw-100" src="{{asset($blog->imagenes()->first()['imagen'])}}" alt="">
                            <div class="card-body ">
                                <span class="categoria text-uppercase px-1">
                                {{$blog->categoria->nombreshow_format}}
                                </span>
                              <div class="contenedor_descripcion_card" >
                                <div class="titulo_card mt-3">{{$blog->titulo[app()->getlocale()]}}</div>
                              </div>             
                            </div>
                        </div>
                    </a>
                </div>
                @empty
                <div class="not_result">
                    <p>No hay Blogs </p>
                </div>
                @endforelse
            </div>  
        </div>
        <div class="col-12 col-md-12 col-lg-3 order-1 order-lg-3 mb-4 mb-lg-0">       
            <div class="fondo_categoria py-5 px-3">  
                <h4 class="titulo_lista_categorias text-uppercase">{{__t('CATEGORÍAS') }}</h4>
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