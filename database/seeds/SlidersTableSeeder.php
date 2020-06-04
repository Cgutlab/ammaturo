<?php

use Illuminate\Database\Seeder;

class SlidersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('sliders')->delete();
        
        \DB::table('sliders')->insert(array (
            0 => 
            array (
                'id' => 1,
                'imagen' => 'imagenes/slider/CrPfKmUFw9vQYhMuVgRE3HfhtIcWoZWaRfOzbizf.jpeg',
                'contenido' => '{"es":"<p><strong>Soluciones integrales<\\/strong><br \\/>\\r\\nIntegrando dise&ntilde;o, fabricaci&oacute;n integral, instalaci&oacute;n y puesta en marcha&nbsp;<\\/p>","en":"<p><strong>Integral Solutions<\\/strong><br \\/>\\r\\nIntegrating design, integral manufacturing, installation and commissioning<\\/p>"}',
                'seccion' => 'empresa',
                'orden' => 'aa',
                'created_at' => '2019-06-24 13:03:53',
                'updated_at' => '2019-06-24 14:46:51',
            ),
            1 => 
            array (
                'id' => 2,
                'imagen' => 'imagenes/slider/5DaLeXGyFaAot71r4cWStqENFu7oV1JFKDOo5l6L.jpeg',
                'contenido' => '{"es":"<p><strong>Especialistas en Movimiento de<br \\/>\\r\\nM&aacute;quinas y Equipos Industriales<\\/strong><\\/p>","en":"<p><strong>Specialists in Movement of<br \\/>\\r\\nIndustrial Machinery and Equipment<\\/strong><\\/p>"}',
                'seccion' => 'home',
                'orden' => 'aa',
                'created_at' => '2019-06-24 13:22:08',
                'updated_at' => '2019-06-24 13:22:08',
            ),
        ));
        
        
    }
}