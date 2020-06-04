@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('linea') }}">Linea de Tiempo</a></li>
            </ol>
        </nav>
        @if(session('alert'))
        <div class="msg bg-success text-white text-center py-1 mb-3">
            <p class="m-0">{{session('alert')}}</p>
        </div>
        @endif
        <h5>Linea de tiempo</h5>
        <table class="table">
            <thead>
                <tr>
                <th scope="col">A&ntilde;o</th>
                <th scope="col">Orden</th>
                <th scope="col">Opciones</th>
                </tr>
            </thead>    
            <tbody>
            @forelse($puntos as $sl)
                <tr>
                    <td>{!! $sl->item !!}</td>
                    <td>{!! $sl->orden !!}</td>
                    <td>
                        <a href=" {{ route('linea_show', $sl->id)}} " class="btn btn-editar"><i class="material-icons ">create</i></a>
                        <a onclick="return confirm('Realmente desea eliminar este registro?')"  href=" {{ action('adm\LineaController@eliminar',  $sl->id)}} " class="btn btn-eliminar_listado"><i class="material-icons ">delete</i></a>
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