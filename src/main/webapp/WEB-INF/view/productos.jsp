<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos</title>
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
</head>
<body>

	<div class="container">
		<div class="jumbotron">
			<div class="row">
				<div class="col-8">
					<h1>Mantenimiento de Productos</h1>
					<p>Aquí podrá usted hacer el mantenimiento de todos los
						productos</p>
				</div>
				<div class="col-4">
					<a type="button" href="index.jsp" type="button" class="btn btn-default border">Volver</a>
				</div>
			</div>
		</div>
		<div >
			<div class="col-6">
				<a href="producto/nuevo">Añadir un producto</a>
			</div>
			<div class="col-6">
				
			</div>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Nombre</th>
					<th>Tipo</th>
					<th>Precio</th>
					<th>Fecha</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="producto" items="${misProductos}">
					<tr>
						<td><c:out value="${producto.id_producto}" /></td>
						<td><c:out value="${producto.nombre}" /></td>
						<td><c:out value="${producto.tipo}" /></td>
						<td><c:out value="${producto.precio}" /></td>
						<td><c:out value="${producto.fecha}" /></td>
						<td><a
							href="LuisController?accion=eliminar&id=<c:out value="${producto.id_producto}"/>">Eliminar</a>
							| <a
							href="LuisController?accion=editar&id=<c:out value="${producto.id_producto}"/>">Editar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>

</body>
</html>