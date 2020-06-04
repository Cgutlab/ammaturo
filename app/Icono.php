<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Icono extends Model
{
    protected $table = 'iconos';
    protected $fillable = [
        'id', 'imagen', 'titulo', 'texto', 'seccion',  'orden'
    ];
}
