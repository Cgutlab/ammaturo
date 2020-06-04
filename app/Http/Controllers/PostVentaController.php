<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\PostVentas;
use App\PostVenta;
use App\Icono;
use App\Portada;
use App\Metadato;
use App\Dato;
class PostVentaController extends Controller
{
    public function index(){
        $portada       = Portada::where('seccion', 'postventa')->first();
        $metadato      = Metadato::where('seccion', 'postventa')->first();
        $postventa              = PostVenta::first();
        $postventa->titulo      = json_decode($postventa->titulo, true);
        $postventa->descripcion = json_decode($postventa->descripcion, true);

        $iconos = Icono::where('seccion', 'postventa')->orderBy('orden', 'ASC')->get();
        foreach ($iconos as $icono) {
            $icono->titulo = json_decode($icono->titulo, true);
            $icono->texto  = json_decode($icono->texto, true);
        }
        $active = "postventa";
        return view('public.postventa', compact('postventa', 'iconos', 'metadato','portada','active'));
    }
    public function enviarMail(Request $request)
    {
        $datos                 = Dato::first();
        $emails                = json_decode($datos->email, true);
        foreach ($emails as $key => $value) {
            if(array_search('Post-ventas', $value, true))
                $posicion = $key;
        }
        $data['email_empresa'] = $emails[$posicion]['email'];
        //$data['email_empresa'] = 'carlossierralsf@gmail.com';
        $data['nombre']        = $request->nombre;
        $data['empresa']       = $request->empresa;
        $data['email']         = $request->email;
        $data['mensaje']       = $request->mensaje;
        $secret                = '6LctaZkUAAAAAMujRm0fydSY4M-21cYS2Pv4Ik89';
        $response              = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secret."&response=".$request->recaptcha_response."&remoteip=".$_SERVER['REMOTE_ADDR']);
        $g_response            = json_decode($response);
        $g_response->success   = true;
        if($g_response->success===true) {
             Mail::to($data['email_empresa'])->send(new PostVentas($data));
            return redirect()->route('postventas')->with('alert', "Solicitud realizada exitósamente" );
        }
        else{
            return redirect()->route('postventas')->with('recaptcha-error', true);
        }
    }
}
