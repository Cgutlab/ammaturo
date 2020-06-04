<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Enlace extends Model
{
    protected $table = 'enlaces';
    protected $fillable = [
        'id', 'imagen', 'logo', 'titulo',  'descripcion', 'url'
    ];
}
