<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LJFA</title>

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

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/inicio.css">

</head>
<body>
	
	<nav
		class="navbar navbar-dark navbar-expand-sm sticky-top navigation-clean-button bg-dark"
		data-aos="fade">
		<div class="container-fluid">
			<a class="navbar-brand " href="#">LJFA</a>
			<button data-toggle="collapse" class="navbar-toggler"
				data-target="#navcol-1">
				<span class="sr-only">Toggle navigation</span><span
					class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end"
				id="navcol-1">
				<span class="navbar-text actions"> <a class="navbar-session"
					href="#about">About&nbsp;</a> <a class="navbar-session"
					href="#myskill">My skills&nbsp;</a> <a class="navbar-session"
					href="#project">Projects&nbsp;</a> <a class="navbar-session"
					href="#education">Education&nbsp;</a> <a
					class="btn action-button boton" type="submit" role="button"
					data-bss-hover-animate="pulse" href="#contact">Contact</a> <!-- 
            		<a class="btn btn-light action-button" href="#" role="button" data-bss-hover-animate="pulse" href="register.jsp" style="background: #ffdf08;color: rgb(0,0,0);">Cerrar sesión</a>
            
	           		<a class="login" href="#" style="margin-left: 15px;">EUR</a>
              -->
				</span>
			</div>
		</div>
	</nav>

	<section class="about-session" id="about">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<div class="">
						<p>Hola soy&nbsp;</p>
						<h1>
							<strong>JAVIER FLORES </strong>
						</h1>
						<p>Desarrollador junior&nbsp;</p>
						<h4 class="pt-5">Actualmente estoy enfocado en la
							programación web con una gran disposición para aprender y seguir
							creciendo en este maravilloso mundo. Con mis conocimientos
							adquiridos actualmente puedo trabajar con HTML & CSS, JavaScript,
							Java, Spring, Mysql.</h4>
						<div class="pt-5 ">
							<a
								href="${pageContext.request.contextPath}/assets/pdf/CV_Luis_ES.pdf"
								class="btn boton" data-aos="fade-right" data-aos-offset="100"
								data-aos-easing="ease-in-sine" role="button">Descargar CV</a> <a
								href="prueba/prueba1" class="btn boton" data-aos="fade-right"
								data-aos-offset="100" data-aos-easing="ease-in-sine"
								role="button">Prueba 1</a> <a href="prueba/prueba2"
								class="btn boton" data-aos="fade-right" data-aos-offset="100"
								data-aos-easing="ease-in-sine" role="button">Prueba 2</a>

						</div>

					</div>
				</div>
				<div class="col-md-6 centrado ">
					<div class=" ">
						<img class="device "
							src="${pageContext.request.contextPath}/assets/img/inicio/imagen-1.jpg"
							width="100%">
					</div>

				</div>
			</div>
		</div>

	</section>

	<section class=" myskill-session" id="myskill">
		<div class="container-fluid">
			<div class="pb-4 pt-4">
				<h2>My skills</h2>
			</div>
			<div class="row pt-4">
				<div class="col-4 ">
					<div>
						<label for="file">HTML</label>
						<progress id="file" value="45" max="100"> 90% </progress>
					</div>

					<div>
						<label for="file">CSS</label>
						<progress id="file" value="48" max="100"> 90% </progress>
					</div>
					<div>
						<label for="file">JavaScript</label>
						<progress id="file" value="60" max="100"> 90% </progress>
					</div>
				</div>
				<div class="col-4">
					<div>
						<label for="file">Java</label>
						<progress id="file" value="55" max="100"> 90% </progress>
					</div>
					<div>
						<label for="file">Spring</label>
						<progress id="file" value="40" max="100"> 90% </progress>
					</div>
					<div>
						<label for="file">React</label>
						<progress id="file" value="20" max="100"> 90% </progress>
					</div>
				</div>
				<div class="col-4">
					<div>
						<label for="file">MVC</label>
						<progress id="file" value="60" max="100"> 90% </progress>
					</div>
					<div>
						<label for="file">MySQL</label>
						<progress id="file" value="15" max="100"> 90% </progress>
					</div>
					<div>
						<label for="file">GIT</label>
						<progress id="file" value="25" max="100"> 90% </progress>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class=" project-session" id="project">
		<div class="container-fluid">
			<div class="row project-session-1 pb-5">
				<div class="col-xl-6 col-sm-12">
					<div class="pb-5 ">
						<h2>My Projects</h2>
					</div>
					<h4 class="">Proyecto basado en emular una plataforma
						exchange, haciendo un seguimiento de los diferentes precios del
						mercado criptomonedas a través de una API, permitiendo a los
						usuarios, conocer, aprender y practicar en la compraventa de
						criptomonedas, con fondos ficticios.</h4>
					<span class="navbar-text actions"> </span>
				</div>
				<div class="col-xl-6 col-sm-12 centrado">
					<div id="">
						<a href="/ProyectoCRICOIN/index.jsp"><img
							data-bss-hover-animate="pulse"
							src="${pageContext.request.contextPath}/assets/img/inicio/cricoin-index.JPG"
							class="myproject-img " width="100%"></a>
					</div>
					<div class="mt-2">
						<p>Exchange</p>
					</div>
				</div>
			</div>
			<div class="row  pt-5 ">
				<div class=" col-sm-6 centrado col-xl-3">
					<div class="margen-lateral ">
						<a href="pepe/calculadora"><img data-bss-hover-animate="pulse"
							src="${pageContext.request.contextPath}/assets/img/inicio/calculadora-index.JPG"
							class="myproject-img transf-hover " width="100%"></a>
					</div>
					<div class="mt-2">
						<p>Calculadora</p>
					</div>
				</div>
				<div class=" col-sm-6 centrado col-xl-3">
					<div class="margen-lateral">
						<a href="producto/listaProductos"><img
							src="${pageContext.request.contextPath}/assets/img/inicio/mantenimiento-index.png"
							class="myproject-img sombra-hover" width="100%"></a>
					</div>
					<!-- "assets/video/productos-video.mp4"	
					./LuisController?accion=pepe   -->
					<div class="mt-2">
						<p>Mantenimiento productos</p>
					</div>
				</div>
				<div class=" col-sm-6 centrado col-xl-3">
					<div class="margen-lateral ">
						<a href="tienda"><img
							src="${pageContext.request.contextPath}/assets/img/inicio/ofertas-index.JPG"
							class="myproject-img mt-5 transf-hover sombra-hover" width="100%"></a>
					</div>
					<div class="mt-2">
						<p>Ofertas</p>
					</div>
				</div>
				<div class="col-sm-6 centrado col-xl-3">
					<div class="margen-lateral  ">
						<a href="funciones"><img
							src="${pageContext.request.contextPath}/assets/img/inicio/utilidades-index.jpg"
							class="myproject-img " width="100%"></a>
					</div>
					<div class="mt-2">
						<p>Funciones</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="education-contact-session">
		<section class="education-session" id="education">
			<div class="container-fluid ">
				<div class=" centrado">
					<div class="pb-5">
						<h2>Education</h2>
					</div>
					<div class="education"
						style="box-shadow: 30px 0px 50px rgb(4, 128, 128)">
						<div class="education-margin">
							<span><a>BIT Academy by Netmind</a></span>
							<h3>
								<span>CP Nivel 3 - Desarrollo de aplicaciones con
									tecnologias web</span>
							</h3>
							<span class="">2021 - 2021</span>
						</div>
						<div class="education-margin">
							<span><a>Fundacion CIM - UPC</a></span>
							<h3>
								<span>Técnico en CAD avanzado (TCAD) - Diseño y
									desarrollo de producto</span>
							</h3>
							<span class="">2019 - 2019</span>
						</div>
						<div class="education-margin">
							<span><a>Universidad de Carabobo</a></span>
							<h3>
								<span>Licenciatura - Ingeniería Mecánica</span>
							</h3>
							<span class="">2008 - 2013</span>
						</div>

					</div>



				</div>
			</div>
		</section>

		<section class="contact-session" id="contact">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12 col-xl-7 pt-4">

						<div class="centrado ">
							<h2 class="pt-4">
								<span>Puede contactarme a través del formulario</span>
							</h2>
							<p class="pt-4">
								<span>o tambien puedes hacerlo a través de los siguiente
									canales&nbsp;</span>
							</p>
							<div class="p-4 ">
								<!-- Github -->
								<a class="btn btn-primary contact-media sombra-hover"
									style="background-color: #333333;"
									href="https://github.com/ljflores1209" role="button"><i
									class="fa fa-github"></i></a>
								<!-- Linkedin -->
								<a class="btn btn-primary contact-media sombra-hover"
									style="background-color: #0082ca;"
									href="https://www.linkedin.com/in/ljflores1209" role="button"><i
									class="fa fa-linkedin"></i></a>
								<!-- Whatsapp -->
								<a id="whatsapp"
									class="btn btn-primary  contact-media sombra-hover"
									style="background-color: #25d366;" href="#!" role="button"><i
									class="fa fa-whatsapp"></i></a>
								<h4 id="w" class="row whatsapp centrado"></h4>

							</div>
						</div>
					</div>

					<div class="col-sm-12 col-xl-5 ">
						<div class="card centrado ">
							<div class="card-body ">
								<div class="form-group">
									<input type="email" class="form-control"
										placeholder="Introduce nombre" id="nombre">
								</div>
								<div class="form-group">
									<input type="email" class="form-control"
										placeholder="Introduce email" id="email">
								</div>
								<div class="form-group">
									<input type="email" class="form-control"
										placeholder="Introduce teléfono" id="telefono">
								</div>
								<div>
									<button type="button" class="btn boton ">Contactar</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<button id="boton-up" value="1" title="Go to top">⇧</button>
		</section>
	</div>

	<footer class="page-footer font-small bg-dark ">
		<div class="footer-copyright text-white text-center py-3">
			© 2021 Copyright: <a href=""> ljfa.es</a>
		</div>
	</footer>




	<script src="${pageContext.request.contextPath}/assets/js/inicio.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/mantenimiento404.js"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</body>
</body>
</html>