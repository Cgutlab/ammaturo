<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use App\Categoria;

class CategoriasController extends Controller
{
    public function index()
    {
        $categorias = Categoria::orderBy('orden', 'asc')->get();
        foreach ($categorias as $key => $categoria) {
           $nombres = json_decode($categoria->nombre, true);
           $mensaje = '';

           foreach (LaravelLocalization::getSupportedLocales() as $key => $lang){
               $mensaje .= '<p>'.$lang['name'].': '.$nombres[$key].'</p>';
            }
           $categoria->nombre = $mensaje;
        }
        return view('adm.categoria.index', compact('categorias'));
    }

    public function showCreate()
    {
        return view('adm.categoria.create');
    }

    public function store(Request $request)
    {
        $categoria         = new Categoria();
        $categoria->nombre = json_encode($request->nombre);
        $categoria->orden  = $request->orden;
        $categoria->save();
        return redirect()->route('categorias')->with('alert', "Registro almacenado exitósamente" );
    }

    public function showEdit($id)
    {
        $categoria         = Categoria::find($id);
        $categoria->nombre = json_decode($categoria->nombre, true);
        return view('adm.categoria.edit', compact('categoria'));
    }

    public function update(Request $request, $id)
    {
        $categoria          = Categoria::find($id);
        $categoria->nombre  = json_encode($request->nombre);
        $categoria->orden   = $request->orden;
        $categoria->save();
        return redirect()->route('categorias')->with('alert', "Registro actualizado exitósamente");
    }

    public function eliminar($id){
        $categoria = Categoria::find($id);
        $categoria->delete();
        return redirect()->back()->with('alert', "Registro eliminado exitósamente" );
    }
}
