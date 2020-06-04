<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use App\Linea;

class LineaController extends Controller
{
    public function index()
    {
        $puntos = Linea::orderBy('orden', 'asc')->get();
        return view('adm.linea.index',compact('puntos'));
    }

    public function showCreate()
    {
        return view('adm.linea.create');
    }

    public function store(Request $request)
    {
        $punto = new Linea();
        $punto->item   = $request->item;
        $punto->texto  = json_encode($request->texto);
        $punto->orden  = $request->orden;
        $punto->save();
        return redirect()->route('linea')->with('alert', "Registro almacenado exitósamente" );
    }

    public function showEdit($id)
    {
        $punto         = Linea::find($id);
        $punto->texto  = json_decode($punto->texto, true);
        return view('adm.linea.edit', compact('punto'));
    }

    public function update(Request $request, $id)
    {
        $punto = Linea::find($id);
        $punto->item   = $request->item;
        $punto->texto  = json_encode($request->texto);
        $punto->orden  = $request->orden;
        $punto->save();
        return redirect()->route('linea')->with('alert', "Registro actualizado exitósamente" );
    }

    public function eliminar($id){
        $punto = Linea::find($id);
        $punto->delete();
        return redirect()->back()->with('alert', "Registro eliminado exitósamente" );
    }
}
