<?php

use Illuminate\Database\Seeder;

class IconosTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('iconos')->delete();
        
        \DB::table('iconos')->insert(array (
            0 => 
            array (
                'id' => 1,
                'imagen' => 'imagenes/icono/hC2T2p0vQsM4dDZJBZjOxZmGxYVsZcR0T6X2oN3W.png',
                'titulo' => '{"es":"Dise\\u00f1o y desarrollo integral","en":"Integral design and development"}',
                'texto' => '{"es":"<p>En Ammaturo S.A. dise&ntilde;amos y construimos integralmente una extensa L&iacute;nea de Equipos y M&aacute;quinas Industriales en nuestros Talleres, visite nuestro cat&aacute;logo para m&aacute;s informaci&oacute;n<\\/p>","en":"<p>In Ammaturo S.A. We design and build an extensive Line of Industrial Equipment and Machines in our workshops, visit our catalog for more information<\\/p>"}',
                'seccion' => 'home',
                'orden' => 'aa',
                'created_at' => '2019-06-24 12:48:57',
                'updated_at' => '2019-06-24 12:54:24',
            ),
            1 => 
            array (
                'id' => 2,
                'imagen' => 'imagenes/icono/2Sc4JL3oEyW0Ni5j2MIH9TylbknzrKIsmWFFird9.png',
                'titulo' => '{"es":"Soluciones Llave en mano","en":"Turnkey Solutions"}',
                'texto' => '{"es":"<p>Nuestro equipo de ingenieros y t&eacute;cnicos est&aacute;n capacitados para comprender las necesidades de nuestros clientes, y as&iacute; poder ofrecer las soluci&oacute;n t&eacute;cnica y econ&oacute;micamente m&aacute;s beneficiosa<\\/p>","en":"<p>Our team of engineers and technicians are trained to understand the needs of our customers, and thus be able to offer the most technically and economically beneficial solution<\\/p>"}',
                'seccion' => 'home',
                'orden' => 'ab',
                'created_at' => '2019-06-24 12:55:30',
                'updated_at' => '2019-06-24 12:55:30',
            ),
            2 => 
            array (
                'id' => 3,
                'imagen' => 'imagenes/icono/BhPFbfNqrDIHPptQkcpe80GEVr2tletgkLVHPnqK.png',
                'titulo' => '{"es":"Trayectoria y proyecci\\u00f3n internacional","en":"International trajectory and projection"}',
                'texto' => '{"es":"<p>Una empresa Argentina de extensa trayectoria y con proyecci&oacute;n internacional, dedicada al dise&ntilde;o, fabricaci&oacute;n e instalaci&oacute;n de Equipos, M&aacute;quinas y Transportadores<\\/p>","en":"<p>An Argentine company with extensive experience and international projection, dedicated to the design, manufacture and installation of Equipment, Machines and Conveyors<\\/p>"}',
                'seccion' => 'home',
                'orden' => 'ac',
                'created_at' => '2019-06-24 12:56:08',
                'updated_at' => '2019-06-24 12:56:08',
            ),
        ));
        
        
    }
}