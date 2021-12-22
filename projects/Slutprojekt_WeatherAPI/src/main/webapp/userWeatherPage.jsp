<%@page import="model.weatherbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="model.weatherbean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Weather</title>
</head>
<body>

	<%
	weatherbean wb = (weatherbean) request.getAttribute("wbean");
	%>

	<header>
		<%@ include file="header.jsp"%>
	</header>

	<div class="search-location">
		<%@ include file="WEB-INF/weatherForm.html"%>

		<div class="text-class">
			<%
			System.out.println(wb.getCityStr());
			out.print(wb.getCityStr().toUpperCase() + " " + wb.getTemperature() + "°C");
			%>

		</div>

	</div>

	<div class="last-locations">

		<%
			out.print("<ol>");
			try {
				Cookie ck[] = request.getCookies();
				if (ck[0].getName().isEmpty() == false) {
					for (int i = 0; i < request.getCookies().length; i++) {
						if ((!ck[i].getName().equals("JSESSIONID"))&&(!ck[i].getName().equals("cookiesaccepted")))
							out.print("<li>" + ck[i].getName() + " " + ck[i].getValue() + "</li>");
					}
				}
	
			} catch (Exception e) {
				System.out.println(e);
			}
			out.print("</ol>");
		%>

	</div>

	<footer>
		<%@ include file="footer.jsp"%>
	</footer>

</body>
</html>