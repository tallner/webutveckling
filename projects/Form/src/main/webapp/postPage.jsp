<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	String name = request.getParameter("fname");
	out.print("<p>welcome " + name + "</p>");

	String stuff = request.getParameter("stuff");
	out.print("<p>you picked " + stuff + "</p>");
	%>

</body>
</html>