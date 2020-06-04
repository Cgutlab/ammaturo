<?php

use Illuminate\Database\Seeder;

class RedesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('redes')->delete();
        
        \DB::table('redes')->insert(array (
            0 => 
            array (
                'id' => 1,
                'icono' => 'fab fa-facebook-square',
                'nombre' => 'Facebook',
                'url' => 'https://es-la.facebook.com/AmmaturoS.A/',
                'created_at' => '2019-06-21 19:45:18',
                'updated_at' => '2019-06-24 11:04:23',
            ),
            1 => 
            array (
                'id' => 2,
                'icono' => 'fab fa-instagram',
                'nombre' => 'Instagram',
                'url' => 'https://www.instagram.com/ammaturo.s.a/?hl=es-la',
                'created_at' => '2019-06-21 20:03:01',
                'updated_at' => '2019-06-24 11:15:34',
            ),
        ));
        
        
    }
}