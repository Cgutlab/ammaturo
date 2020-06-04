<div class="sidebar p-0 m-0">
	<ul class="nav flex-sm-column h-100" id="sidenav">
		<li class="nav-item">
			<a class="nav-link d-flex justify-content-center" href="{{ route('adm_index') }}">
			<img class="logo" src="{{asset($logo_header->imagen)}}" alt="">
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#home"><i class="material-icons mr-3">home</i>Home</a>
			<div id="home" class="collapse ">
				<ul class="nav flex-column ml-3">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('suscripcion')}}"><i class="material-icons">navigate_next</i>Lista de correos</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('enlace')}}"><i class="material-icons">navigate_next</i>Editar enlace</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('icono_create', ['seccion' => 'home'])}}"><i class="material-icons">navigate_next</i>Crear icono</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('iconos',  ['seccion' => 'home'])}}"><i class="material-icons">navigate_next</i>Editar iconos</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('slider_create', ['seccion' => 'home'])}}"><i class="material-icons">navigate_next</i>Crear slider</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('slider',  ['seccion' => 'home'])}}"><i class="material-icons">navigate_next</i>Editar sliders</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link  d-flex align-items-center" data-toggle="collapse" href="#empresa"><i class="material-icons mr-3">business</i>Empresa</a>
			<div id="empresa" class="collapse">
				<ul class="nav flex-column ml-3">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('empresa')}}"><i class="material-icons">navigate_next</i>Editar empresa</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('linea_create')}}"><i class="material-icons">navigate_next</i>Crear punto historico</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('linea')}}"><i class="material-icons">navigate_next</i>Ver puntos historicos</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('slider_create',  ['seccion' => 'empresa'])}}"><i class="material-icons">navigate_next</i>Crear slider</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('slider',  ['seccion' => 'empresa'])}}"><i class="material-icons">navigate_next</i>Editar sliders</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#producto"><i class="material-icons mr-3">shopping_cart</i>Productos</a>
			<div id="producto" class="collapse">
				<ul class="nav flex-column ml-3">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('familia_create')}}"><i class="material-icons">navigate_next</i>Crear familia</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('familia')}}"><i class="material-icons">navigate_next</i>Ver familias</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('producto_create')}}"><i class="material-icons">navigate_next</i>Crear producto</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('productos')}}"><i class="material-icons">navigate_next</i>Ver productos</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('portada',  ['seccion' => 'producto'])}}"><i class="material-icons">navigate_next</i>Editar portada</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#blog"><i class="material-icons mr-3">insert_comment</i>Novedades</a>
			<div id="blog" class="collapse">
				<ul class="nav flex-column ml-3">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('categoria_create')}}"><i class="material-icons">navigate_next</i>Crear categoria</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('categorias')}}"><i class="material-icons">navigate_next</i>Ver categorias</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('post_create')}}"><i class="material-icons">navigate_next</i>Crear post</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('posts')}}"><i class="material-icons">navigate_next</i>Ver posts</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('portada',  ['seccion' => 'blog'])}}"><i class="material-icons">navigate_next</i>Editar portada</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#ingenieria"><i class="material-icons mr-3">settings_system_daydream</i>Ingenier&iacute;a</a>
			<div id="ingenieria" class="collapse">
				<ul class="nav flex-column ml-3">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('ingenieria_create')}}"><i class="material-icons">navigate_next</i>Crear item</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('ingenierias')}}"><i class="material-icons">navigate_next</i>Editar item</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('portada',  ['seccion' => 'ingenieria'])}}"><i class="material-icons">navigate_next</i>Editar portada</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#presupuesto"><i class="material-icons mr-3">input</i>Solicitar Presupuesto</a>
			<div id="presupuesto" class="collapse">
				<ul class="nav flex-column ml-3">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('portada',  ['seccion' => 'presupuesto'])}}"><i class="material-icons">navigate_next</i>Editar portada</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#postventa"><i class="material-icons mr-3">offline_pin</i>Post-venta</a>
			<div id="postventa" class="collapse">
				<ul class="nav flex-column ml-3">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('postventa_show')}}"><i class="material-icons">navigate_next</i>Editar texto</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('icono_create', ['seccion' => 'postventa'])}}"><i class="material-icons">navigate_next</i>Crear icono</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('iconos',  ['seccion' => 'postventa'])}}"><i class="material-icons">navigate_next</i>Editar iconos</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{route('portada',  ['seccion' => 'postventa'])}}"><i class="material-icons">navigate_next</i>Editar portada</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#metadatos"><i class="material-icons mr-3">settings</i>Meta-datos</a>
			<div id="metadatos" class="collapse">
				<ul class="nav flex-column ml-3">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('metadatos')}}"><i class="material-icons">navigate_next</i>Ver metadatos</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#logo"><i class="material-icons mr-3">insert_photo</i>Logos</a>
			<div id="logo" class="collapse">
			<ul class="nav flex-column ml-3">
				<li class="nav-item">
					<a class="nav-link d-flex align-items-center" href="{{ route('logo')}}"><i class="material-icons">navigate_next</i>Ver Logos</a>
				</li>
			</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#datos"><i class="material-icons mr-3">contacts</i>Datos</a>
			<div id="datos" class="collapse">
				<ul class="nav flex-column ml-3">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('datos_show', ['seccion'=>'direccion'])}}"><i class="material-icons">navigate_next</i>Editar Direcci&oacute;n</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('datos_show', ['seccion'=>'telefono'])}}"><i class="material-icons">navigate_next</i>Editar Telefonos</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('datos_show', ['seccion'=>'email'])}}"><i class="material-icons">navigate_next</i>Editar Email</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('datos_show', ['seccion'=>'terminos'])}}"><i class="material-icons">navigate_next</i>Editar Terminos y condiciones de la empresa</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('datos_show', ['seccion'=>'mapa'])}}"><i class="material-icons">navigate_next</i>Editar Mapa</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#traducciones"><i class="material-icons mr-3">description</i>Traducciones</a>
			<div id="traducciones" class="collapse">
				<ul class="nav flex-column ml-3">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('traduccion_create')}}"><i class="material-icons">navigate_next</i>Crear traducci&oacute;n</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('traducciones')}}"><i class="material-icons">navigate_next</i>Ver traducciones</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
				<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#redes"><i class="material-icons mr-3">share</i>Redes Sociales</a>
				<div id="redes" class="collapse">
				<ul class="nav flex-column ml-3">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('redes_create')}}"><i class="material-icons">navigate_next</i>Crear Red</a>
					</li>
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center" href="{{ route('redes')}}"><i class="material-icons">navigate_next</i>Ver Redes</a>
					</li>
				</ul>
				</div>
			</li>
		@if(Auth::user()->isAdmin == '1')
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center" data-toggle="collapse" href="#usuario"><i class="material-icons mr-3">people</i>Usuarios</a>
			<div id="usuario" class="collapse">
			<ul class="nav flex-column ml-3">
				<li class="nav-item">
					<a class="nav-link d-flex align-items-center" href="{{route('usuario_create')}}"><i class="material-icons">navigate_next</i>Crear usuario</a>
				</li>
				<li class="nav-item">
					<a class="nav-link d-flex align-items-center" href="{{route('usuario')}}"><i class="material-icons">navigate_next</i>Ver usuarios</a>
				</li>
			</ul>
			</div>
		</li>
		@endif
		<li class="nav-item">
			<div class="row">
				<div class="col md-6" style="padding-right:0;">
					<a href="https://osole.freshdesk.com/support/home" target="_blank" class="btn-info py-2 btn-block text-uppercase text-center"><i class="fas fa-ticket-alt mr-2"></i>soporte</a>
				</div>
				<div class="col md-6" style="padding-left:0;">
					<a href="{{ route('logout') }}"  class="btn-danger btn-block py-2 text-uppercase text-center" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="fas fa-power-off mr-2"></i>Cerrar Sesión</a>
				</div>
			</div>
		</li>
	</ul>
	<form class="form-inline my-2 my-lg-0" id="logout-form" action="{{ route('logout') }}" method="POST">
		{{ csrf_field() }}
	</form>
</div>