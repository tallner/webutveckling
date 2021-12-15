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
	
	<div>
		<form action="<%=request.getContextPath()%>/UserInfoServlet" method="post">
			  <label for="food">What do you like to eat?</label>
			  <input type="text" name="food">
			  <input type="submit" value="Enter">
		</form>
	</div>

<%

	//@CT hur testa session=NULL? inkognito?
	if (session.getAttribute("mySession") == null) {
		
		out.print("<h1>error</h1>");
	//	RequestDispatcher rd = request.getRequestDispatcher("SessionRemoveServlet");
	//	rd.forward(request, response);
	} else {

		// if there is a session , then all is well  

		UserBean userBean = (UserBean) request.getSession().getAttribute("mySession");
		String user = userBean.getUser();

		out.print("<h1>Welcome You are in a session</h1>");
		out.print(userBean.getUser());
		out.print(session.getId());
		
		out.println("<h1>Welcome " + user + "!</h1>");		
		out.println("<h2>Eat " + userBean.getUserInput(userBean.getUser()) + "!</h2>");
		out.print("<img src=\"img/" + userBean.getImgName() + "\">");

		
		int sessionTimer = 2500;

		//@CT Hur använda timeout?
		session.setMaxInactiveInterval(sessionTimer); // session timeout in sec
		/***** Once The Time Out Is Reached. This Line Will Automatically Refresh The Page *****/
        response.setHeader("Refresh", sessionTimer + "; URL=timeout.jsp");
		
	}
%>

</body>
</html>