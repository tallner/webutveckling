<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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