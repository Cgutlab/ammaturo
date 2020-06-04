@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background:none;">
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('productos') }}">Producto</a></li>
            </ol>
        </nav>
        @if(session('alert'))
        <div class="msg bg-success text-white text-center py-1">
            <p class="m-0">{{session('alert')}}</p>
        </div>
        @endif
        <div class="row">
            <div class="col-5">
                <div class="form-group">
                    <label for="familia">Familia</label>
                    <select class="js-example-basic-single form-control" id="familia" name="familia" >
                    <option value="0">Seleccione una familia</option>
                        @foreach($familias as $familia)
                            <option value="{{$familia->id}}">{{$familia->nombreselect_format}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-2 d-flex align-items-center">
                <div class="boton_buscar d-flex align-items-end justify-content-center mt-3">
                    <button id="buscar" type="button" class="btn btn-enviar">Buscar</button>
                </div>
            </div>
        </div>
        <h5>Producto</h5>
        <table  class="table">
            <thead>
                <tr>
                <th scope="col">Nombre</th>
                <th scope="col">Familia</th>
                <th scope="col">Orden</th>
                <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody id="tabla">
                @forelse($productos as $producto)
                    <tr>
                        <td>{!! $producto->nombre !!}</td>
                        <td>{!! $producto->familia->nombre_format !!}</td>          
                        <td>{!! $producto->orden !!}</td>
                        <td>
                            <a href=" {{ route('producto_show', $producto->id)}} " class="btn btn-editar"><i class="material-icons dp48">create</i></a>
                            <a onclick="return confirm('Realmente desea eliminar este registro?')"  href=" {{ action('adm\ProductoController@eliminar',  $producto->id)}} " class="btn btn-eliminar_listado"><i class="material-icons ">delete</i></a>
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
@push('script')
    <script>
        familia_filtro = {{ session('familia') }}
        $('#familia').val(familia_filtro)
        if(familia_filtro>0){
            let ruta    = '{{ route('filtro') }}';
            var familia = $('#familia').val();
            ruta+='/?familia='+familia;
            $.get(ruta, function(data) {
                $('#tabla').empty();
                html=''
                for(i=0;i<data.length;i++){
                    ruta_server = '{{asset('')}}';
                    ruta_edit = `{{url('adm/producto/editar')}}`;
                    ruta_eliminar = '{{url()->current()}}/eliminar/'+data[i].id;
                    html+=`<tr>`
                        html+=`<td>${data[i].nombre}</td>`
                        html+=`<td>${data[i].nombre_familia}</td>`
                        html+=`<td>${data[i].orden}</td>`
                        html+=`<td>`
                            html+=`<a href="${ruta_edit+'/'+data[i].id}" class="btn btn-editar "><i class="material-icons">create</i></a>`
                            html+=`<a onclick="return confirm('Realmente desea eliminar este registro?')"  href="${ruta_eliminar} " class="btn btn-eliminar_listado"><i class="material-icons ">delete</i></a>`
                        html+=`</td> `
                    html+=`</tr>`
                }
                $('#tabla').append(html);
            });
        }
        $('#buscar').click(function(){
            let ruta    = '{{ route('filtro') }}';
            var familia = $('#familia').val();
            ruta+='/?familia='+familia;
            $.get(ruta, function(data) {
                $('#tabla').empty();
                html=''
                for(i=0;i<data.length;i++){
                    ruta_server = '{{asset('')}}';
                    ruta_edit = `{{url('adm/producto/editar')}}`
                    ruta_eliminar = '{{url()->current()}}/eliminar/'+data[i].id;
                    html+=`<tr>`
                        html+=`<td>${data[i].nombre}</td>`
                        html+=`<td>${data[i].nombre_familia}</td>`
                        html+=`<td>${data[i].orden}</td>`
                        html+=`<td>`
                            html+=`<a href="${ruta_edit+'/'+data[i].id}" class="btn btn-editar"><i class="material-icons">create</i></a>`
                            html+=`<a onclick="return confirm('Realmente desea eliminar este registro?')"  href="${ruta_eliminar} " class="btn btn-eliminar_listado"><i class="material-icons">delete</i></a>`
                        html+=`</td> `
                    html+=`</tr>`
                }
                $('#tabla').append(html);
            });
        });
    </script>
@endpush