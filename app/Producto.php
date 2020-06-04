<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
class Producto extends Model
{
    protected $table = 'productos';
    protected $fillable = [
        'id', 'nombre', 'descripcion', 'archivo', 'caracteristicas', 'video', 'plano', 'destacado', 'id_superior', 'orden'
    ];

    public function getNombreSelectFormatAttribute()
    {
        $value  = '';
        $this->nombre = json_decode($this->nombre, true);
        $value = $this->nombre[LaravelLocalization::getCurrentLocale()];
        return $value;
    }
    public function getNombreFormatAttribute()
    {
        $value  = '';
        $this->nombre = json_decode($this->nombre, true);
        $value = $this->nombre[LaravelLocalization::getCurrentLocale()];
        return $value;
    }
    public function relacionados() {
        return $this->belongsToMany('App\Producto', 'producto_relacionados', 'id_producto', 'id_relacionado');
    }
/*  Ver que hacer con esto o eliminarlo
    public function listRelacionados() {
        return $this->hasMany('App\Producto', 'producto_relacionados', 'id_producto');
    }
*/
    public function familia(){
        return $this->belongsTo('App\Familia', 'id_superior');
    }

    public function imagenes() {
        return $this->hasMany('App\ProductoImagen', 'id_producto')->orderBy('orden', 'ASC');
    }
}
