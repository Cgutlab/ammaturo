@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col s12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('traducciones') }}">Traducciones</a></li>
            </ol>
        </nav>
        <h3>Editar</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\TraduccionController@update', $traduccion->id)}}">
            @csrf
            @method('PUT')
            <div class="row">
                @foreach (LaravelLocalization::getSupportedLocales() as $key => $lang)
                @if($key == 'es')
                    <div class="col-12">
                        <div class="form-group">
                            <label for="traduccion_{{$key}}">Key </label>
                            <input type="text" class="form-control" id="traduccion_{{$key}}" name="traduccion[{{$key}}]"  aria-describedby="nombreHelp" placeholder="Ingrese el key" value="{{ $traduccion->key }}">
                        </div>
                    </div>
                @else
                    <div class="col-12">
                        <div class="form-group">
                            <label for="traduccion_{{$key}}">Traducir al {{$lang['name']}}</label>
                            <input type="text" class="form-control" id="traduccion_{{$key}}" name="traduccion[{{$key}}]"  aria-describedby="nombreHelp" placeholder="Ingrese la traducción" value="{{$traduccion->getTranslations('traducciones')[$key] }}">
                        </div>
                    </div>
                @endif
                @endforeach
            </div>              
            <div class="row">
                <div class="col-6">
                    <a href="{{ route('traducciones')}}" class="btn btn-eliminar">Cancelar</a>
                </div>
                <div class="col-6">
                    <button class="btn btn-enviar d-flex align-items-center" type="submit" name="action">Guardar 
                        <i style="font-size:24px;" class="material-icons">send</i>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection