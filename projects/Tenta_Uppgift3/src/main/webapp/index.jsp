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
		<form action="postpwservlet" method="post">
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

</body>
</html>