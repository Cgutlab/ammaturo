@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('traducciones') }}">Traducciones</a></li>
            </ol>
        </nav>
        @if(session('alert'))
        <div class="msg bg-success text-white text-center py-1">
            <p class="m-0">{{session('alert')}}</p>
        </div>
        @endif
        <h5>Traducciones</h5>
        <table class="table">
            <thead>
                <tr>
                <th scope="col">Key</th>
                <th scope="col">Opciones</th>
                </tr>
            </thead>    
            <tbody>
            @forelse($traducciones as $traduccion)
                <tr>
                    <td>{!! $traduccion->key !!}</td>
                    <td>
                        <a href=" {{ route('traduccion_show', $traduccion->id)}} " class="btn btn-editar"><i class="material-icons ">create</i></a>
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
