<%@page import="org.eclipse.jdt.internal.compiler.ast.ForStatement"%>
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

	<header>
		<%@ include file="header.jsp"%>
	</header>

	<div class="search-location-index">
		<%@ include file="WEB-INF/weatherForm.html"%>
	</div>
	
	<footer>
		<%@ include file="footer.jsp"%>
	</footer>
		
	<%
	//check if cookies are accepted
	boolean cookiesAccepted = false;
	if (request.getCookies() != null)
		cookiesAccepted = CookieAccept.cookiesAccepted(request.getCookies(), request.getCookies().length);			
	
	//if they are accepted, do a cookie-search
	if (cookiesAccepted) {
    	RequestDispatcher rd = request.getRequestDispatcher("CookieSearch");
    	rd.forward(request, response);// this lands on the GET in the servlet
    	}
	%>


</body>
</html>