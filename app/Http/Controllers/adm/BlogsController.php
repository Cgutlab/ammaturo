<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use App\Blog;
use App\BlogImagen;
use App\Categoria;

class BlogsController extends Controller
{
    public function index()
    {
        $posts = Blog::orderBy('categoria_id', 'ASC')->orderBy('orden', 'ASC')->get();
        foreach ($posts as $key => $post) {
            $nombres = json_decode($post->titulo, true);
            $mensaje = '';
 
            foreach (LaravelLocalization::getSupportedLocales() as $key => $lang){
                $mensaje .= '<p>'.$lang['name'].': '.$nombres[$key].'</p>';
                
             }
            $post->titulo = $mensaje;
        }
        return view('adm.post.index', compact('posts'));
    }
    public function showCreate()
    {
        $categorias = Categoria::orderBy('orden', 'ASC')->get();
        return view('adm.post.create', compact('categorias'));
    }
    public function store(Request $request, Blog $item)
    {
        
        $galeria = [];
        if($request->hasFile('imagenes'))
            for ($i=0; $i < count($request->imagenes); $i++) {
                $ruta        = $request->file('imagenes.'.$i)->store('imagenes/blog');
                $orden       = $request->orden_imagen[$i];
                $galeria[$i] = [
                    'imagen'  => $ruta, 
                    'orden' => $orden
                ];
            }

        $item->titulo           = json_encode($request->titulo);
        $item->descripcion      = json_encode($request->descripcion);
        $item->categoria_id     = $request->categoria;
        $item->orden            = $request->orden;
        $item->save();
        $item->imagenes()->createMany($galeria);

        return redirect()->route('posts')->with('alert', 'Registro Almacenado Exitosamente.');
}

    public function showEdit($id)
    {
        $post                   = Blog::find($id);
        $post->titulo           = json_decode($post->titulo,true);
        $post->descripcion      = json_decode($post->descripcion,true);
        $categorias             = Categoria::orderBy('orden', 'ASC')->get();
        $galeria                = $post->imagenes;
        return view('adm.post.edit', compact('post', 'galeria', 'categorias'));
    }

    public function update(Request $request, $id)
    {

        $post = Blog::find($id);
        //declaramos un array para almacenar la galeria
        //comprobamos que en el array de imagen_e exista un null
        //En caso de tener contenido lo guardamos junto a su orden
        //En caso de no tener le asignamos la nueva imagen y su orden
        $galeria = [];
        //dd($request->all());
        for ($i=0; $i < count($request->imagen_e); $i++) {
            
            if(!is_null($request->imagen_e[$i])){
                
                if ($request->hasFile('imagenes.'.$i))
                    $ruta   = $request->file('imagenes.'.$i)->store('imagenes/blog');
                else
                    $ruta   = $request->imagen_e[$i];
               
                $orden      = $request->orden_imagen[$i];
            }
            else{
                $ruta       = $request->file('imagenes.'.$i)->store('imagenes/blog');
                $orden      = $request->orden_imagen[$i];
            }
            $galeria[$i] = [
                'orden'  => $orden, 
                'imagen' => $ruta
            ];
        }

        $post->titulo        = json_encode($request->titulo);
        $post->descripcion   = json_encode($request->descripcion);
        $post->categoria_id  = $request->categoria;
        $post->orden         = $request->orden;
        $post->save();
        //Eliminamos los registros anteriores y volvemos a cargar
        
        $post->imagenes()->delete();
        $post->imagenes()->createMany($galeria);
        return redirect()->route('posts')->with('alert', "Registro actualizado exitósamente" );
    }

    public function eliminar($id){
        $post = Blog::find($id);
        foreach ($post->imagenes as $key => $value) {
            Storage::delete($value->imagen);
        }
        $post->imagenes()->delete();
        $post->delete();
        return redirect()->route('posts')->with('alert', "Registro eliminado exitósamente" );
    }
}
