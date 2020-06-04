<?php

use Illuminate\Database\Seeder;

class ProductoImagenesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('producto_imagenes')->delete();
        
        \DB::table('producto_imagenes')->insert(array (
            0 => 
            array (
                'id' => 16,
                'imagen' => 'imagenes/producto/SoGKdZXJaeBgyJlGf6ruEXeKWGKc0jbPWIRsJyTM.jpeg',
                'orden' => 'aa',
                'id_producto' => 2,
                'created_at' => '2019-06-24 19:35:11',
                'updated_at' => '2019-06-24 19:35:11',
            ),
            1 => 
            array (
                'id' => 17,
                'imagen' => 'imagenes/producto/5j1KWmrBayzDnkXgGoBa7cwA76Ep1q9LVD7UaIvb.jpeg',
                'orden' => 'aa',
                'id_producto' => 1,
                'created_at' => '2019-06-24 19:36:38',
                'updated_at' => '2019-06-24 19:36:38',
            ),
            2 => 
            array (
                'id' => 18,
                'imagen' => 'imagenes/producto/t7m5IrZhwFCn07j0DYeSYfY8C8TLqhojeBENknt5.jpeg',
                'orden' => 'aa',
                'id_producto' => 3,
                'created_at' => '2019-06-24 19:40:18',
                'updated_at' => '2019-06-24 19:40:18',
            ),
            3 => 
            array (
                'id' => 19,
                'imagen' => 'imagenes/producto/Xp2Ai7ss1hOMPE2wtjDhyukYoAP1aIJSb9XA96lJ.jpeg',
                'orden' => 'aa',
                'id_producto' => 4,
                'created_at' => '2019-06-24 19:42:47',
                'updated_at' => '2019-06-24 19:42:47',
            ),
            4 => 
            array (
                'id' => 20,
                'imagen' => 'imagenes/producto/OqMjQ0yZI7x2HXPox8M4mwlgQvIU5rYkUNgN4kOk.jpeg',
                'orden' => 'aa',
                'id_producto' => 5,
                'created_at' => '2019-06-24 19:45:01',
                'updated_at' => '2019-06-24 19:45:01',
            ),
            5 => 
            array (
                'id' => 21,
                'imagen' => 'imagenes/producto/hY8cYmnVioo9qtemKPf8WjMHqyI61WKYwO2vFkEa.jpeg',
                'orden' => 'aa',
                'id_producto' => 6,
                'created_at' => '2019-06-24 19:46:14',
                'updated_at' => '2019-06-24 19:46:14',
            ),
            6 => 
            array (
                'id' => 22,
                'imagen' => 'imagenes/producto/KOUb1sKFukrznBTkuazRfoCKFhW7xQ2LiaB0I9Tw.jpeg',
                'orden' => NULL,
                'id_producto' => 7,
                'created_at' => '2019-06-24 19:48:24',
                'updated_at' => '2019-06-24 19:48:24',
            ),
            7 => 
            array (
                'id' => 23,
                'imagen' => 'imagenes/producto/lWE8GvYvDP5NEJff0ALO32JeXyVwxHcGzOwfmqjJ.jpeg',
                'orden' => 'aa',
                'id_producto' => 8,
                'created_at' => '2019-06-24 19:49:22',
                'updated_at' => '2019-06-24 19:49:22',
            ),
            8 => 
            array (
                'id' => 24,
                'imagen' => 'imagenes/producto/bv6pRB7iqmNJOsvbxJGZZOpZkXRGMj0OT9bXYBj0.jpeg',
                'orden' => 'aa',
                'id_producto' => 9,
                'created_at' => '2019-06-24 19:50:32',
                'updated_at' => '2019-06-24 19:50:32',
            ),
        ));
        
        
    }
}