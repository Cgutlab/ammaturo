<?php

use Illuminate\Database\Seeder;

class EnlacesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('enlaces')->delete();
        
        \DB::table('enlaces')->insert(array (
            0 => 
            array (
                'id' => 1,
                'imagen' => 'imagenes/enlace/re5mhnRVj7YAyOIs2mTbzjUKQSSDwrWZnXx0Dtla.jpeg',
                'logo' => 'imagenes/enlace/BvqG9RkxJxPgzkWZdlbLs4AvIH3XA0hNGp76VhkN.jpeg',
                'titulo' => '{"es":"Divisi\\u00f3n ROLMEC: Servicio Integral de Post Venta","en":"ROLMEC Division: Integral Post Sale Service"}',
                'descripcion' => '{"es":"<p>Ofrecemos un servicio integral de Post Venta, contando con una Asistencia de Emergencia las<br \\/>\\r\\n24 hs del d&iacute;a los 365 d&iacute;as del a&ntilde;o, facilitando la provisi&oacute;n de todos los componentes, contando<br \\/>\\r\\ncon los mejores precios de mercado y personal t&eacute;cnico altamente capacitado.<\\/p>","en":"<p>We offer a comprehensive Post Sale service, with an Emergency Assistance<br \\/>\\r\\n24 hours a day, 365 days a year, facilitating the provision of all the components, counting<br \\/>\\r\\nWith the best market prices and highly trained technical staff.<\\/p>"}',
                'url' => 'www.test.com',
                'created_at' => NULL,
                'updated_at' => '2019-06-24 12:22:04',
            ),
        ));
        
        
    }
}