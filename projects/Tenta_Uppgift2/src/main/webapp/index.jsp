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
		<form action="createListServlet" method="get">
			Print: <input name="length" type="text">
			number of
			<select name="listselect">
				<option value="random values">Random values</option>
				<option value="empty pictures">Empty pictures</option>
			</select> 
			<input type="submit" value="Go!">
		</form>
	</div>

</body>
</html>