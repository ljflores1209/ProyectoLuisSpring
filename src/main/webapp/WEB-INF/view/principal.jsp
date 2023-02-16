<!-- Pagina principal -->
<!-- fecha: 20-1-2023. -->
<!-- version: 2.7-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>

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
	<%-- DEFINICION DE ZONAS EN LA PLANTILLA DE LA VISTA --%>
	<div id="">
		<%-- CONTENIDO FIJO --%>
		<jsp:include page="/WEB-INF/view/new/nav-session.jsp" />
	</div>
	<div id="" >
		<%-- CONTENIDO FIJO --%>
		<jsp:include page="/WEB-INF/view/new/about-session.jsp" />
	</div>
	<div id="bann">
		<%-- CONTENIDO FIJO --%>
		<jsp:include page="/WEB-INF/view/new/myskill-session.jsp" />
	</div>
	<div id="ban">
		<%-- CONTENIDO FIJO --%>
		<jsp:include page="/WEB-INF/view/new/project-session.jsp" />
	</div>
	<div id="ba">
		<%-- CONTENIDO FIJO --%>
		<jsp:include page="/WEB-INF/view/new/education-contact-session.jsp" />
	</div>
	<div id="qq">
		<%-- CONTENIDO FIJO --%>
		<jsp:include page="/WEB-INF/view/new/footer.jsp" />
	</div>
	<div id="cuerpo">
		<%-- CONTENIDO VARIABLE --%>
		<jsp:include page="/WEB-INF/view/${param.tarea}" />
	</div>

</body>

<script src="${pageContext.request.contextPath}/assets/js/inicio.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/mantenimiento404.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

</html>
