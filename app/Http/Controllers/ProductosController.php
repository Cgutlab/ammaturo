<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Familia;
use App\Producto;
use App\Portada;
use App\Metadato;
class ProductosController extends Controller
{
    public function productos($id)
    {
        $metadato      = Metadato::where('seccion', 'producto')->first();
        $portada       = Portada::where('seccion', 'producto')->first();
        $familia       = Familia::find($id);
        $familia->nombre = json_decode($familia->nombre,true);
        $familias      = Familia::orderBy('orden', 'ASC')->get();
        foreach ($familias as $key => $f) {
            $f->nombre = json_decode($f->nombre, true);
        }
        $productos     = Producto::orderBy('orden', 'ASC')->get();
        foreach ($productos as $key => $producto) {
            $producto->nombre = json_decode($producto->nombre, true);
        }
        $producto_list = Producto::where('id_superior', $id)->orderBy('orden', 'ASC')->get();
        foreach ($producto_list as $key => $product) {
            $product->nombre = json_decode($product->nombre, true);
        }
        $active = "producto";
        return view('public.productos', compact('productos', 'familias','familia', 'metadato','producto_list','portada','active'));
    }
    public function producto($id)
    {
        $portada       = Portada::where('seccion', 'producto')->first();
        $metadato      = Metadato::where('seccion', 'producto')->first();
        $familias      = Familia::orderBy('orden', 'ASC')->get();
        foreach ($familias as $key => $f) {
            $f->nombre = json_decode($f->nombre, true);
        }
        $productos     = Producto::orderBy('orden', 'ASC')->get();
        foreach ($productos as $key => $product) {
            $product->nombre = json_decode($product->nombre, true);
        }

        $producto         = Producto::find($id);
        $producto->nombre           = json_decode($producto->nombre, true);
        $producto->descripcion      = json_decode($producto->descripcion, true);
        $producto->archivo          = json_decode($producto->archivo, true);
        $producto->caracteristicas  = json_decode($producto->caracteristicas, true);
        $producto->video            = json_decode($producto->video, true);
        foreach ($producto->relacionados as $key => $relacionados) {
            $relacionados->nombre = json_decode($relacionados->nombre, true);
        }
        $active = "producto";
        return view('public.producto', compact('productos', 'familias', 'metadato','producto', 'portada','active'));
    }
}
