<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
class Categoria extends Model
{
    protected $table = 'categorias';
    protected $fillable = [
        'id', 'nombre', 'orden'
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
        foreach (LaravelLocalization::getSupportedLocales() as $key => $lang) {
            if(!empty($value)) $value .= " / ";
            $value .=  $lang['name'].': '.$this->nombre[$key];
        }
            return $value;
    }
    public function getNombreFormatAttribute()
    {
        $value  = '';
        $this->nombre = json_decode($this->nombre, true);
        foreach (LaravelLocalization::getSupportedLocales() as $key => $lang) {
            if(!empty($value)) $value .= " / ";
            $value .= $lang['name'].': '.$this->nombre[$key];
        }
            return $value;
    }
}
