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
		<form action="get" method="get">
			Name with GET: <input name="fname" type="text"> 
			<select name="stuff">
				<option value="10">10</option>
				<option value="200">200</option>
			</select> <input type="submit" value="Submit as get">
		</form>
	</div>
	
	
	<div>
		<form action="runpost" method="post">
			Name with POST: <input name="fname" type="text"> 
			<select	name="stuff">
				<option value="1">1</option>
				<option value="2">2</option>
			</select> <input type="submit" value="Submit as post">
		</form>
	</div>

</body>
</html>