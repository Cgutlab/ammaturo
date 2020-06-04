<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ingenieria;
use App\Portada;
use App\Metadato;
class IngenieriaController extends Controller
{
    public function index(){
        $portada       = Portada::where('seccion', 'ingenieria')->first();
        $metadato      = Metadato::where('seccion', 'ingenieria')->first();
        $ingenierias   = Ingenieria::orderBy('orden', 'ASC')->get();
        foreach ($ingenierias as $key => $i) {
            $i->titulo    = json_decode($i->titulo, true);
            $i->subtitulo = json_decode($i->subtitulo, true);
            $i->texto     = json_decode($i->texto, true);
        }
        $active = "ingenieria";
        return view('public.ingenieria', compact('ingenierias', 'metadato','portada','active'));
    }
}
