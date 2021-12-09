<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div>
		<form action="getservlet" method="get">
			How many dogs do you want? <input name="nrdogs" type="text">
<!-- 			 <select name="stuff"> -->
<!-- 				<option value="10">10</option> -->
<!-- 				<option value="200">200</option> -->
<!-- 			</select>  -->
			<input type="submit" value="Print my dogs!">
		</form>
	</div>

<br>
<br>
<br>
<br>
<br>

	<div>
		<form action="postservlet" method="post">
			Enter name: <input name="uname" type="text">
			<br>
			Enter password: <input name="pword" type="password"> 
			<br>
			Usertype:
			<select name="usertype">
				<option value="1">User</option>
				<option value="2">Service</option>
				<option value="3">Admin</option>
			</select> 
			<br>
			<input type="submit" value="Sign in">
		</form>
	</div>
	<% 
		String loginFailed = request.getParameter("inlogfail") == null ? "false" : request.getParameter("inlogfail");
		if(loginFailed.equals("true"))
		{
			out.print("<h2>Login failed, try again!</h2>");
		} else out.print("");
	%>
	
	

</body>
</html>