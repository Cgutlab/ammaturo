<?php

use Illuminate\Database\Seeder;

class LogosTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('logos')->delete();
        
        \DB::table('logos')->insert(array (
            0 => 
            array (
                'id' => 1,
                'imagen' => 'imagenes/logo/ZKQb8Q0E94YrJAfrThM9y58Sa2hIfakpevlh6bi0.jpeg',
                'seccion' => 'header',
                'created_at' => NULL,
                'updated_at' => '2019-06-21 19:17:48',
            ),
            1 => 
            array (
                'id' => 2,
                'imagen' => 'imagenes/logo/11urvajUVXQN2GUEkXkXq7Pf88IofsvRZTg3G8E0.png',
                'seccion' => 'footer',
                'created_at' => NULL,
                'updated_at' => '2019-06-21 19:19:17',
            ),
        ));
        
        
    }
}