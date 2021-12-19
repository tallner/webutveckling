<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>
</head>
<body>

	<form action="apiservlet" method="get">
		City:<input type="text" name="city" /><br /> Country (Language code):<input
			type="text" name="country" /><br /> <input type="submit" value="go" />
	</form>


	<div class="links">
		<header>
			<%@ include file="header.jsp"%>
		</header>

		<nav>
			<a href="apiservlet"> Get me a joke </a>
		</nav>

		<footer>
			<%@ include file="footer.jsp"%>
		</footer>
	</div>


</body>
</html>