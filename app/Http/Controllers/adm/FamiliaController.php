<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use App\Familia;
class FamiliaController extends Controller
{
    public function index()
    {
        $familias = Familia::orderBy('orden', 'asc')->get();
        foreach ($familias as $key => $familia) {
           $nombres = json_decode($familia->nombre, true);
           $mensaje = '';

           foreach (LaravelLocalization::getSupportedLocales() as $key => $lang){
               $mensaje .= '<p>'.$lang['name'].': '.$nombres[$key].'</p>';
            }
           $familia->nombre = $mensaje;
        }
        return view('adm.familia.index', compact('familias'));
    }

    public function showCreate()
    {
        return view('adm.familia.create');
    }

    public function store(Request $request)
    {
        if ($request->hasFile('imagen'))
        {
            $path = $request->file('imagen')->store('imagenes/familia');
        }
        else
            $path = null;

        $familia = new Familia();
        $familia->imagen = $path;
        $familia->nombre = json_encode($request->nombre);
        $familia->orden  = $request->orden;
        if(isset($request->active))
            $familia->active    = $request->active;
        else
            $familia->active    = 0;
        $familia->save();
        return redirect()->route('familia')->with('alert', "Registro almacenado exitósamente" );
    }

    public function showEdit($id)
    {
        $familia = Familia::find($id);
        $familia->nombre = json_decode($familia->nombre, true);
        //dd($familia);
        return view('adm.familia.edit', compact('familia'));
    }

    public function update(Request $request, $id)
    {
        $familia = Familia::find($id);
        if ($request->hasFile('imagen'))
        {
            Storage::delete($familia->imagen);
            $path = $request->file('imagen')->store('imagenes/familia');
        }else{
            $path = $familia->imagen;
        }

        $familia->nombre  = json_encode($request->nombre);
        $familia->imagen  = $path;
        $familia->orden   = $request->orden;
        if(isset($request->active))
            $familia->active    = $request->active;
        else
            $familia->active    = 0;
        $familia->save();
        return redirect()->route('familia')->with('alert', "Registro actualizado exitósamente");
    }

    public function eliminar($id){
        $familia = Familia::find($id);
        Storage::delete($familia->imagen);
        $familia->delete();
        return redirect()->back()->with('alert', "Registro eliminado exitósamente" );
    }
}
