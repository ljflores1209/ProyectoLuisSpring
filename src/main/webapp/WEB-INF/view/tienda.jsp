<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda</title>
<!-- 	CDN BOOTSTRAP   -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- 	CDN BOOTSTRAP   -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/tienda.css">
</head>
<body>

	<div class="container-fluid">
		<header class="row">
			<div class="col-1">
				<img src="assets/img/tienda/logo.png" width="50">
			</div>
			<div class="col-11 ">

				<nav
					class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-end">
					<a class="navbar-brand " href="primeraPagina">Inicio</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#collapsibleNavbar">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="collapsibleNavbar">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link " href="#">Productos</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">Tiendas</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">Ofertas</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">Nosotros</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">Contacto</a>
							</li>
						</ul>
					</div>
				</nav>
				<br>




			</div>


		</header>
		<div class="text-center">

			<h2 class="colorNaranja">No te pierdas nuestra ofertas</h2>


		</div>

		<div class="row ">
			<div class=" col-sm-6 col-md-3">
				<article class="article-bg-color ">

					<img src="assets/img/tienda/imagen1.jpg" width="100%">
					<h5>Modern T-Shirt</h5>
					<p>$20.00</p>
					<p class="colorNaranja">Añadir a la cesta</p>


				</article>
			</div>
			<div class="col-sm-6 col-md-3 ">
				<article class=" article-bg-color">

					<img src="assets/img/tienda/imagen2.jpg" width="100%">
					<h5>Womens Dress</h5>
					<p>$20.00</p>
					<p class="colorNaranja">Añadir a la cesta</p>


				</article>
			</div>
			<div class=" col-sm-6 col-md-3">
				<article class="article-bg-color">

					<img src="assets/img/tienda/imagen3.jpg" width="100%">
					<h5>Womens Cotton Top</h5>
					<p>$20.00</p>
					<p class="colorNaranja">Añadir a la cesta</p>


				</article>
			</div>
			<div class="col-sm-6 col-md-3 ">
				<article class="article-bg-color">

					<img src="assets/img/tienda/imagen4.jpg" width="100%">
					<h5>Summer Dress</h5>
					<p>$20.00</p>
					<p class="colorNaranja">Añadir a la cesta</p>


				</article>
			</div>
		</div>

		<div class="row mt-4 ">
			<div class="col-sm-6 ">
				<h1>¡Grandes descuentos!</h1>
				<p>Descubre el tuyo</p>
				<label for="cadena">Código postal:</label> <input type="text"
					class="form-control" id="cadena" placeholder=""> <label
					for="cadena">Importe de compra:</label> <input type="number"
					class="form-control" id="numero" placeholder=""> <br>
				<button type="button" id="calcular" class="btn btn-success">Calcular</button>


			</div>
			<div class="col-sm-6 ">
				<h1 id="bbb" class="aaa"></h1>
				<img src="assets/img/tienda/imagen5.jpg" width="100%">
			</div>
		</div>


		<div>
			<footer class="mt-2 bg-dark text-light text-center p-4">
				<p>Todos nuestros productos tienen un sello ético que</p>
				<p>garantiza que han sido confeccionados para trabajadores</p>
				<p>felices y bien pagados</p>
			</footer>
			<script src="assets/js/tienda.js"></script>
		</div>
	</div>

</body>
</html>