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
		<form action="getPage.jsp" method="get">
			Name with GET: <input name="fname" type="text"> <select	name="stuff">
				<option value="1">1</option>
				<option value="bob">bob</option>
				<option value="something">nothing</option>
				<option value="monkeys">look a monkey</option>
			</select> <input type="submit" value="Submit as get">
		</form>
	</div>
	
	
	<div>
		<form action="postPage.jsp" method="post">
			Name with POST: <input name="fname" type="text"> <select	name="stuff">
				<option value="1">1</option>
				<option value="bob">bob</option>
				<option value="something">nothing</option>
				<option value="monkeys">look a monkey</option>
			</select> <input type="submit" value="Submit as post">
		</form>
	</div>

</body>
</html>