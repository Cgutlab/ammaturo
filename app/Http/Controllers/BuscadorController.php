<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Producto;
use App\Blog;
class BuscadorController extends Controller
{
    public function index()
    {
        $active = 'buscador';
        return view('public.buscador', compact('active'));
    }
    public function busqueda(Request $request)
    {
        $busquedap  = Producto::where('nombre', 'like', '%' . $request->datos . '%')->orWhere('descripcion', 'like', '%' . $request->datos . '%')->orWhere('caracteristicas', 'like', '%' . $request->datos . '%')->get();
        $busquedab  = Blog::where('titulo', 'like', '%' . $request->datos . '%')->orWhere('descripcion', 'like', '%' . $request->datos . '%')->get();
        if($busquedap->count()==0)
            $busquedap = null;
        else
            foreach ($busquedap as $key => $producto) {
                $producto->nombre = json_decode($producto->nombre, true);
            }
        if($busquedab->count() == 0)
            $busquedab = null;
        else        
            foreach ($busquedab as $key => $blog) {
                $blog->titulo = json_decode($blog->titulo, true);
            }
        $active = 'buscador';
        return view('public.buscador', compact('busquedap','busquedab', 'active'));
    }
}
