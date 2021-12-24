<%@page import="org.eclipse.jdt.internal.compiler.ast.ForStatement"%>
<%@page import="model.weatherbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="controller.CookieAccept"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Weather location selector</title>
</head>
<body>

	<header><%@ include file="header.jsp"%></header>
	<footer><%@ include file="footer.jsp"%></footer>

<!-- 	User search from a form -->
	<div class="search-location-test">
		<%@ include file="WEB-INF/weatherForm.html"%>
		<div class="text-class">
			<%
			weatherbean wb = (weatherbean) request.getAttribute("wbean");
			if (wb!=null)
				out.print(wb.getCityStr().toUpperCase() + " " + wb.getTemperature() + "°C");
			%>
		</div>
	</div>
	
<!-- 	If user accepted cookies, do an automatic cookie-search-->		
	<%
	if ((request.getCookies() != null)&&
		(CookieAccept.cookiesAccepted(request.getCookies(), request.getCookies().length)))//this method returns true if cookies are accepted 
		{
    		RequestDispatcher rd = request.getRequestDispatcher("CookieSearch");
    		rd.forward(request, response);
    	}
	%>


</body>
</html>