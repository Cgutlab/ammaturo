<?php

use Illuminate\Database\Seeder;

class ProductoRelacionadosTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('producto_relacionados')->delete();
        
        \DB::table('producto_relacionados')->insert(array (
            0 => 
            array (
                'id' => 1,
                'id_producto' => 2,
                'id_relacionado' => 1,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'id_producto' => 3,
                'id_relacionado' => 2,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'id_producto' => 3,
                'id_relacionado' => 1,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'id_producto' => 4,
                'id_relacionado' => 2,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            4 => 
            array (
                'id' => 5,
                'id_producto' => 4,
                'id_relacionado' => 3,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            5 => 
            array (
                'id' => 6,
                'id_producto' => 4,
                'id_relacionado' => 1,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            6 => 
            array (
                'id' => 7,
                'id_producto' => 5,
                'id_relacionado' => 2,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            7 => 
            array (
                'id' => 8,
                'id_producto' => 5,
                'id_relacionado' => 3,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            8 => 
            array (
                'id' => 9,
                'id_producto' => 5,
                'id_relacionado' => 4,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            9 => 
            array (
                'id' => 10,
                'id_producto' => 6,
                'id_relacionado' => 3,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            10 => 
            array (
                'id' => 11,
                'id_producto' => 6,
                'id_relacionado' => 1,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            11 => 
            array (
                'id' => 12,
                'id_producto' => 6,
                'id_relacionado' => 5,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            12 => 
            array (
                'id' => 13,
                'id_producto' => 7,
                'id_relacionado' => 1,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            13 => 
            array (
                'id' => 14,
                'id_producto' => 7,
                'id_relacionado' => 5,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            14 => 
            array (
                'id' => 15,
                'id_producto' => 7,
                'id_relacionado' => 6,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            15 => 
            array (
                'id' => 16,
                'id_producto' => 8,
                'id_relacionado' => 2,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            16 => 
            array (
                'id' => 17,
                'id_producto' => 9,
                'id_relacionado' => 6,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            17 => 
            array (
                'id' => 18,
                'id_producto' => 9,
                'id_relacionado' => 7,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            18 => 
            array (
                'id' => 19,
                'id_producto' => 9,
                'id_relacionado' => 8,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
        ));
        
        
    }
}