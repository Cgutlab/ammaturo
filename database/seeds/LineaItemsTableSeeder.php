<?php

use Illuminate\Database\Seeder;

class LineaItemsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('linea_items')->delete();
        
        \DB::table('linea_items')->insert(array (
            0 => 
            array (
                'id' => 1,
                'item' => '1945',
                'texto' => 'null',
                'orden' => 'aa',
                'created_at' => '2019-06-24 14:18:28',
                'updated_at' => '2019-06-24 14:19:38',
            ),
            1 => 
            array (
                'id' => 2,
                'item' => '1950',
                'texto' => '{"es":"<p>pr&oacute;ximamente m&aacute;s contenido<\\/p>","en":"<p>soon more content<\\/p>"}',
                'orden' => 'ab',
                'created_at' => '2019-06-24 14:20:37',
                'updated_at' => '2019-06-24 14:20:37',
            ),
            2 => 
            array (
                'id' => 3,
                'item' => '1980',
                'texto' => '{"es":"<p>A mediados de los a&ntilde;os &lsquo;80, se conforma la actual sociedad, tomando su presente denominaci&oacute;n Ammaturo S.A., incorpor&aacute;ndose la oficina de ingenier&iacute;a y dise&ntilde;o, mud&aacute;ndose a la nueva planta industrial de Sarand&iacute;, en la provincia de Bs. As.<\\/p>","en":"<p>In the mid-80s, the current company is formed, taking its present name Ammaturo S.A., incorporating the engineering and design office, moving to the new industrial plant in Sarand&iacute;, in the province of Buenos Aires.<\\/p>"}',
                'orden' => 'ac',
                'created_at' => '2019-06-24 14:21:01',
                'updated_at' => '2019-06-24 14:22:27',
            ),
            3 => 
            array (
                'id' => 4,
                'item' => '1990',
                'texto' => '{"es":"<p>pr&oacute;ximamente m&aacute;s contenido<\\/p>","en":"<p>soon more content<\\/p>"}',
                'orden' => 'ad',
                'created_at' => '2019-06-24 14:21:23',
                'updated_at' => '2019-06-24 14:21:23',
            ),
            4 => 
            array (
                'id' => 5,
                'item' => '2001',
                'texto' => '{"es":"<p>pr&oacute;ximamente m&aacute;s contenido<\\/p>","en":"<p>soon more content<\\/p>"}',
                'orden' => 'ae',
                'created_at' => '2019-06-24 14:21:44',
                'updated_at' => '2019-06-24 14:21:44',
            ),
            5 => 
            array (
                'id' => 6,
                'item' => '2015',
                'texto' => '{"es":"<p>pr&oacute;ximamente m&aacute;s contenido<\\/p>","en":"<p>soon more content<\\/p>"}',
                'orden' => 'af',
                'created_at' => '2019-06-24 14:22:03',
                'updated_at' => '2019-06-24 14:22:03',
            ),
        ));
        
        
    }
}