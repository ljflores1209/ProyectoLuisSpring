<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Funciones</title>

<!-- 	CDN BOOTSTRAP   -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 	CDN BOOTSTRAP   -->

<!--CDN JQUERY-->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<!--CDN JQUERY-->

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/funciones.css">

</head>
<body>

	<div class="container-fluid ">
		<div class="col-4 pb-4 ">
			<a type="button" href="primeraPagina" type="button"
				class="btn color-boton">Volver</a>
		</div>

		<div class="row pb-4">
			<div class="col-8">
				<label for="">Seleccione alguna de las opciones disponibles:</label>
				<select name="Opciones" id="opciones" class="color-boton">

					<option value="0">Opciones</option>
					<option value="1">Juego</option>
					<option value="2">Formulario</option>
					<option value="3">Cadenas</option>
					<!--  <option value="4">Memoria</option>-->


				</select>
				
			</div>
			<div class="col-4">
				<h2 id="contador"></h2>
			</div>
		</div>
		<br> <br>


		<div class="   border  box" id="opcion-cadena">
			<div class="row  altu">
				<div class="col p-3  text-center border boxes">
					<h1>Encuentra una sub-cadena adentro de una cadena!!!</h1>
					<div class="col pt-5 center ">
						<form id="formu" action="" onsubmit="return false"
							target="request" class="altu">
							<label for="fname">Introduce Cadena</label> <input type="text"
								id="cadena" name="cadena" placeholder="Cadena..."><br>
							<br> <br> <label for="lname">Introduce
								sub-cadena</label> <input type="text" id="subcadena" name="subcadena"
								placeholder="Sub-cadena..."><br> <br> <input
								type="submit" id="buscar" class="color-boton" value="Buscar">
							<input type="button" id="limpiar" class="color-boton"
								value="Limpiar">
							<p id="mensaje" class="color-mensaje"></p>
						</form>
					</div>
				</div>


				<div class="col p-3  text-center border boxes">
					<h2 id="result"></h2>
				</div>

			</div>
		</div>


		<div class="   border  box" id="opcion-juego">
			<div Class="row  altu">
				<div class="col p-3  text-center border boxes">
					<h1>Bienvenido el maravilloso juego de los números!!!</h1>
					<div class="col pt-5 center ">
						<form id="formu-numeros" action="" onsubmit="return false"
							target="request" class="altu">
							<label for="fname">Introduce la cantidad de números</label> <input
								type="number" id="cantidad" name="cantidad"
								placeholder="Cantidad..."><br> <br> <br>
							<input type="submit" id="empezar" class="color-boton"
								value="Empezar"> <input type="button"
								id="limpiar-numeros" class="color-boton" value="Limpiar">
							<p id="mensaje" class="color-mensaje"></p>
						</form>
						<p id="mensajeCantidad" class="color-mensaje"></p>
					</div>
				</div>

				<div class="col p-3  text-center border boxes">
					<div id="tablero"></div>
				</div>

			</div>
		</div>


		<div class="   border  box" id="opcion-formulario">
			<div Class="row altu">
				<div class="col p-3  text-center border boxes">
					<h1>Registrate!!!</h1>
					<br>

					<form id="formu-registro" action="" onsubmit="return false"
						target="request" class="altu">
						<label for="fname">Nombre usuario</label> <input type="text"
							id="nombreUsuario" name="nombreUsuario" placeholder="Nombre..."><br>
						<br> <label for="fname">Corre electrónico</label> <input
							type="email" id="email" name="email" placeholder="Correo..."><br>
						<br> <label for="fname">Contraseña</label> <input
							type="password" id="cont1" name="cont1"
							placeholder="Contraseña..."><br> <br> <label
							for="fname">Confirmar contraseña</label> <input type="password"
							id="cont2" name="cont2" placeholder="Repetir contraseña..."><br>
						<br> <input type="submit" id="enviar" class="color-boton"
							value="Enviar">

						<p id="mensajeRegistro" class="color-mensaje"></p>
					</form>


				</div>
				<div id="usuarioBienvenida"
					class="usuarioBienvenida col p-3  text-center border boxes">
					<h2 class="mt-5">
						Bienvenido <span id="mostrarNombre"></span>, te has registrado con
						éxito!!! Tu correo electrónico es: <span id="mostrarEmail"></span>,
						y tu contraseña es: <span id="mostrarCont1"></span>
					</h2>
					<div id="" class=" ">
						<div id="" class=""></div>
					</div>
					<input type="submit" id="terminarRegistro"
						class="color-boton esconder" value="Terminar"> <input
						type="submit" id="consultarRegistro" class="color-boton esconder"
						value="Consultar registros">
				</div>
				<!--OJO por hacer: funcionalidad y visibilidad al los botones terminarRegistro y consultarRegistro-->
				<div id="usuarioAccion" class="col p-3  text-center border boxes">
					<div id="" class=" ">
						<div id="" class=""></div>
					</div>
				</div>
			</div>
		</div>

		<div class="   border  box" id="opcion-memoria">
			<div class="row  altu">
				<div class="col p-3  text-center border boxes">
					<div class="col pt-5 center ">

						<h2>Seleccione el nivel:</h2>
						<form id="nivel">
							<div class="checkbox">
								<label><input type="checkbox" value="nivel1">Option
									1</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="nivel2">Option
									2</label>
							</div>
							<div class="checkbox ">
								<label><input type="checkbox" value="nivel3">Option
									3</label>
							</div>
							<input type="submit" id="comenzar" class="color-boton"
								value="Comenzar">
						</form>
					</div>
				</div>

				<div id="result" class="col p-3  text-center border boxes"></div>

			</div>
		</div>
	</div>

	<script src="assets/js/funciones.js"></script>

</body>
</html>