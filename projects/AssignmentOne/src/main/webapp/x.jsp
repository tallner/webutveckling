<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>X</title>
</head>
<body>
<%@ include file = "header.jsp" %>

<h3> X page </h3>

<%
String name=request.getParameter("fname");  
out.print("welcome "+name); 
String UserRoll=request.getParameter("userRoll");  
out.print("You are signed in as "+UserRoll); 

 
%>

<%@ include file = "footer.jsp" %>
</body>
</html>