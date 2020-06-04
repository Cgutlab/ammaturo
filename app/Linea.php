<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Linea extends Model
{
    protected $table = 'linea_items';
    protected $fillable = [
        'id', 'item', 'texto', 'orden'
    ];
}
