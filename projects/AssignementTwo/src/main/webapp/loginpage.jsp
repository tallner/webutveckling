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

//check if there is a session 
	
	//@CT hur testa session=NULL? inkognito?
	if (session.getAttribute("mySession") == null) {

		//not the samething
		//response.sendRedirect("SessionRemoveServlet");

		
		out.print("<h1>error</h1>");
	//	RequestDispatcher rd = request.getRequestDispatcher("SessionRemoveServlet");
	//	rd.forward(request, response);
	} else {

		// if there is a session , then all is well  

	
		out.print("<h1>Welcome You are in a session</h1>");
		
		UserBean userBean=(UserBean)request.getAttribute("userbean");

		out.println("<h1>Welcome " + userBean.getUser() + "!</h1>");

		out.print("<img src=\"img/" + userBean.getImgName() + "\">");
		
		int sessionTimer = 25;

		//@CT Hur använda timeout?
		session.setMaxInactiveInterval(sessionTimer); // session timeout in sec
		/***** Once The Time Out Is Reached. This Line Will Automatically Refresh The Page *****/
        response.setHeader("Refresh", sessionTimer + "; URL=timeout.jsp");
		
		

		// name add data into the session
		out.print( (String) session.getAttribute("mySession"));
		out.print("<br>");
		out.print(session.getId());

		
	}















%>

</body>
</html>