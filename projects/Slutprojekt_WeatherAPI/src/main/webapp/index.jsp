<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Weather location selector</title>
</head>
<body>

	<form action="OpenWeatherServlet" method="get">
		City:<input type="text" name="city" /><br /> Country (Language code):<input
			type="text" name="country" /><br /> <input type="submit" value="go" />
	</form>


	<div class="links">
		<header>
			<%@ include file="header.jsp"%>
		</header>

		<nav>
			<a href="OpenWeatherServlet"> Get me a joke </a>
		</nav>

		<footer>
			<%@ include file="footer.jsp"%>
		</footer>
	</div>


</body>
</html>