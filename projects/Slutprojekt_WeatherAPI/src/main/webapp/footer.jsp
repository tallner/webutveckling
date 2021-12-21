<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Footer</title>
</head>
<body>

	<!-- <footer>This is the footer in my temperature app</footer> -->

	<form action="CookieAccept" method="post">
		Use cookies? 
		<select name="acceptcookies" class="input-background">
				<option disabled selected value>-- select --</option>
				<option value="yes">Yes</option>
				<option value="no">No</option>
			</select> 
			<input  class="input-background" type="submit" value="Submit">
	</form>

</body>
</html>