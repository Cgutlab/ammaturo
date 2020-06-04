<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categoria;
use App\Blog;
use App\Portada;
use App\Metadato;
class NovedadesController extends Controller
{
    public function index($id=null){
        $portada       = Portada::where('seccion', 'blog')->first();
        $metadato      = Metadato::where('seccion', 'novedades')->first();
        $categorias    = Categoria::orderBy('orden', 'ASC')->get();
        foreach ($categorias as $key => $f) {
            $f->nombre = json_decode($f->nombre, true);
        }
        if(!is_null($id))
            $blogs  = Blog::where('categoria_id', $id)->orderBy('id','ASC')->get();
        else
            $blogs  = Blog::orderBy('orden', 'ASC')->get();
        
        foreach ($blogs as $key => $blog) {
            $blog->titulo = json_decode($blog->titulo, true);
            //dd($blog->imagenes()->first()['imagen']);
        }
        $active = "novedades";
        return view('public.listadoBlog', compact('categorias', 'metadato','blogs','portada','active'));
    }
    public function blog($id){
        $portada       = Portada::where('seccion', 'blog')->first();
        $metadato      = Metadato::where('seccion', 'novedades')->first();
        $categorias    = Categoria::orderBy('orden', 'ASC')->get();
        $active = "novedades";
        foreach ($categorias as $key => $f) {
            $f->nombre = json_decode($f->nombre, true);
        }

        $post               = Blog  ::find($id);
        $post->titulo       = json_decode($post->titulo,true);
        $post->descripcion  = json_decode($post->descripcion,true);
        return view('public.blog', compact( 'categorias', 'metadato','post', 'portada','active'));
    }
    
    public function filtroBlog(Request $request){

        $blogs  = Blog::where('titulo', 'like', '%' . $request->datos . '%')->orWhere('descripcion', 'like', '%' . $request->datos . '%')->get();
        foreach ($blogs as $key => $value) {
            $value->imagen = json_decode($value->imagen, true);
        }
        //dd($blogs);
        $categorias = Categoria::orderBy('orden', 'ASC')->get();
        $metadato   = Metadato::where('seccion', 'blogs')->first();
        return view('public.listadoBlog', compact('blogs', 'categorias','metadato'));
    }
}
