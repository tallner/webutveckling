<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>Weather location selector</title>
</head>
<body>

		<header>
			<%@ include file="header.jsp"%>
		</header>

	<form class="select-city" action="OpenWeatherServlet" method="get">
		City:<input class="select-city" type="text" name="city" />
		<br /> 
		Country (Language code):<input class="select-city"  type="text" name="country" />
		<br /> 
		<input class="select-city" type="submit" value="go" />
	</form>


	<div class="links">
		

		<nav>
			<a href="OpenWeatherServlet"> Get me a joke </a>
		</nav>


	</div>
	
		<footer>
			<%@ include file="footer.jsp"%>
		</footer>


</body>
</html>