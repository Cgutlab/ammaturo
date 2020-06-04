<?php

use Illuminate\Database\Seeder;

class CategoriasTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('categorias')->delete();
        
        \DB::table('categorias')->insert(array (
            0 => 
            array (
                'id' => 1,
                'nombre' => '{"es":"Actualidad","en":"News"}',
                'orden' => 'aa',
                'created_at' => '2019-06-24 20:11:48',
                'updated_at' => '2019-06-24 20:13:44',
            ),
            1 => 
            array (
                'id' => 2,
                'nombre' => '{"es":"Eventos","en":"Events"}',
                'orden' => 'ab',
                'created_at' => '2019-06-24 20:12:49',
                'updated_at' => '2019-06-24 20:12:49',
            ),
            2 => 
            array (
                'id' => 3,
                'nombre' => '{"es":"Productos","en":"products"}',
                'orden' => 'ac',
                'created_at' => '2019-06-24 20:13:06',
                'updated_at' => '2019-06-24 20:13:06',
            ),
        ));
        
        
    }
}