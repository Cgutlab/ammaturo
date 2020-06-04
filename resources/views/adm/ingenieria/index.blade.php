@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('ingenierias') }}">Ingenieria</a></li>
            </ol>
        </nav>
        @if(session('alert'))
        <div class="msg bg-success text-white text-center py-1 mb-3">
            <p class="m-0">{{session('alert')}}</p>
        </div>
        @endif
        <h5>Ingenieria</h5>
        <table class="table">
            <thead>
                <tr>
                <th scope="col">Imagen</th>
                <th scope="col">Orden</th>
                <th scope="col">Opciones</th>
                </tr>
            </thead>    
            <tbody>
            @forelse($items as $item)
                <tr>
                    <td><img onError="this.src='{{ asset('imagenes/estaticos/no_img.png')}}?t=<?php echo time(); ?>'" src="{{ asset($item->imagen) }}" class="icono_tabla"></td>
                    <td>{!! $item->orden !!}</td>
                    <td>
                        <a href=" {{ route('ingenieria_show', $item->id)}} " class="btn btn-editar"><i class="material-icons ">create</i></a>
                        <a onclick="return confirm('Realmente desea eliminar este registro?')"  href=" {{ action('adm\IngenieriaController@eliminar',  $item->id)}} " class="btn btn-eliminar_listado"><i class="material-icons ">delete</i></a>
                    </td>
                </tr>
            @empty
                <tr>
                    <td >No existen registros</td>
                </tr>
            @endif
            </tbody>
        </table>
    </div>
</div>
@endsection
