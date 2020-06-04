<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Portada;

class PortadaController extends Controller
{
    public function index()
    {
        return null;
    }

    public function showCreate()
    {
        return null;
    }

    public function store(Request $request)
    {
        return null;
    }

    public function showEdit($seccion)
    {
        $portada  = Portada::where('seccion', $seccion)->first();
        return view('adm.portada.edit', compact('portada', 'seccion'));
    }

    public function update(Request $request, $id)
    {
        $portada = Portada::find($id);
        if ($request->hasFile('imagen'))
        {
            Storage::delete($portada->imagen);
            $path = $request->file('imagen')->store('imagenes/enlace');
        }else{
            $path = $portada->imagen;
        }

        $portada->imagen   = $path;
        $portada->seccion  = $request->seccion;
        $portada->save();
        return redirect()->route('portada',$request->seccion)->with('alert', "Registro actualizado exitósamente" );
    }

    public function eliminar($id){
        return null;
    }
}
