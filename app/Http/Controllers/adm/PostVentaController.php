<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\PostVenta;

class PostVentaController extends Controller
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
        $postventa              = PostVenta::first();
        $postventa->titulo      = json_decode($postventa->titulo, true);
        $postventa->descripcion = json_decode($postventa->descripcion, true);
        return view('adm.postventa.edit', compact('postventa'));
    }
    
    public function update(Request $request)
    {
        
        $postventa              = PostVenta::first();
        $postventa->titulo      = json_encode($request->titulo);
        $postventa->descripcion = json_encode($request->descripcion);
        $postventa->save();
        return redirect()->route('postventa_show')->with('alert', "Registro actualizado exitósamente" );
    }
    
    public function eliminar($id){
        return null;
    }    
}
