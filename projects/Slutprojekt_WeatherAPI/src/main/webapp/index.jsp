<%@page import="org.eclipse.jdt.internal.compiler.ast.ForStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Weather location selector</title>
</head>
<body>

	<header>
		<%@ include file="header.jsp"%>
	</header>

	<div class="search-location-index">
		<%@ include file="WEB-INF/weatherForm.html"%>
	</div>
	
	<footer>
		<%@ include file="footer.jsp"%>
	</footer>


</body>
</html>