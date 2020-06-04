<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\Presupuesto;
use App\Producto;
use App\Portada;
use App\Dato;
use App\Metadato;

class PresupuestoController extends Controller
{
    public function index(){
        $portada   = Portada::where('seccion', 'presupuesto')->first();
        $metadato  = Metadato::where('seccion', 'presupuesto')->first();
        $active    = "presupuesto";
        $terminos  = json_decode(Dato::first()['terminos'], true);
        return view('public.presupuesto', compact('metadato','portada','active', 'terminos'));
    }
    public function Productos(Request $request, $id){
        if( session('productos') )
            $productos = json_decode(session('productos'), true);
        else
            $productos = null;

        $portada                        = Portada::where('seccion', 'presupuesto')->first();
        $metadato                       = Metadato::where('seccion', 'presupuesto')->first();
        $producto                       = Producto::find($id);
        $familia = $producto->familia->id;
        if(!isset($productos[$id])){
            $productos[$id]['id']           = $producto->id;
            $productos[$id]['nombre']       = json_decode($producto->nombre, true);
            $productos[$id]['imagen']       = $producto->imagenes()->first()['imagen'];
            $productos[$id]['categoria']    = json_decode($producto->familia->nombre, true);
            $productos[$id]['id_categoria'] = $producto->familia->id;
            $productos[$id]['cant_producto']= 1;
        }
        
        $active                         = "presupuesto";
        //dd($productos);
        session(['productos' => json_encode($productos)]);
        return view('public.presupuesto_table', compact( 'productos', 'metadato','portada','active', 'familia'));
    }
    public function removerProductos($id){
        
        if( session('productos') )
            $productos = json_decode(session('productos'), true);

        unset($productos[$id]);
        $ultimo  = end($productos);
        $familia = end($productos)['id_categoria'];
        $portada                        = Portada::where('seccion', 'presupuesto')->first();
        $metadato                       = Metadato::where('seccion', 'presupuesto')->first();
        $active                         = "presupuesto";
        session(['productos' => json_encode($productos)]);
        return view('public.presupuesto_table', compact( 'productos', 'metadato','portada','active', 'familia'));
    }
    public function updateCantidad(){
        $productos = json_decode(session('productos'), true);
        $productos[request()->id_producto]['cant_producto'] = request()->cantidad;
        session()->forget('productos');
        session(['productos' => json_encode($productos)]);
        return $productos[request()->id_producto]['cant_producto'];
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
        $data['telefono']      = $request->telefono;
        $data['empresa']       = $request->empresa;
        $data['email']         = $request->email;
        $data['mensaje']       = $request->mensaje;
        $data['productos']     = json_decode(session('productos'), true);
        $secret                = '6LctaZkUAAAAAMujRm0fydSY4M-21cYS2Pv4Ik89';
        $response              = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secret."&response=".$request->recaptcha_response."&remoteip=".$_SERVER['REMOTE_ADDR']);
        $g_response            = json_decode($response);
        $g_response->success   = true;
        if($g_response->success===true) {
            Mail::to($data['email_empresa'])->send(new Presupuesto($data));
            session()->forget('productos');
            return redirect()->route('presupuesto')->with('sended', "yes" );
        }
        else{
            return redirect()->route('presupuesto')->with('recaptcha-error', true);
        }
    }
}
