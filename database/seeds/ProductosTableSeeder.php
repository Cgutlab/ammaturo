<?php

use Illuminate\Database\Seeder;

class ProductosTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('productos')->delete();
        
        \DB::table('productos')->insert(array (
            0 => 
            array (
                'id' => 1,
                'nombre' => '{"es":"Transportadores a Cadena Plana","en":"Conveyors to Flat Chain"}',
                'descripcion' => '{"es":"<p>Cuando es necesario transportar bultos con superficie inferior plana, los transportadores a cadena son muy utilizados, ya que posibilitan transportar, elevar y acumular envases, cajas, tambores, pallets, latas, bandejas, etc., permitiendo diversas opciones y configuraciones, ya que varias de estos equipos permiten curvas y elevaciones.<\\/p>","en":"<p>When it is necessary to transport packages with flat bottom surface, chain conveyors are widely used, since they make it possible to transport, elevate and accumulate containers, boxes, drums, pallets, cans, trays, etc., allowing various options and configurations, since several of these equipment allow curves and elevations.<\\/p>"}',
                'archivo' => '"\\"\\\\\\"\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"null\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\"\\\\\\"\\""',
            'caracteristicas' => '{"es":"<p>Disponen de una <span style=\\"color:#31923f\\">estructura en chapa plegada donde se ubican las gu&iacute;as en metal o pl&aacute;stico de bajo coeficiente de fricci&oacute;n<\\/span> (UHMW), por donde se desliza la cadena articulada plana, existiendo diversos modelos seg&uacute;n necesidades de utilizaci&oacute;n, como por ejemplo: cadena tipo table top, cadena bi-planar, cadena de rodillos, cadenas plana con ruedas de acumulaci&oacute;n, cadena de aletas con grip. etc.<br \\/>\\r\\n<span style=\\"color:#31923f\\">Las posibilidades de estos equipos y sus configuraciones son m&uacute;ltiples<\\/span>, desde l&iacute;neas de embasamiento, con mesas de acumulaci&oacute;n y alineaci&oacute;n, hasta l&iacute;neas pesadas para transporte de pallets pesados, &aacute;nodos, etc.<br \\/>\\r\\nEstos equipos pueden fabricarse en distintas alternativas de material, con bastidores en acero al carbono, acero al carbono galvanizado, aluminio, acero inoxidable y cadenas de transporte en acero, acero inoxidable y polipropileno.<\\/p>","en":"<p>They have a <span style=\\"color:#31923f\\">folded sheet metal structure where the guides are placed in metal or plastic with low coefficient of friction<\\/span> (UHMW), where the flat articulated chain slides, there are different models according to needs of use, such as: chain type table top , bi-planar chain, roller chain, flat chains with accumulation wheels, fin chain with grip. etc.<br \\/>\\r\\n<span style=\\"color:#31923f\\">The possibilities of these equipment and their configurations are multiple<\\/span>, from on-boarding lines, with accumulation and alignment tables, to heavy lines for transporting heavy pallets, anodes, etc.<br \\/>\\r\\nThese equipment can be manufactured in different material alternatives, with frames in carbon steel, galvanized carbon steel, aluminum, stainless steel and transport chains in steel, stainless steel and polypropylene.<\\/p>"}',
                'video' => '{"es":"emeqwgwqeMs","en":"emeqwgwqeMs"}',
                'plano' => 'imagenes/producto/plano/slOtXlsUCtFNRVDGiJZNLez8gNPi08hqFTetUZoX.jpeg',
                'destacado' => 1,
                'id_superior' => 1,
                'orden' => 'ad',
                'created_at' => '2019-06-24 18:34:08',
                'updated_at' => '2019-06-24 19:36:38',
            ),
            1 => 
            array (
                'id' => 2,
                'nombre' => '{"es":"Transportadores a Cinta","en":"Tape conveyors"}',
                'descripcion' => '{"es":"<p>Mas contenido luego<\\/p>","en":"<p>More content then<\\/p>"}',
                'archivo' => '{"es":"archivos\\/producto\\/sClvieo31rMv9Q21aJ6DURRsFNhleX53rHp9AR0f.xlsx","en":"archivos\\/producto\\/yxIYBrbIsqQYaa8XaYNnHWoVhS171LDbrqYGPuKJ.bin"}',
                'caracteristicas' => '{"es":"<p>Mas contenido luego<\\/p>","en":"<p>More content then<\\/p>"}',
                'video' => '{"es":"emeqwgwqeMs","en":"emeqwgwqeMs"}',
                'plano' => 'imagenes/producto/plano/xxVGnk7nVJvfxRAXerq342CupehDfMJekf6ylRTp.jpeg',
                'destacado' => 1,
                'id_superior' => 1,
                'orden' => 'aa',
                'created_at' => '2019-06-24 19:35:11',
                'updated_at' => '2019-06-24 19:35:11',
            ),
            2 => 
            array (
                'id' => 3,
                'nombre' => '{"es":"Transportadores a Cadena Over Head","en":"Chain conveyors Over Head"}',
                'descripcion' => '{"es":"<p>M&aacute;s contenido luego<\\/p>","en":"<p>More content then<\\/p>"}',
                'archivo' => '{"es":"archivos\\/producto\\/3QUgoCQJvqEWc1vspxScyaQPFjzQ5XFSJuXt4V53.pdf","en":"archivos\\/producto\\/Ukqa6yaqsu13JcQd0fVdO5aYAFPJlHWaKmGMuaBb.pdf"}',
                'caracteristicas' => '{"es":"<p>M&aacute;s contenido luego<\\/p>","en":"<p>More content then<\\/p>"}',
                'video' => '{"es":"emeqwgwqeMs","en":"emeqwgwqeMs"}',
                'plano' => 'imagenes/producto/plano/TBbGxDpthzhK4iIcoeb79JXf39sP6Bg9bLXUshQK.jpeg',
                'destacado' => 0,
                'id_superior' => 1,
                'orden' => 'ab',
                'created_at' => '2019-06-24 19:40:18',
                'updated_at' => '2019-06-24 19:40:18',
            ),
            3 => 
            array (
                'id' => 4,
                'nombre' => '{"es":"Transportadores a Cadena Power & Free","en":"Chain conveyors Power & Free"}',
                'descripcion' => '{"es":"<p>M&aacute;s contenido luego<\\/p>","en":"<p>More content then<\\/p>"}',
                'archivo' => 'null',
                'caracteristicas' => '{"es":"<p>M&aacute;s contenido luego<\\/p>","en":"<p>More content then<\\/p>"}',
                'video' => '{"es":null,"en":null}',
                'plano' => NULL,
                'destacado' => 1,
                'id_superior' => 1,
                'orden' => 'ac',
                'created_at' => '2019-06-24 19:42:47',
                'updated_at' => '2019-06-24 19:42:47',
            ),
            4 => 
            array (
                'id' => 5,
                'nombre' => '{"es":"Transportadores a Rodillos Libres","en":"Free Roller Conveyors"}',
                'descripcion' => '{"es":"<p>a<\\/p>","en":"<p>as<\\/p>"}',
                'archivo' => 'null',
                'caracteristicas' => '{"es":"<p>a<\\/p>","en":"<p>as<\\/p>"}',
                'video' => '{"es":null,"en":null}',
                'plano' => 'imagenes/producto/plano/VwHMeAC1FMCyGiKs24i7BhmCFlJS3nbCKPPrTsme.jpeg',
                'destacado' => 1,
                'id_superior' => 1,
                'orden' => 'ae',
                'created_at' => '2019-06-24 19:45:01',
                'updated_at' => '2019-06-24 19:45:01',
            ),
            5 => 
            array (
                'id' => 6,
                'nombre' => '{"es":"Transportadores a Banda Modular","en":"Modular conveyors Band"}',
                'descripcion' => '{"es":"<p>a<\\/p>","en":"<p>as<\\/p>"}',
                'archivo' => 'null',
                'caracteristicas' => '{"es":"<p>a<\\/p>","en":"<p>sa<\\/p>"}',
                'video' => '{"es":null,"en":null}',
                'plano' => NULL,
                'destacado' => 0,
                'id_superior' => 1,
                'orden' => 'af',
                'created_at' => '2019-06-24 19:46:14',
                'updated_at' => '2019-06-24 19:46:14',
            ),
            6 => 
            array (
                'id' => 7,
                'nombre' => '{"es":"Transportadores a Rodillos Motorizados por Cadena","en":"Conveyors to Motorized Rollers by Chain"}',
                'descripcion' => '{"es":"<p>a<\\/p>","en":"<p>ads<\\/p>"}',
                'archivo' => 'null',
                'caracteristicas' => '{"es":"<p>ad<\\/p>","en":"<p>da<\\/p>"}',
                'video' => '{"es":null,"en":null}',
                'plano' => NULL,
                'destacado' => 0,
                'id_superior' => 1,
                'orden' => 'ag',
                'created_at' => '2019-06-24 19:48:23',
                'updated_at' => '2019-06-24 19:48:23',
            ),
            7 => 
            array (
                'id' => 8,
                'nombre' => '{"es":"Transportadores a Rodillos Motorizados Live Roller","en":"Live roller conveyors Roller Motor"}',
                'descripcion' => '{"es":"<p>a<\\/p>","en":"<p>ad<\\/p>"}',
                'archivo' => 'null',
                'caracteristicas' => '{"es":"<p>ds<\\/p>","en":"<p>sd<\\/p>"}',
                'video' => '{"es":null,"en":null}',
                'plano' => NULL,
                'destacado' => 0,
                'id_superior' => 1,
                'orden' => 'ah',
                'created_at' => '2019-06-24 19:49:22',
                'updated_at' => '2019-06-24 19:49:22',
            ),
            8 => 
            array (
                'id' => 9,
                'nombre' => '{"es":"Transportadores a Malla Met\\u00e1lica","en":"Conveyors Wire Mesh"}',
                'descripcion' => '{"es":"<p>a<\\/p>","en":"<p>as<\\/p>"}',
                'archivo' => 'null',
                'caracteristicas' => '{"es":"<p>s<\\/p>","en":"<p>sd<\\/p>"}',
                'video' => '{"es":null,"en":null}',
                'plano' => NULL,
                'destacado' => 0,
                'id_superior' => 1,
                'orden' => 'ai',
                'created_at' => '2019-06-24 19:50:31',
                'updated_at' => '2019-06-24 19:50:31',
            ),
        ));
        
        
    }
}