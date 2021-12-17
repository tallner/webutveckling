<%@page import="model.weatherbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <% import weatherbean %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String test = (weatherbean) request.getAttribute("wbean") ;


out.print(test);

%>



<a href = "apiservlet">
Get me another joke
</a>

</body>
</html>