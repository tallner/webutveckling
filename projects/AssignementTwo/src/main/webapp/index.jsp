<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%    

  if (session.getAttribute("mySession") != null) {
    	RequestDispatcher rd = request.getRequestDispatcher("UserController");
    	rd.forward(request, response);// this lands on the GET in the servlet
   }
%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div>
		<form action="<%=request.getContextPath()%>/UserController" method="post">
			Enter name: <input name="uname" type="text" required>
			<br>
			Enter password: <input name="pword" type="password" required> 
			<input type="submit" value="Sign in">
		</form>
	</div>

</body>
</html>