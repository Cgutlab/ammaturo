<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\Contacto;
use App\Dato;
use App\Metadato;
class ContactoController extends Controller
{
    public function index(){
        $metadato = Metadato::where('seccion', 'contacto')->first();
        $dato     = Dato::first();
        $active   = "contacto";
        return view('public.contacto', compact('dato','metadato','active'));
    }
    public function enviarMail(Request $request)
    {

        $datos                 = Dato::first();
        $emails                = json_decode($datos->email, true);
        foreach ($emails as $key => $value) {
            if(array_search('principal', $value, true))
                $posicion = $key;
        }
        $data['email_empresa'] = $emails[$posicion]['email'];
        //$data['email_empresa'] = 'carlossierralsf@gmail.com';
        $data['nombre']        = $request->nombre;
        $data['empresa']       = $request->empresa;
        $data['email']         = $request->email;
        $data['telefono']      = $request->telefono;
        $data['mensaje']       = $request->mensaje;
        $secret                = '6LctaZkUAAAAAMujRm0fydSY4M-21cYS2Pv4Ik89';
        $response              = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secret."&response=".$request->recaptcha_response."&remoteip=".$_SERVER['REMOTE_ADDR']);
        $g_response            = json_decode($response);
        if($g_response->success===true) {
             Mail::to($data['email_empresa'])->send(new Contacto($data));
            return redirect()->route('contacto')->with('alert', "Solicitud realizada exit¨®samente" );
        }
        else{
            return redirect()->route('contacto')->with('recaptcha-error', true);
        }
    }
}
