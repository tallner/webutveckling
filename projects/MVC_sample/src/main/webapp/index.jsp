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
		<form action="<%=request.getContextPath()%>/ShowController"//gets the relative path in the context, eg /MVC_Sample in this case
			method="get">
			Show me: <select name="show">
				<option disabled selected value>-- select an image --</option>
				<option value="dog">a dog</option>
				<option value="cat">a cat</option>
				<option value="swallow">an unladen swallow</option>
			</select> <input type="submit" value="Submit as post">
		</form>
	</div>

</body>
</html>