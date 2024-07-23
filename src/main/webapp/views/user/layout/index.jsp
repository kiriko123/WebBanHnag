<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ASM</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/design/css/templatemo.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/design/img/favicon.ico">
<script src="https://kit.fontawesome.com/8afb41633c.js"
	crossorigin="anonymous"></script>
<style>
*, *::before, *::after {
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}

body {
	min-height: 100vh;
	scroll-behavior: smooth;
	text-rendering: optimizeSpeed;
	line-height: 1.5;
}

i {
	padding-right: 4px;
}

a {
	text-decoration: none;
}

.tenvideo:hover {
	color: oranged;
}

body::before {
	display: block;
	content: '';
	height: 35px;
}

.box-area {
	width: 930px;
}

.right-box {
	padding: 40px;
}

::placeholder {
	font-size: 16px;
}

.carousel-caption {
	background: rgba(0, 0, 0, 0.5); /* Semi-transparent black background */
	padding: 1em;
	border-radius: 5px;
}

.carousel-caption h5 {
	font-size: 1.5rem;
	font-weight: bold;
}

.carousel-caption p {
	font-size: 1rem;
}

body {
	font-family: "Poppins", sans-serif;
}

.video-wrapper {
	position: relative;
	padding-bottom: 56.25%;
	height: 0;
	overflow: hidden;
}

.video-wrapper iframe {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<jsp:include page="${page }"></jsp:include>
	<jsp:include page="footer1.jsp"></jsp:include>

	<!--  	<script
		src="${pageContext.request.contextPath}/design/js/jquery-1.11.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/design/js/jquery-migrate-1.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/design/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/design/js/templatemo.js"></script>
	<script src="${pageContext.request.contextPath}/design/js/custom.js"></script> -->
</body>
</html>