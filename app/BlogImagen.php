<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BlogImagen extends Model
{
    protected $table = 'blog_imagenes';
    protected $fillable = [
        'id', 'imagen', 'id_blog', 'orden'
    ];
}
