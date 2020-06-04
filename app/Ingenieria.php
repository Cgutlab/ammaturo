<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ingenieria extends Model
{
    protected $table = 'ingenieria';
    protected $fillable = [
        'id','imagen',  'titulo', 'subtitulo', 'texto', 'orden'
    ];
}
