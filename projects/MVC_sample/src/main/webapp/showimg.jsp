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
String show = request.getParameter("show");
String img = request.getParameter("img");

out.println(show);
out.println(img);
out.print("<img src=\"img/"+img+"\">");//?
%>

</body>
</html>