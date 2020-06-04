<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostVenta extends Model
{
    protected $table = 'postventas';
    protected $fillable = [
        'id', 'titulo', 'descripcion'
    ];
}
