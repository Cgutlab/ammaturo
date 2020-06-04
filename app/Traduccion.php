<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;
class Traduccion extends Model
{
    use HasTranslations;
    public $translatable = ['traducciones'];

    protected $table = 'traducciones';
    protected $fillable = [
        'id', 'key', 'traducciones'
    ];
}
