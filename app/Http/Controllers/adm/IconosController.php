<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use App\Icono;

class IconosController extends Controller
{
    public function index($seccion)
    {
        $iconos = Icono::where('seccion',$seccion)->orderBy('orden', 'asc')->get();
        return view('adm.iconos.index',compact('iconos', 'seccion'));
    }

    public function showCreate($seccion)
    {
        $seccion = $seccion;
        return view('adm.iconos.create',compact('seccion'));
    }

    public function store(Request $request)
    {
        //dd($request->all());
        if ($request->hasFile('imagen'))
        {
            $path = $request->file('imagen')->store('imagenes/icono');
        }
        else
            $path = null;
        $icono = new Icono();
        $icono->titulo    = json_encode($request->titulo);
        $icono->texto     = json_encode($request->contenido);
        $icono->imagen    = $path;
        $icono->seccion   = $request->seccion;
        $icono->orden     = $request->orden;
        $icono->save();
        return redirect()->route('iconos', $icono->seccion)->with('alert', "Registro almacenado exitósamente" );
    }

    public function showEdit($id)
    {
        $icono = Icono::find($id);
        $icono->titulo = json_decode($icono->titulo, true);
        $icono->texto = json_decode($icono->texto, true);
        return view('adm.iconos.edit', compact('icono'));
    }

    public function update(Request $request, $id)
    {
        $icono = Icono::find($id);
        if ($request->hasFile('imagen'))
        {
            Storage::delete($icono->imagen);
            $path = $request->file('imagen')->store('imagenes/icono');
        }else{
            $path = $icono->imagen;
        }
        $icono->titulo    = json_encode($request->titulo);
        $icono->texto     = json_encode($request->contenido);
        $icono->imagen    = $path;
        $icono->seccion   = $request->seccion;
        $icono->orden     = $request->orden;
        $icono->save();
        return redirect()->route('iconos', $icono->seccion)->with('alert', "Registro actualizado exitósamente" );
    }

    public function eliminar($id){
        $icono = Icono::find($id);
        $icono->delete();
        return redirect()->back()->with('alert', "Registro eliminado exitósamente" );
    }
}
