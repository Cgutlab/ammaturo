<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

class Familia extends Model
{
    protected $table = 'familias';
    protected $fillable = [
        'id', 'nombre', 'imagen', 'orden',  'active'
    ];
    public function getNombreShowFormatAttribute()
    {
        $value  = '';
        $this->nombre = json_decode($this->nombre, true);
        $this->nombre = $this->nombre[LaravelLocalization::getCurrentLocale()];
        return $this->nombre;
    }
    public function getNombreSelectFormatAttribute()
    {
        $value  = '';
        $this->nombre = json_decode($this->nombre, true);
        $value = $this->nombre[LaravelLocalization::getCurrentLocale()];
        return $value;
    }
    public function getNombreFormatAttribute()
    {
        $value  = '';
        $this->nombre = json_decode($this->nombre, true);
        $value = $this->nombre[LaravelLocalization::getCurrentLocale()];
        return $value;
    }
}
