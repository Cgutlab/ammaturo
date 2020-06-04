@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('posts') }}">Posts</a></li>
            </ol>
        </nav>
        @if(session('alert'))
        <div class="msg bg-success text-white text-center py-1">
            <p class="m-0">{{session('alert')}}</p>
        </div>
        @endif
        <h5>Posts</h5>
        <table class="table">
            <thead>
                <tr>
                <th scope="col">Nombre</th>
                <th scope="col">Categoria</th>
                <th scope="col">Orden</th>
                <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
                @forelse($posts as $post)
                    <tr>
                        <td>{!! $post->titulo !!}</td>
                        <td>{!! $post->categoria->nombre_format !!}</td>          
                        <td>{!! $post->orden !!}</td>
                        <td>
                            <a href=" {{ route('post_show', $post->id)}} " class="btn btn-editar"><i class="material-icons dp48">create</i></a>
                            <a onclick="return confirm('Realmente desea eliminar este registro?')"  href=" {{ action('adm\BlogsController@eliminar',  $post->id)}} " class="btn btn-eliminar_listado"><i class="material-icons ">delete</i></a>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td >No existen registros</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection
