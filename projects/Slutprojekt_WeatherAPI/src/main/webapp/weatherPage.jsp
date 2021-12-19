<%@page import="model.weatherbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "model.weatherbean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Weather</title>
</head>
<body>

<%

weatherbean test = (weatherbean) request.getAttribute("wbean") ;

out.print("The weather " + test.getCityStr() + " is now a " + test.getClouds());

%>

</body>
</html>