<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Subscripciones;

class SubscripcionController extends Controller
{
    public function index()
    {
        $emails = Subscripciones::orderBy('id', 'ASC')->get();
        return view('adm.subscripcion.index', compact('emails'));
    }
}
