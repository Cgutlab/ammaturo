<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Empresa;
use App\Slider;
use App\Metadato;
use App\Linea;
class EmpresaController extends Controller
{
    public function index()
    {
        $empresa              = Empresa::first();
        $empresa->titulo      = json_decode($empresa->titulo, true);
        $empresa->descripcion = json_decode($empresa->texto, true);
        $empresa->antiguedad  = json_decode($empresa->antiguedad, true);
        $empresa->trayectoria = json_decode($empresa->trayectoria, true);
        $empresa->clientes    = json_decode($empresa->clientes, true);
        $empresa->video       = json_decode($empresa->video, true);

        $sliders = Slider::where('seccion', 'empresa')->orderBy('orden', 'ASC')->get();
        foreach ($sliders as  $slider) {
            $slider->contenido = json_decode($slider->contenido, true);
        }

        $lineas = Linea::orderBy('orden', 'ASC')->get();
        foreach ($lineas as  $linea) {
            $linea->texto = json_decode($linea->texto, true);
        }

        $metadato     = Metadato::where('seccion', 'empresa')->first();
        $active = "empresa";
        return view('public.empresa',compact('sliders', 'metadato', 'empresa', 'lineas','active'));
    }
}
