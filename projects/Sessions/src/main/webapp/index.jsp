<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- A normal login: GOTO SessionServlet POST -->
	<form action="<%=request.getContextPath()%>/SessionServlet" method="post">
		<input type="submit" value="Create a session" />
	</form>
	


</body>
</html>