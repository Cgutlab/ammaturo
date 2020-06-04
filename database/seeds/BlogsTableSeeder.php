<?php

use Illuminate\Database\Seeder;

class BlogsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('blogs')->delete();
        
        \DB::table('blogs')->insert(array (
            0 => 
            array (
                'id' => 1,
                'imagen' => NULL,
                'titulo' => '{"es":"Estaremos en EXPO LOGISTI-K 2018 en La Rural Predio Ferial - Buenos Aires - Argentina","en":"We will be at EXPO LOGISTI-K 2018 in La Rural Predio Ferial - Buenos Aires - Argentina"}',
                'descripcion' => '{"es":"<p>Es el encuentro bienal del profesional de la log&iacute;stica y la cadena de abastecimiento. Un evento pensado para dar soluciones al conjunto de acciones que realiza un empresario desde que inicia la compra de insumos y materia prima hasta la entrega del producto terminado al cliente, incluyendo el transporte, producci&oacute;n, embalaje, almacenamiento, movimiento, codificaci&oacute;n y distribuci&oacute;n de sus productos. Empresas productoras de bienes y proveedoras de servicios, todas soluciones para el profesional de la log&iacute;stica: movimiento y elevaci&oacute;n, automatizaci&oacute;n; embalaje; almacenajes y carga; log&iacute;stica IT, infraestructura y construcci&oacute;n; veh&iacute;culos comerciales; management y servicios.<\\/p>","en":"<p>It is the biennial meeting of the logistics professional and the supply chain. An event designed to provide solutions to the set of actions carried out by an entrepreneur from the beginning of the purchase of raw materials and supplies until the delivery of the finished product to the customer, including transportation, production, packaging, storage, movement, coding and distribution of their products. products.<br \\/>\\r\\nCompanies producing goods and service providers, all solutions for the logistics professional: movement and elevation, automation; packaging; storage and loading; IT logistics, infrastructure and construction; Commercial Vehicles; management and services.<\\/p>"}',
                'destacado' => NULL,
                'orden' => 'aa',
                'categoria_id' => 2,
                'created_at' => '2019-06-25 11:21:11',
                'updated_at' => '2019-06-25 11:23:17',
            ),
            1 => 
            array (
                'id' => 2,
                'imagen' => NULL,
                'titulo' => '{"es":"Sistema de Transporte Power & Free para nueva Planta de Radiaci\\u00f3n - Cliente IONICS","en":"Power & Free Transportation System for a new Radiation Plant - IONICS Client"}',
                'descripcion' => '{"es":"<p>das<\\/p>","en":"<p>gjghj<\\/p>"}',
                'destacado' => NULL,
                'orden' => 'ab',
                'categoria_id' => 3,
                'created_at' => '2019-06-25 11:24:47',
                'updated_at' => '2019-06-25 11:24:47',
            ),
            2 => 
            array (
                'id' => 3,
                'imagen' => NULL,
                'titulo' => '{"es":"Los esperamos en TECNOFIDTA: la mayor exposici\\u00f3n de Tecnolog\\u00eda en Alimentos","en":"We are waiting for you at TECNOFIDTA: the largest exhibition of Food Technology"}',
                'descripcion' => '{"es":null,"en":null}',
                'destacado' => NULL,
                'orden' => 'ac',
                'categoria_id' => 3,
                'created_at' => '2019-06-25 11:25:41',
                'updated_at' => '2019-06-25 11:25:41',
            ),
            3 => 
            array (
                'id' => 4,
                'imagen' => NULL,
                'titulo' => '{"es":"Sistema Autom\\u00e1tico de Transporte de Pallets - YPF Planta DOLE - Ensenada - Pcia. de Bs. As.","en":"Automatic Pallets Transport System - YPF DOLE Plant - Ensenada - Province of Bs. As."}',
                'descripcion' => '{"es":null,"en":null}',
                'destacado' => NULL,
                'orden' => 'ad',
                'categoria_id' => 1,
                'created_at' => '2019-06-25 11:26:21',
                'updated_at' => '2019-06-25 11:26:21',
            ),
        ));
        
        
    }
}