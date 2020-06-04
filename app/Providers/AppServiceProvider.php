<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use App\Logo;
use App\Dato;
use App\Red;
use App\Metadato;
use App\Familia;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        Schema::defaultStringLength(191);

        $logo_footer      = Logo::where('seccion', "footer")->first();
        $logo_header      = Logo::where('seccion', "header")->first();
        View::share('logo_footer', $logo_footer);
        View::share('logo_header', $logo_header);

        //metadatos
        $metadato     = Metadato::where('seccion', 'home')->first();
        View::share('metadato', $metadato);

        //redes
        $redes = Red::get();
        View::share('redes', $redes);

        //Datos de la Empresa
        $datos     = Dato::first();
        $direccion = json_decode(optional($datos)->direccion, true);
        $telefonos = json_decode(optional($datos)->telefono,true);
        //dd($telefonos);
        $emails    = json_decode(optional($datos)->email,true);
        $email     = $emails[0]['email'];
        unset($emails[0]);
        $terminos  = json_decode(optional($datos)->terminos, true);
        View::share('terminos', $terminos);
        View::share('direccion', $direccion);
        View::share('telefonos', $telefonos);
        View::share('emails', $emails);
        View::share('email', $email);

        //Menu
        $familias = Familia::orderBy('orden','ASC')->get();
        foreach ($familias as $familia) {
            $familia->nombre = json_decode($familia->nombre, true);
        }
        View::share('familias', $familias);
    }
}
