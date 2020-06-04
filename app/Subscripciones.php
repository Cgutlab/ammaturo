<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subscripciones extends Model
{
   protected $table = 'subcripciones';
   protected $fillable = [
       'id', 'email'
   ];
}
