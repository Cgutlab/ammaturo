<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Empresa extends Model
{
    protected $table = 'empresa';
    protected $fillable = [
        'id', 'titulo', 'texto', 'video', 'antiguedad', 'trayectoria', 'clientes'
    ];
}
