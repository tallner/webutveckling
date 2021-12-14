<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="model.imgBean"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert images here</title>
</head>
<body>

<%
	imgBean imgBean=(imgBean)request.getAttribute("imgBean");
	
	out.println("<h1>Welcome " + imgBean.getShow() + "!</h1>");
	
	out.print("<img src=\"img/" + imgBean.getImgName() + "\">");
%>

</body>
</html>