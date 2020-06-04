<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Slider extends Model
{
    protected $table = 'sliders';
    protected $fillable = [
        'id', 'imagen', 'contenido', 'seccion', 'orden'
    ];
}
