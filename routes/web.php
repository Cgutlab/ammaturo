<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => LaravelLocalization::setLocale()], function(){
    Route::get('/', 'HomeController@index')->name('index');
    Route::post('/subscripcion', 'HomeController@storeSubscripcion')->name('enviar_email');
    Route::get('/empresa', 'EmpresaController@index')->name('empresa_menu');
    Route::get('/productos/familia/{id}', 'ProductosController@productos')->name('productos_menu');
    Route::get('/productos/producto/{id}', 'ProductosController@producto')->name('producto');
    Route::get('/novedades', 'NovedadesController@index')->name('novedades');
    Route::get('novedades/categoria/{id}', 'NovedadesController@index')->name('blog_filtrado');
    Route::get('/novedades/{id}', 'NovedadesController@blog')->name('blog');
    Route::get('/filtro-blog', ['uses' => 'NovedadesController@filtroBlog', 'as' => 'filtrado_blog']);
    Route::get('/ingenieria', 'IngenieriaController@index')->name('ingenieria');
    Route::get('/presupuesto', 'PresupuestoController@index')->name('presupuesto');
        Route::get('/presupuesto/{id}', 'PresupuestoController@Productos')->name('producto_presupuesto');
        Route::get('/presupuesto/eliminar/{id}', 'PresupuestoController@removerProductos')->name('remover_producto');
        Route::post('/presupuesto/cantidad', 'PresupuestoController@updateCantidad')->name('updateCantidad');
        Route::post('/presupuesto/send', 'PresupuestoController@enviarMail')->name('presupuesto_send');
    Route::get('/postventas', 'PostVentaController@index')->name('postventas');
    Route::post('/postventas/send', 'PostVentaController@enviarMail')->name('postventas_send');
    Route::get('/contacto', 'ContactoController@index')->name('contacto');
    Route::post('/contacto/send', 'ContactoController@enviarMail')->name('contacto_send');
    Route::match(['get', 'post'],'/buscador', 'BuscadorController@index')->name('buscador');
    Route::match(['get', 'post'],'/buscador/busqueda', 'BuscadorController@Busqueda')->name('busqueda');
});
/*

------------------------------------ADMIN----------------------------------------------

 */
Auth::routes();
Route::group(['middleware' => 'auth', 'prefix' => 'adm'], function() {
    Route::get('/', 'adm\admController@index')->name('adm_index');

    Route::get('/suscriptos', 'adm\SubscripcionController@index')->name('suscripcion');

    Route::get('/icono-{seccion}', 'adm\IconosController@index')->name('iconos');
    Route::get('/icono/nuevo-{seccion}', 'adm\IconosController@showCreate')->name('icono_create');

    Route::get('/linea_tiempo', 'adm\LineaController@index')->name('linea');
    Route::get('/linea_tiempo/nuevo', 'adm\LineaController@showCreate')->name('linea_create');

    Route::get('/familia', 'adm\FamiliaController@index')->name('familia');
    Route::get('/familia/nuevo', 'adm\FamiliaController@showCreate')->name('familia_create');

    Route::get('/productos', 'adm\ProductoController@index')->name('productos');
    Route::get('/productos/nuevo', 'adm\ProductoController@showCreate')->name('producto_create');

    Route::get('/categoria', 'adm\CategoriasController@index')->name('categorias');
    Route::get('/categoria/nuevo', 'adm\CategoriasController@showCreate')->name('categoria_create');

    Route::get('/post', 'adm\BlogsController@index')->name('posts');
    Route::get('/post/nuevo', 'adm\BlogsController@showCreate')->name('post_create');

    Route::get('/ingenieria', 'adm\IngenieriaController@index')->name('ingenierias');
    Route::get('/ingenieria/nuevo', 'adm\IngenieriaController@showCreate')->name('ingenieria_create');

    Route::get('/traducciones', 'adm\TraduccionController@index')->name('traducciones');
    Route::get('/traducciones/nuevo', 'adm\TraduccionController@showCreate')->name('traduccion_create');

    Route::get('/logo', 'adm\LogoController@index')->name('logo');

    Route::get('/metadatos', 'adm\MetadatoController@index')->name('metadatos');

    Route::get('/redes', 'adm\RedesController@index')->name('redes');
    Route::get('/redes/nuevo', 'adm\RedesController@showCreate')->name('redes_create');

    Route::get('/slider-{seccion}', 'adm\SliderController@index')->name('slider');
    Route::get('/slider/nuevo-{seccion}', 'adm\SliderController@showCreate')->name('slider_create');
    
    Route::get('/usuario', 'adm\UserController@index')->name('usuario');
    Route::get('/usuario/nuevo', 'adm\UserController@showCreate')->name('usuario_create');

    

    //Ruta de los eventos de Empresa
    Route::group(['prefix' => 'empresa'], function() {
        Route::get('/editar', ['uses' => 'adm\EmpresaController@showEdit', 'as' => 'empresa']);
        Route::put('/update', ['uses' => 'adm\EmpresaController@update', 'as' => 'update']);
    });

    //Ruta de los eventos de enlace
    Route::group(['prefix' => 'enlace'], function() {
        Route::get('/editar', ['uses' => 'adm\EnlaceController@showEdit', 'as' => 'enlace']);
        Route::put('/update', ['uses' => 'adm\EnlaceController@update', 'as' => 'update']);
    });

    //Ruta de los eventos de iconos
    Route::group(['prefix' => 'iconos'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\IconosController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\IconosController@showEdit', 'as' => 'icono_show']);
        Route::put('/{id}', ['uses' => 'adm\IconosController@update', 'as' => 'update']);
        Route::get('/eliminar/{id}', ['uses' => 'adm\IconosController@eliminar', 'as' => 'eliminar']);
    });

    //Ruta de los eventos de linea
    Route::group(['prefix' => 'linea_tiempo'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\LineaController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\LineaController@showEdit', 'as' => 'linea_show']);
        Route::put('/{id}', ['uses' => 'adm\LineaController@update', 'as' => 'update']);
        Route::get('/eliminar/{id}', ['uses' => 'adm\LineaController@eliminar', 'as' => 'eliminar']);
    });

    //Ruta de los eventos de familia
    Route::group(['prefix' => 'familia'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\FamiliaController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\FamiliaController@showEdit', 'as' => 'familia_show']);
        Route::put('/{id}', ['uses' => 'adm\FamiliaController@update', 'as' => 'update']);
        Route::get('/eliminar/{id}', ['uses' => 'adm\FamiliaController@eliminar', 'as' => 'eliminar']);
    });

    //Ruta de los eventos de producto
    Route::group(['prefix' => 'producto'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\ProductoController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\ProductoController@showEdit', 'as' => 'producto_show']);
        Route::put('/{id}', ['uses' => 'adm\ProductoController@update', 'as' => 'update']);
        Route::get('/eliminar/{id}', ['uses' => 'adm\ProductoController@eliminar', 'as' => 'eliminar']);
        Route::get('/filtro',['uses' => 'adm\ProductoController@busqueda'])->name('filtro');
    });

    //Ruta de los eventos de categoria
    Route::group(['prefix' => 'categoria'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\CategoriasController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\CategoriasController@showEdit', 'as' => 'categoria_show']);
        Route::put('/{id}', ['uses' => 'adm\CategoriasController@update', 'as' => 'update']);
        Route::get('/eliminar/{id}', ['uses' => 'adm\CategoriasController@eliminar', 'as' => 'eliminar']);
    });

    //Ruta de los eventos de post
    Route::group(['prefix' => 'post'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\BlogsController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\BlogsController@showEdit', 'as' => 'post_show']);
        Route::put('/{id}', ['uses' => 'adm\BlogsController@update', 'as' => 'update']);
        Route::get('/eliminar/{id}', ['uses' => 'adm\BlogsController@eliminar', 'as' => 'eliminar']);
    });

    //Ruta de los eventos de ingenieria
    Route::group(['prefix' => 'ingenieria'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\IngenieriaController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\IngenieriaController@showEdit', 'as' => 'ingenieria_show']);
        Route::put('/{id}', ['uses' => 'adm\IngenieriaController@update', 'as' => 'update']);
        Route::get('/eliminar/{id}', ['uses' => 'adm\IngenieriaController@eliminar', 'as' => 'eliminar']);
    });
    
    //Ruta de los eventos de postventas
    Route::group(['prefix' => 'postventas'], function() {
        Route::get('/editar', ['uses' => 'adm\PostVentaController@showEdit', 'as' => 'postventa_show']);
        Route::put('/update', ['uses' => 'adm\PostVentaController@update', 'as' => 'update']);
    });

    //Ruta de los eventos de portada
    Route::group(['prefix' => 'portada'], function() {
        Route::get('/editar/{seccion}', ['uses' => 'adm\PortadaController@showEdit', 'as' => 'portada']);
        Route::put('/update/{id}', ['uses' => 'adm\PortadaController@update', 'as' => 'update']);
    });

    //Ruta de los eventos de logo
    Route::group(['prefix' => 'logo'], function() {
        Route::get('/editar/{id}', ['uses' => 'adm\LogoController@showEdit', 'as' => 'logo_show']);
        Route::put('/{id}', ['uses' => 'adm\LogoController@update', 'as' => 'update']);
        Route::get('/eliminar//{id}', ['uses' => 'adm\LogoController@eliminar', 'as' => 'eliminar']);
    });

    //Ruta de los eventos de metadata
    Route::group(['prefix' => 'metadatos'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\MetadatoController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\MetadatoController@showEdit', 'as' => 'metadatos_show']);
        Route::put('/{id}', ['uses' => 'adm\MetadatoController@update', 'as' => 'update']);
    });

    //Ruta de los eventos de slider
    Route::group(['prefix' => 'slider'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\SliderController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\SliderController@showEdit', 'as' => 'slider_show']);
        Route::put('/{id}', ['uses' => 'adm\SliderController@update', 'as' => 'update']);
        Route::get('/eliminar/{id}', ['uses' => 'adm\SliderController@eliminar', 'as' => 'eliminar']);
    });

    //Ruta de los eventos de usuario
    Route::group(['prefix' => 'usuario'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\UserController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\UserController@showEdit', 'as' => 'usuario_show']);
        Route::put('/{id}', ['uses' => 'adm\UserController@update', 'as' => 'update']);
        Route::get('/eliminar/{id}', ['uses' => 'adm\UserController@eliminar', 'as' => 'eliminar']);
    });
    //Ruta de los eventos de datos
    Route::group(['prefix' => 'datos'], function() {
        Route::get('/editar/{id}', ['uses' => 'adm\DatoController@showEdit', 'as' => 'datos_show']);
        Route::put('/update', ['uses' => 'adm\DatoController@update', 'as' => 'update']);
    });
    //Ruta de los eventos de linea
    Route::group(['prefix' => 'traducciones'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\TraduccionController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\TraduccionController@showEdit', 'as' => 'traduccion_show']);
        Route::put('/{id}', ['uses' => 'adm\TraduccionController@update', 'as' => 'update']);
        Route::get('/eliminar/{id}', ['uses' => 'adm\TraduccionController@eliminar', 'as' => 'eliminar']);
    });
    
    //Ruta de los eventos de redes sociales
    Route::group(['prefix' => 'redes'], function() {
        Route::post('/nuevo/send', ['uses' => 'adm\RedesController@store', 'as' => '.store']);
        Route::get('/editar/{id}', ['uses' => 'adm\RedesController@showEdit', 'as' => 'redes_show']);
        Route::put('/{id}', ['uses' => 'adm\RedesController@update', 'as' => 'update']);
    });
});
