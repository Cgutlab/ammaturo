<?php

use Illuminate\Database\Seeder;

class EmpresaTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('empresa')->delete();
        
        \DB::table('empresa')->insert(array (
            0 => 
            array (
                'id' => 1,
                'titulo' => '{"es":"M\\u00e1s de 70 a\\u00f1os de trayectoria","en":"More than 70 years of experience"}',
                'texto' => '{"es":"<p><strong>Ammaturo S.A.<\\/strong> es una empresa Argentina, con proyecci&oacute;n internacional, dedicada al dise&ntilde;o, fabricaci&oacute;n e instalaci&oacute;n de Bienes de Capital, m&aacute;s precisamente Equipos, M&aacute;quinas y Transportadores de Materiales para todo tipo de Industria.<br \\/>\\r\\nDe extensa trayectoria, <span style=\\"color:#31923f\\">comienza su actividad hace m&aacute;s de 70 a&ntilde;os<\\/span>, creciendo ininterrumpidamente, en lo T&eacute;cnico, Comercial, Financiero, Instalaciones, y en Recursos Humanos, pilares fundamentales de su continuo desarrollo industrial.<br \\/>\\r\\nDesarrollando, re inventando, construyendo, armando, y testeando nuevos Equipos, Sistemas y Maquinas Industriales de acuerdo a las necesidades de nuestros variados Clientes, en los m&aacute;s diversos Rubros, hemos ganado la debida experiencia para posibilitar en el presente ofrecer todo nuestro Potencial T&eacute;cnico Comercial.<br \\/>\\r\\n<span style=\\"color:#31923f\\">Integrando el dise&ntilde;o, la fabricaci&oacute;n integral, la instalaci&oacute;n y puesta en marcha y el servicio post-venta sin depender de terceros.<\\/span> Brindamos respuestas r&aacute;pidas y econ&oacute;micas a los requerimientos de nuestros Clientes.<\\/p>","en":"<p><strong>Ammaturo S.A.<\\/strong> is an Argentine company, with international projection, dedicated to the design, manufacture and installation of Capital Goods, more precisely Equipment, Machines and Material Transporters for all types of Industry.<br \\/>\\r\\nOf extensive trajectory, <span style=\\"color:#31923f\\">it begins its activity for more than 70 years<\\/span>, growing without interruption, in the Technical, Commercial, Financial, Installations, and in Human Resources, fundamental pillars of its continuous industrial development.<br \\/>\\r\\nDeveloping, re inventing, building, assembling, and testing new Equipment, Systems and Industrial Machines according to the needs of our various Clients, in the most diverse areas, we have gained the due experience to enable in the present to offer all our Commercial Technical Potential .<br \\/>\\r\\n<span style=\\"color:#31923f\\">Integrating design, integral manufacturing, installation and commissioning and after-sales service without relying on third parties.<\\/span> We provide fast and economic answers to the requirements of our Clients.<\\/p>"}',
                'video' => '{"es":"emeqwgwqeMs","en":"emeqwgwqeMs"}',
                'antiguedad' => '{"es":"<p><strong>25 a&ntilde;os&nbsp;<\\/strong><br \\/>\\r\\nen rob&oacute;tica<\\/p>","en":"<p><strong>25 years<\\/strong><br \\/>\\r\\nin robotics<\\/p>"}',
                'trayectoria' => '{"es":"<p><strong>70 a&ntilde;os&nbsp;<\\/strong><br \\/>\\r\\nde trayectoria<\\/p>","en":"<p><strong>70 years<\\/strong><br \\/>\\r\\nof trajectory<\\/p>"}',
                'clientes' => '{"es":"<p><strong>150 Clientes<\\/strong><br \\/>\\r\\nvisite nuestro cat&aacute;logo<\\/p>","en":"<p><strong>150 Customers<\\/strong><br \\/>\\r\\nvisit our catalog<\\/p>"}',
                'orden' => NULL,
                'created_at' => NULL,
                'updated_at' => '2019-06-24 13:50:41',
            ),
        ));
        
        
    }
}