<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Empresa;

class EmpresaController extends Controller
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
    
    public function showEdit()
    {
        $empresa              = Empresa::first();
        $empresa->titulo      = json_decode($empresa->titulo, true);
        $empresa->descripcion = json_decode($empresa->texto, true);
        $empresa->antiguedad  = json_decode($empresa->antiguedad, true);
        $empresa->trayectoria = json_decode($empresa->trayectoria, true);
        $empresa->clientes    = json_decode($empresa->clientes, true);
        $empresa->video       = json_decode($empresa->video, true);
        return view('adm.empresa.edit', compact('empresa'));
    }
    
    public function update(Request $request)
    {
        $empresa = Empresa::first();
        $empresa->titulo      = json_encode($request->titulo);
        $empresa->texto       = json_encode($request->descripcion);
        $empresa->antiguedad  = json_encode($request->antiguedad);
        $empresa->trayectoria = json_encode($request->trayectoria);
        $empresa->clientes    = json_encode($request->clientes);
        $empresa->video       = json_encode($request->video);
        $empresa->save();
        return redirect()->route('empresa')->with('alert', "Registro actualizado exitósamente" );
    }
    
    public function eliminar($id){
        return null;
    }    
}
