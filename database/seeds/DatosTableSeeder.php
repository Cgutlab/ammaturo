<?php

use Illuminate\Database\Seeder;

class DatosTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('datos')->delete();
        
        \DB::table('datos')->insert(array (
            0 => 
            array (
                'id' => 1,
                'direccion' => '{"calle":"Parque Industrial Tecnol\\u00f3gico  Quilmes Camino Gral. Manuel Belgrano","altura":"10,500","localidad":"Bernal Oeste","provincia":"Buenos Aires","pais":null}',
                'telefono' => '["011 4270-2828"]',
                'email' => '[{"seccion":"principal","email":"info@ammaturo.com.ar"}]',
                'terminos' => '{"es":"<p>asdasdasdasdas<\\/p>","en":"<p>dasdasdasdasda<\\/p>"}',
                'mapa' => '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3278.9227360687523!2d-58.33727328476699!3d-34.732341880426326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95a32d77d460ecb7%3A0xb9b456c8bf477eb1!2sAmmaturo+S.A.!5e0!3m2!1ses-419!2sar!4v1561375264895!5m2!1ses-419!2sar" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>',
                'created_at' => NULL,
                'updated_at' => '2019-06-24 11:21:48',
            ),
        ));
        
        
    }
}