<?php

use Illuminate\Database\Seeder;

class FamiliasTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('familias')->delete();
        
        \DB::table('familias')->insert(array (
            0 => 
            array (
                'id' => 1,
                'imagen' => NULL,
                'nombre' => '{"es":"Transportadores de Bulto","en":"Bulk Conveyors"}',
                'id_superior' => NULL,
                'active' => 1,
                'orden' => 'aa',
                'created_at' => '2019-06-24 15:01:04',
                'updated_at' => '2019-06-24 15:01:04',
            ),
            1 => 
            array (
                'id' => 2,
                'imagen' => NULL,
                'nombre' => '{"es":"Transportadores a granel","en":"Bulk conveyors"}',
                'id_superior' => NULL,
                'active' => 1,
                'orden' => 'ab',
                'created_at' => '2019-06-24 15:07:05',
                'updated_at' => '2019-06-24 15:07:05',
            ),
            2 => 
            array (
                'id' => 3,
                'imagen' => NULL,
                'nombre' => '{"es":"Transportadores Especiales","en":"Special conveyors"}',
                'id_superior' => NULL,
                'active' => 1,
                'orden' => 'ac',
                'created_at' => '2019-06-24 15:07:32',
                'updated_at' => '2019-06-24 15:07:32',
            ),
            3 => 
            array (
                'id' => 4,
                'imagen' => NULL,
                'nombre' => '{"es":"Automatizaci\\u00f3n y rob\\u00f3tica","en":"Automation and robotics"}',
                'id_superior' => NULL,
                'active' => 1,
                'orden' => 'ad',
                'created_at' => '2019-06-24 15:07:57',
                'updated_at' => '2019-06-24 15:07:57',
            ),
            4 => 
            array (
                'id' => 5,
                'imagen' => NULL,
                'nombre' => '{"es":"Sistemas aplicados de almacenaje","en":"Applied storage systems"}',
                'id_superior' => NULL,
                'active' => 1,
                'orden' => 'ae',
                'created_at' => '2019-06-24 15:08:21',
                'updated_at' => '2019-06-24 15:08:21',
            ),
            5 => 
            array (
                'id' => 6,
                'imagen' => NULL,
                'nombre' => '{"es":"M\\u00e1quinas y Equipos","en":"Machines and Equipment"}',
                'id_superior' => NULL,
                'active' => 1,
                'orden' => 'af',
                'created_at' => '2019-06-24 15:08:45',
                'updated_at' => '2019-06-24 15:08:45',
            ),
        ));
        
        
    }
}