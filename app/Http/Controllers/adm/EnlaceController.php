<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Enlace;
class EnlaceController extends Controller
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
        $enlace              = Enlace::first();
        $enlace->titulo      = json_decode($enlace->titulo, true);
        $enlace->descripcion = json_decode($enlace->descripcion, true);
        return view('adm.enlace.edit', compact('enlace'));
    }

    public function update(Request $request)
    {
        $enlace = Enlace::first();
        if ($request->hasFile('imagen'))
        {
            Storage::delete($enlace->imagen);
            $path = $request->file('imagen')->store('imagenes/enlace');
        }else{
            $path = $enlace->imagen;
        }

        if ($request->hasFile('logo'))
        {
            Storage::delete($enlace->logo);
            $path_logo = $request->file('logo')->store('imagenes/enlace');
        }else{
            $path_logo = $enlace->logo;
        }

        $enlace->imagen      = $path;
        $enlace->logo        = $path_logo;
        $enlace->titulo      = json_encode($request->titulo);
        $enlace->descripcion = json_encode($request->descripcion);
        $enlace->url         = $request->url;
        $enlace->save();
        return redirect()->route('enlace')->with('alert', "Registro actualizado exitósamente" );
    }

    public function eliminar($id){
        return null;
    }
}
