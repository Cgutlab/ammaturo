<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use App\Ingenieria;

class IngenieriaController extends Controller
{
    public function index()
    {
        $items = Ingenieria::orderBy('orden', 'asc')->get();
        return view('adm.ingenieria.index',compact('items'));
    }

    public function showCreate()
    {
        return view('adm.ingenieria.create');
    }

    public function store(Request $request)
    {
        
        if ($request->hasFile('imagen'))
        {
            $path = $request->file('imagen')->store('imagenes/ingenieria');
        }
        else
            $path = null;
        $item = new Ingenieria();
        $item->titulo    = json_encode($request->titulo);
        $item->subtitulo = json_encode($request->subtitulo);
        $item->texto     = json_encode($request->contenido);
        $item->imagen    = $path;
        $item->orden     = $request->orden;
        $item->save();
        return redirect()->route('ingenierias')->with('alert', "Registro almacenado exitósamente" );
    }

    public function showEdit($id)
    {
        $item            = Ingenieria::find($id);
        $item->titulo    = json_decode($item->titulo, true);
        $item->subtitulo = json_decode($item->subtitulo, true);
        $item->texto     = json_decode($item->texto, true);
        return view('adm.ingenieria.edit', compact('item'));
    }

    public function update(Request $request, $id)
    {
        $item = Ingenieria::find($id);
        if ($request->hasFile('imagen'))
        {
            Storage::delete($item->imagen);
            $path = $request->file('imagen')->store('imagenes/ingenieria');
        }else{
            $path = $item->imagen;
        }

        $item->titulo    = json_encode($request->titulo);
        $item->subtitulo = json_encode($request->subtitulo);
        $item->texto     = json_encode($request->contenido);
        $item->imagen    = $path;
        $item->orden     = $request->orden;
        $item->save();
        return redirect()->route('ingenierias')->with('alert', "Registro actualizado exitósamente" );
    }

    public function eliminar($id){
        $item = Ingenieria::find($id);
        $item->delete();
        return redirect()->back()->with('alert', "Registro eliminado exitósamente" );
    }
}
