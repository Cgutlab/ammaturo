<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slider;
use App\Enlace;
use App\Producto;
use App\Icono;
use App\Subscripciones;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $sliders = Slider::where('seccion', 'home')->orderBy('orden', 'ASC')->get();
        foreach ($sliders as  $slider) {
            $slider->contenido = json_decode($slider->contenido, true);
        }
        $enlace              = Enlace::first();
        $enlace->titulo      = json_decode($enlace->titulo, true);
        $enlace->descripcion = json_decode($enlace->descripcion, true);
        $productos = Producto::where('destacado', '1')->orderBy('orden', 'ASC')->get();
        foreach ($productos as  $producto) {
            $producto->nombre = json_decode($producto->nombre, true);
            
        }
        $iconos = Icono::where('seccion', 'home')->orderBy('orden', 'ASC')->get();
        foreach ($iconos as $icono) {
            $icono->titulo = json_decode($icono->titulo, true);
            $icono->texto  = json_decode($icono->texto, true);
        }
        $active = "home";
        return view('public.home',compact('sliders', 'enlace', 'productos', 'iconos','active'));
    }
    
    public function storeSubscripcion(Request $request, Subscripciones $item){
        $exist = Subscripciones::where('email', $request->email_subcribir)->first();
        if(empty($exist)){
        $item->email      = $request->email_subcribir;
        $item->save();
            return redirect()->back()->with('success', 'Subcripción exitosa');
        }
        else
            return redirect()->back()->with('error', 'Ya esta subscrito a nuestras novedades'); 
    }

}
