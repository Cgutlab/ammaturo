<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{

    protected $table = 'blogs';
    protected $fillable = [
        'id','titulo', 'descripcion', 'destacado', 'orden'
    ];
    public function categoria(){
        return $this->belongsTo('App\Categoria', 'categoria_id');
    }
    public function imagenes() {
        return $this->hasMany('App\BlogImagen', 'id_blog')->orderBy('orden', 'ASC');
    }
}
