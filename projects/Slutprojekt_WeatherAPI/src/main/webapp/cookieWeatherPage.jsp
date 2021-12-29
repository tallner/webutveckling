<%@ page import="model.WeatherBean"%>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Weather</title>
</head>
<body>

<!-- If you select to use cookies you will land on this page -->
<!-- For every search a cookie is generated and displayed in a list on the right side  -->
<!-- On this page you will see clouds, temperature and time&date -->
<!-- If you set cookies to No, all cookies will be cleared and you are moved to index -->

<!-- 	Include header and footer -->
	<header><%@ include file="header.jsp"%></header>
	<footer><%@ include file="footer.jsp"%></footer>
	
<!-- 	Get an ArrayList of weatherbeans -->
<!-- 	They include search result from cookies -->
	<%
		@SuppressWarnings("unchecked") //Is it OK to supress the unchecked warning or can I code elseway?
		ArrayList<WeatherBean> cb = (ArrayList<WeatherBean>) request.getAttribute("cbean");
	%>

<!-- This page is split up in two parts(divs) -->
<!-- The first is the form for searching... -->
	<div class="search-location">
		<%@ include file="WEB-INF/weatherForm.html"%>

		<div class="text-class">
			<%
				WeatherBean wb = (WeatherBean) request.getAttribute("wbean");
				if (wb!=null){
					out.print(wb.getCityStr().toUpperCase() + " " + wb.getTemperature() + "°C<br>");
					out.print(wb.getClouds() + "% cloudiness<br>");
					out.print(wb.getDateTime());
				}
			%>
		</div>
	</div>

<!-- ...and the second is for showing the searchresults from cookies -->
	<div class="last-locations">
		<%		
			out.print("<ul style=\"list-style-type:none\" style=\"color:white\">"); //can I do in CSS?
			try {
				for(int i = cb.size()-1; i >= 0; i--) {
					out.print("<li>" + cb.get(i) + "</li>" + "<br>");
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			out.print("</ul>");
		%>
	</div>

	

</body>
</html>