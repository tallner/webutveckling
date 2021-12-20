<%@page import="model.weatherbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="model.weatherbean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>Weather</title>
</head>
<body>

	<%
		weatherbean test = (weatherbean) request.getAttribute("wbean");
	%>

	<header>
		<%@ include file="header.jsp"%>
	</header>

	<div class="search-location">
		<%@ include file="WEB-INF/weatherForm.html"%>
		
		<div class="text-class">
				<%out.print(test.getCityStr().toUpperCase() + " " + test.getTemperature()+ "°C");%>
		</div>

	</div>

	<div class="last-locations">

		<ul>
			<li><a href=""> Temp1 </a></li>
			<br>
			<li><a href=""> Temp2 </a></li>
			<br>
			<li><a href=""> Temp3 </a></li>
			<br>
			<li><a href=""> Temp4 </a></li>
			<br>
			<li><a href=""> Temp5 </a></li>
			<br>
		</ul>
	</div>

	<footer>
		<%@ include file="footer.jsp"%>
	</footer>

</body>
</html>