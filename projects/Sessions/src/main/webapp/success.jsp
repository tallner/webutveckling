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
//check if there is a session 

//hur kan jag forcera fram ett error?
if (session.getAttribute("mySession") == null) {

	//not the samething
	//response.sendRedirect("SessionRemoveServlet");

	
	out.print("<h1>error</h1>");
//	RequestDispatcher rd = request.getRequestDispatcher("SessionRemoveServlet");
//	rd.forward(request, response);
} else {

	// if there is a session , then all is well  


	out.print("<h1>Welcome You are in a session</h1>");
	
	String contentSession = (String) session.getAttribute("mySession");
	out.print(contentSession + "<br>");
	out.print(session.getId());

}

%>

</body>
</html>