@extends('adm.layouts.app')
@section('content')
<div class="contenido">
    @if(session('alert'))
    <div class="msg bg-success text-white text-center py-1 mb-3">
        <p class="m-0">{{session('alert')}}</p>
    </div>
    @endif
    <div class="col-12">
        <h3>Datos</h5>
        <div class="divider"></div>
        <form method="POST"  enctype="multipart/form-data" action="{{action('adm\DatoController@update')}}" class="col s12 m8 offset-m2 xl10 offset-xl1">
            @csrf
            @method('PUT')

                <h4>Editar</h5>
                    <input type="hidden"  name="seccion" value="{{$seccion}}">
                <div class="divider"></div>
                
                    @if($seccion=='telefono')
                        <div class="row">
                            <div class="col-12">
                                <h5>Telefonos</h5>
                                <button type="button" class="btn btn-enviar" onclick="agregarTelefono()">+</button>
                            </div>
                        </div>
                        <div id="telefonos" class="w-100"></div>
                    @endif
                    @if($seccion=='direccion')
                        <div class="row ">
                            <div class="form-group col-6">
                                <label for="telefono">Calle</label>
                                <input type="text" class="form-control" id="calle" name="calle" placeholder="Ingrese la calle" value="{{$direccion['calle']}}">
                            </div>
                            <div class="form-group col-6">
                                <label for="altura">Altura</label>
                                <input type="text" class="form-control" id="altura" name="altura" placeholder="Ingrese la altura" value="{{$direccion['altura']}}">
                            </div>
                            <div class="form-group col-6">
                                <label for="telefono">Localidad</label>
                                <input type="text" class="form-control" id="localidad" name="localidad" placeholder="Ingrese la localidad" value="{{$direccion['localidad']}}">
                            </div>
                            <div class="form-group col-6">
                                <label for="telefono1">Provincia</label>
                                <input type="text" class="form-control" id="provincia" name="provincia" placeholder="Ingrese la provincia" value="{{$direccion['provincia']}}">
                            </div>
                            <div class="form-group col-6">
                                <label for="telefono1">País</label>
                                <input type="text" class="form-control" id="pais" name="pais" placeholder="Ingrese el pais" value="{{$direccion['pais']}}">
                            </div>
                        </div>
                    @endif
                    @if($seccion=='email')
                    <div class="row mb-4">
                        <div class="col-12 mb-3">
                            <label for="email_contacto">Email Principal</label>
                            <input type="text" class="form-control" id="email_principal" name="email[]" placeholder="Ingrese el email">
                            <input type="hidden" id="seccion_principal" name="seccion_email[]" value="principal">
                        </div>
                        <div class="col-12">
                            <h5>Emails</h5>
                            <button type="button" class="btn btn-enviar" onclick="agregarEmail()">+</button>
                        </div>
                    </div>
                    <div id="emails" class="w-100"></div>
                    @endif
                    @if($seccion=='terminos')
                        @foreach (LaravelLocalization::getSupportedLocales() as $key => $lang)
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="terminos_{{$key}}">Terminos y condiciones ({{$lang['name']}})</label>
                                        <textarea class="form-control terminos" id="terminos_{{$key}}" name="terminos[{{$key}}]"  rows="3">{{ $terminos[$key] }}</textarea>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endif
                    @if($seccion=='mapa')
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group col-6">
                                    <label for="mapa">Mapa en la secci&oacute;n de Contacto</label>
                                    <input type="text" class="form-control" id="mapa" name="mapa" placeholder="Ingrese el iframe del mapa a mostrar" value="{{$mapa}}">
                                </div>
                            </div>
                        </div>
                    @endif
                <div class="row w-100">
                    <div class="col">
                        <button class="btn btn-enviar d-flex align-items-center" type="submit" name="action">Guardar
                            <i style="font-size:24px;" class="material-icons">send</i>
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection
@push('script')
    <script>
        seccion = "{!! $seccion !!}"
        if(seccion == 'terminos'){
            CKEDITOR.replaceClass = 'terminos';
            CKEDITOR.config.height = '150px';
            CKEDITOR.config.width = '100%';
            
        }
        if(seccion == "telefono"){
            if({!! json_encode($telefono) !!} !== null){
                telefono = {!!  json_encode($telefono) !!}
                for (let i = 0; i < telefono.length; i++) {
                    if(window.contadorT === undefined)
                        window.contadorT = 0
                    window.contadorT++
                    html=''
                    html+='<div class="row telefono mb-3">'
                        html+='<div class="form-group col-3">'
                            html+='<label for="tipo">Tipo de Telefono</label>'
                            html+=`<select class="form-control" id="tipo" name="tipo[]">`
                                html+=`<option value="0">Seleccione el tipo</option>`
                                if(telefono[i].tipo == 'tel')
                                    html+=`<option value="tel" selected>Teléfono</option>`
                                else
                                    html+=`<option value="tel">Teléfono</option>`
                                if(telefono[i].tipo == 'wsp')
                                    html+=`<option value="wsp" selected>Whatsapp</option>`
                                else
                                    html+=`<option value="wsp" >Whatsapp</option>`
                            html+=`</select>`
                        html+='</div>'
                        html+='<div class="form-group col-3">'
                            html+='<label for="tipo">Sección a ubicar</label>'
                            html+=`<select class="form-control" id="seccion_tel" name="seccion_tel[]">`
                                html+=`<option value="0">Seleccione el tipo</option>`
                                if(telefono[i].seccion == 'header')
                                    html+=`<option value="header" selected>Header</option>`
                                else
                                    html+=`<option value="header">Header</option>`
                                if(telefono[i].seccion == 'footer')
                                    html+=`<option value="footer" selected>Footer</option>`
                                else
                                    html+=`<option value="footer">Footer</option>`
                                if(telefono[i].seccion == 'ambos')
                                    html+=`<option value="ambos" selected>Ambos</option>`
                                else
                                    html+=`<option value="ambos">Ambos</option>`
                            html+=`</select>`
                        html+='</div>'
                        html+='<div class="form-group col-5">'
                            html+='<label for="telefono">Telefono</label>'
                            html+=`<input type="text" class="form-control" id="telefono" name="telefono[]" placeholder="Ingrese el telefono" value="${telefono[i].num}">`
                        html+='</div>'
                        html+='<div class="col-1 form-group d-flex align-items-end justify-content-center">'
                            html+= '<div class="boton">';
                                html+= '<button class="btn btn-eliminar " onClick="removerTelefono(this)" type="button">X</button>';
                            html+= '</div>';
                        html+= '</div>';
                    html+='</div>'
                    $('#telefonos').append(html)
                }
            }
            function agregarTelefono(){
                if(window.contadorT === undefined)
                    window.contadorT = 0
                window.contadorT++
                html=''
                html+='<div class="row telefono mb-3">'
                    html+='<div class="form-group col-3">'
                        html+='<label for="tipo">Tipo de Telefono</label>'
                        html+=`<select class="form-control" id="tipo" name="tipo[]">`
                            html+=`<option value="0">Seleccione el tipo</option>`
                            html+=`<option value="tel">Teléfono</option>`
                            html+=`<option value="wsp">Whatsapp</option>`
                        html+=`</select>`
                    html+='</div>'
                    html+='<div class="form-group col-3">'
                            html+='<label for="tipo">Sección a ubicar</label>'
                            html+=`<select class="form-control" id="seccion_tel" name="seccion_tel[]">`
                                html+=`<option value="0">Seleccione el tipo</option>`
                                html+=`<option value="header">Header</option>`
                                html+=`<option value="footer">Footer</option>`
                                html+=`<option value="ambos">Ambos</option>`
                            html+=`</select>`
                        html+='</div>'
                    html+='<div class="form-group col-5">'
                        html+='<label for="telefono">Telefono</label>'
                        html+=`<input type="text" class="form-control" id="telefono" name="telefono[]" placeholder="Ingrese el telefono">`
                    html+='</div>'
                    html+='<div class="col-1 form-group d-flex align-items-end justify-content-center">'
                        html+= '<div class="boton">';
                            html+= '<button class="btn btn-eliminar " onClick="removerTelefono(this)" type="button">X</button>';
                        html+= '</div>';
                    html+= '</div>';
                html+='</div>'
                $('#telefonos').append(html)
            }
            function removerTelefono(t){
                $(t).closest(".telefono").remove();
                window.contadorT--;
            }
        }

        if(seccion == "email"){
            emails = {!! json_encode($email) !!}
            if(emails){
                $('#seccion_principal').val(emails[0].seccion)
                $('#email_principal').val(emails[0].email)
                for (let i = 1; i < emails.length; i++) {
                    if(window.contadorA === undefined)
                        window.contadorA = 0
                    window.contadorA++
                    html=''
                    html+='<div class="row w-100 email mb-3">'
                        html+='<div class="col-5">'
                            html+='<label for="email_contacto">Secci&oacute;n</label>'
                            html+=`<input type="text" class="form-control" id="seccion_email" name="seccion_email[]" placeholder="Ingrese el nombre de la seccion" value="${emails[i].seccion}">`
                        html+='</div>'
                        html+='<div class="col-6">'
                            html+='<label for="email_contacto">Email</label>'
                            html+=`<input type="text" class="form-control" id="email" name="email[]" placeholder="Ingrese el email" value="${emails[i].email}">`
                        html+='</div>'
                        html+='<div class="col-1 d-flex align-items-end justify-content-center">'
                            html+= '<div class="boton">';
                                html+= '<button class="btn btn-eliminar " onClick="removerEmail(this)" type="button">X</button>';
                            html+= '</div>';
                        html+= '</div>';
                    html+='</div>'
                    $('#emails').append(html)
                }
            }
            function agregarEmail(){
                if(window.contadorA === undefined)
                    window.contadorA = 0
                window.contadorA++
                html=''
                html+='<div class="row w-100 email mb-3">'
                    html+='<div class="col-5">'
                        html+='<label for="email_contacto">Secci&oacute;n</label>'
                        html+='<input type="text" class="form-control" id="seccion_email" name="seccion_email[]" placeholder="Ingrese el nombre de la seccion">'
                    html+='</div>'
                    html+='<div class="col-6">'
                        html+='<label for="email_contacto">Email</label>'
                        html+='<input type="text" class="form-control" id="email" name="email[]" placeholder="Ingrese el email">'
                    html+='</div>'
                    html+='<div class="col-1 d-flex align-items-end justify-content-center">'
                        html+= '<div class="boton">';
                            html+= '<button class="btn btn-eliminar " onClick="removerEmail(this)" type="button">X</button>';
                        html+= '</div>';
                    html+= '</div>';
                html+='</div>'
                $('#emails').append(html)
            }
            function removerEmail(t){
                $(t).closest(".email").remove();
                window.contadorA--;
            }
        }
    </script>
@endpush