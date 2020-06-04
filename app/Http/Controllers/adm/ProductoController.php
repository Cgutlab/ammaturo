<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use App\Producto;
use App\ProductoImagen;
use App\Familia;
class ProductoController extends Controller
{
    public function index()
    {
        if(!session('familia'))
        session(['familia' => 0]);
        $productos = Producto::orderBy('id_superior', 'ASC')->orderBy('orden', 'ASC')->get();
        $familias        = Familia::orderBy('orden', 'ASC')->get();
        foreach ($productos as $key => $producto) {
            $nombres = json_decode($producto->nombre, true);
            $producto->nombre = $nombres[LaravelLocalization::getCurrentLocale()];
        }
        return view('adm.producto.index', compact('productos', 'familias'));
    }
    public function showCreate()
    {
        $familias        = Familia::orderBy('orden', 'ASC')->get();
        $productos       = Producto::orderBy('orden', 'ASC')->get();
        return view('adm.producto.create', compact('familias','productos'));
    }
    public function store(Request $request, Producto $item)
    {

        $galeria = [];
        if($request->hasFile('imagenes'))
            for ($i=0; $i < count($request->imagenes); $i++) {
                $ruta        = $request->file('imagenes.'.$i)->store('imagenes/producto');
                $orden       = $request->orden_imagen[$i];
                $galeria[$i] = [
                    'imagen'  => $ruta, 
                    'orden' => $orden
                ];
            }
            
        if($request->hasFile('archivo'))
            foreach (LaravelLocalization::getSupportedLocales() as $key => $lang){
                $ruta_archivo[$key]   = $request->file('archivo.'.$key)->store('archivos/producto');
            }
        else
            $ruta_archivo = null;

        if ($request->hasFile('plano'))
            $path = $request->file('plano')->store('imagenes/producto/plano');
        else
            $path = null;

        $item->nombre           = json_encode($request->nombre);
        $item->descripcion      = json_encode($request->descripcion);
        $item->archivo          = json_encode($ruta_archivo);
        $item->caracteristicas  = json_encode($request->caracteristicas);
        $item->video            = json_encode($request->video);
        $item->plano            = $path;
        if(isset($request->destacado))
            $item->destacado    = $request->destacado;
        else
            $item->destacado    = 0;
        $item->id_superior      = $request->familia;
        $item->orden            = $request->orden;
        $item->save();
        
        $relacionados = [];
        if(!is_null($request->relacionados)){
            for ($i=0; $i < count($request->relacionados); $i++) {
                $relacionados[$i] = [
                    'id_relacionado'  => $request->relacionados[$i],
                ];
            }
            if(!is_null($relacionados))
                $item->relacionados()->attach($relacionados);
        }
        $item->imagenes()->createMany($galeria);

        return redirect()->route('productos')->with('alert', 'Registro Almacenado Exitosamente.');
}

    public function showEdit($id)
    {
        $productos                  = Producto::orderBy('orden', 'ASC')->get();
        $producto                   = Producto::find($id);
        $producto->nombre           = json_decode($producto->nombre,true);
        $producto->descripcion      = json_decode($producto->descripcion,true);
        $producto->archivo          = json_decode($producto->archivo,true);
        $producto->caracteristicas  = json_decode($producto->caracteristicas,true);
        $producto->video            = json_decode($producto->video,true);
        $familias                   = Familia::orderBy('orden', 'ASC')->get();
        $galeria                    = $producto->imagenes;
        $relacionados               = [];

        foreach ($producto->relacionados as $key => $value) {
            $relacionados[] = $value->pivot->id_relacionado;
        }
        
        return view('adm.producto.edit', compact('producto', 'galeria', 'relacionados','familias','productos'));
    }

    public function update(Request $request, $id)
    {

        $producto = Producto::find($id);
        //declaramos un array para almacenar la galeria
        //comprobamos que en el array de imagen_e exista un null
        //En caso de tener contenido lo guardamos junto a su orden
        //En caso de no tener le asignamos la nueva imagen y su orden
        $galeria = [];
        //dd($request->all());
        for ($i=0; $i < count($request->imagen_e); $i++) {
            
            if(!is_null($request->imagen_e[$i])){
                
                if ($request->hasFile('imagenes.'.$i))
                    $ruta   = $request->file('imagenes.'.$i)->store('imagenes/producto');
                else
                    $ruta   = $request->imagen_e[$i];
               
                $orden      = $request->orden_imagen[$i];
            }
            else{
                $ruta       = $request->file('imagenes.'.$i)->store('imagenes/producto');
                $orden      = $request->orden_imagen[$i];
            }
            $galeria[$i] = [
                'orden'  => $orden, 
                'imagen' => $ruta
            ];
        }
    if($request->hasFile('archivo'))
        foreach (LaravelLocalization::getSupportedLocales() as $key => $lang){
            $ruta_archivo[$key]   = $request->file('archivo.'.$key)->store('archivos/producto');
        }
    else
        $ruta_archivo = json_decode($producto->archivo, true);

        if ($request->hasFile('plano'))
            $path = $request->file('plano')->store('imagenes/producto/plano');
        else
            $path = $producto->plano;

        $producto->nombre           = json_encode($request->nombre);
        $producto->descripcion      = json_encode($request->descripcion);
        $producto->archivo          = json_encode($ruta_archivo);
        $producto->caracteristicas  = json_encode($request->caracteristicas);
        $producto->video            = json_encode($request->video);
        $producto->plano            = $path;
        if(isset($request->destacado))
            $producto->destacado    = $request->destacado;
        else
            $producto->destacado    = 0;
        $producto->id_superior      = $request->familia;
        $producto->orden            = $request->orden;
        $producto->save();

        //Declaramos un array y le insertamos los id de las bases relacionadas
        $relacionados = [];
        if(!is_null($request->relacionados)){
            for ($i=0; $i < count($request->relacionados); $i++) {
                $relacionados[$i] = [
                    'id_relacionado'  => $request->relacionados[$i],
                ];
            }
        }
        //Eliminamos los registros anteriores y volvemos a cargar
        
        $producto->imagenes()->delete();
        $producto->imagenes()->createMany($galeria);
        //Eliminamos los registros anteriores y volvemos a cargar
        if(!is_null($request->relacionados)){
            $producto->relacionados()->detach();
            $producto->relacionados()->attach($relacionados);
        }
        $seccion = $request->seccion;
        return redirect()->route('productos')->with('alert', "Registro actualizado exitósamente" );
    }

    public function eliminar($id){
        $producto = Producto::find($id);
        $seccion  = $producto->seccion;
        foreach ($producto->imagenes as $key => $value) {
            Storage::delete($value->imagen);
        }
        $producto->imagenes()->delete();
        $producto->relacionados()->detach();
        $producto->delete();
        return redirect()->route('productos')->with('alert', "Registro eliminado exitósamente" );
    }
    public function Busqueda()
    {
        session(['familia' => request()->familia]);
        if(request()->familia>0)
            $productos = Producto::where('id_superior', request()->familia)->orderBy('orden', 'ASC')->get();
        else
            $productos = Producto::orderBy('id_superior', 'ASC')->orderBy('orden', 'ASC')->get();
            foreach ($productos as $key => $producto) {
                $nombres = json_decode($producto->nombre, true);
                $producto->nombre = $nombres[LaravelLocalization::getCurrentLocale()];
                $producto->nombre_familia = $producto->familia->nombre_format;
            }
        return response()->json($productos->values());;
    }
}
