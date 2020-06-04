<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use App\Traduccion;

class TraduccionController extends Controller
{
    public function index()
    {
        $traducciones = Traduccion::orderBy('id', 'asc')->get();
        foreach ($traducciones as $key => $traduccion) {
           $traducir = json_decode($traduccion->traducciones, true);
           $mensaje = '';

           foreach (LaravelLocalization::getSupportedLocales() as $key => $lang){
               $mensaje .= '<p>'.$lang['name'].': '.$traducir[$key].'</p>';
            }
           $traduccion->traducciones = $mensaje;
        }
        //dd($traducciones);
        return view('adm.traduccion.index', compact('traducciones'));
    }

    public function showCreate()
    {
        return view('adm.traduccion.create');
    }

    public function store(Request $request)
    {
        $traduccion               = new Traduccion();
        $traduccion->key          = $request->traduccion['es'];
        $traduccion->setTranslations('traducciones', $request->traduccion);
        $traduccion->save();
        return redirect()->route('traducciones')->with('alert', "Registro almacenado exitósamente" );
    }

    public function showEdit($id)
    {
        $traduccion               = Traduccion::find($id);
        
        return view('adm.traduccion.edit', compact('traduccion'));
    }

    public function update(Request $request, $id)
    {
        $traduccion               = Traduccion::find($id);
        $traduccion->key          = $request->traduccion['es'];
        $traduccion->setTranslations('traducciones', $request->traduccion);
        $traduccion->save();
        return redirect()->route('traducciones')->with('alert', "Registro actualizado exitósamente");
    }

    public function eliminar($id){
        $categoria = Categoria::find($id);
        $categoria->delete();
        return redirect()->back()->with('alert', "Registro eliminado exitósamente" );
    }
}
