<%@ page import="model.weatherbean"%>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Weather</title>
</head>
<body>

	<header><%@ include file="header.jsp"%></header>
	<footer><%@ include file="footer.jsp"%></footer>
	<%
		@SuppressWarnings("unchecked") //Is this OK?
		ArrayList<weatherbean> cb = (ArrayList<weatherbean>) request.getAttribute("cbean"); 
	%>

	<div class="search-location">
		<%// @ include file="WEB-INF/weatherForm.html"%>
		<form action="OpenWeatherServlet" method="get" >
			City:<input type="text" name="city" class="input-background"> <br><br> 
			Country:<input type="text" name="country" class="input-background" /> <br><br> 
			<input type="submit" value="  GO  "  class="input-background">
		</form>

		<div class="text-class">
			<%
			weatherbean wb = (weatherbean) request.getAttribute("wbean");
			if (wb!=null)
				out.print(wb.getCityStr().toUpperCase() + " " + wb.getTemperature() + "°C");
			%>
		</div>
	</div>


	<div class="last-locations">
		<%
	//		@SuppressWarnings("unchecked") //Is this OK?
		//	ArrayList<weatherbean> cb = (ArrayList<weatherbean>) request.getAttribute("cbean");
		
			out.print("<ul style=\"color:white\">"); //can I do in CSS?
			try {
				for(int i = cb.size()-1; i >= 0; i--) {
					out.print("<li>" + cb.get(i) + "</li>");
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			out.print("</ul>");
		%>
	</div>

	

</body>
</html>