<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Index Page </title>
</head>
<body>

<%@ include file = "header.jsp" %>

<h1>Index</h1>

<form action="x.jsp" >
	Name: <input type="text" name="fname">
  	<select name="userRoll" >
		<option value="regular user">Operator</option>
	  	<option value="service staff">Service</option>
	  	<option value="system administrator">Administrator</option>
	</select>
	<input type="submit" value="Enter">
</form>

<!-- This is a signel line expression tag  -->

<%= "Hello" %>  




Current Time: <%= java.util.Calendar.getInstance().getTime() %>

<%@ include file = "footer.jsp" %>

</body>
</html>