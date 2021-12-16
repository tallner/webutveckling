<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.UserBean"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div>
		<form action="<%=request.getContextPath()%>/SessionRemoveServlet" method="post">
			<input type="submit" value="Log out">
		</form>
	</div>
	

<%
	if (session.getAttribute("mySession") == null) {
		
		out.print("<h1>error</h1>");
	} else {

		UserBean userBean = (UserBean) request.getSession().getAttribute("mySession");
		int sessionTimer = 25;

		out.print("<h1>Welcome mr " +userBean.getUser()+ "!</h1>");
%>	

<div>
		<form action="<%=request.getContextPath()%>/UserInfoServlet" method="post">
			  <label for="food">Enter your favorite food:</label>
			  <input type="text" name="food">
			  <input type="submit" value="Enter">
		</form>
	</div>

<%		
		if (userBean.getUserInput(userBean.getUser()) != "" )
			out.println("<h2>Your favorite food is " + userBean.getUserInput(userBean.getUser()) + "!</h2>");
		
		out.print("<br>");
		out.print("<br>");

		out.print("<img src=\"img/" + userBean.getImgName() + "\"" + " width=\"250" + "\">");
		out.print("<br>");
		out.print("Your session ID is: "+session.getId() + " and it expires in " + sessionTimer + " seconds");

		//Hur använda timeout?
		session.setMaxInactiveInterval(sessionTimer); // session timeout in sec
		/***** Once The Time Out Is Reached. This Line Will Automatically Refresh The Page *****/
        response.setHeader("Refresh", sessionTimer + "; URL=timeout.jsp");
		
	}
%>

</body>
</html>