<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>this is actually the cookies page but url says Z jsp:forward used</h1>
<br>
<br>

<h3>Send me back to index with:</h3>

<form method="post">
  	<select name="cookie" >
		<option value="cookiesSentBack">Cookie</option>
	  	<option value="nocookiessentback">No Cookie</option>
	</select>
	<input type="submit" value="Enter">
</form>


<% if(request.getParameter("cookie") != null){
		Cookie cookieOption = new Cookie("cookieName", request.getParameter("cookie"));

    	response.addCookie(cookieOption);
    	response.sendRedirect("index.jsp");
    	}
%>


</body>
</html>