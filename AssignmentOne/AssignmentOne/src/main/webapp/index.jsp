<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Index Page </title>
<style type="text/css">
        .default-theme
        {
            background-color: white;
            color: black;
        }
        .dark-theme
        {
            background-color: black;
            color: white;
        }
        .pink-theme
        {
            background-color: pink;
            color: blue;
        }
    </style>
</head>

<%! String colorTheme; %>

<%


colorTheme = request.getParameter("Theme");
out.print(colorTheme);

%>

<body class=<%= colorTheme %>>
<!-- <body> -->
<%@ include file = "header.jsp" %>
<%!%>

<h1>Index</h1>

<!-- <form action="x.jsp"> -->
<form>
	Name: <input type="text" name="fname">
  	<select name="userRoll" >
		<option value="regular user">Operator</option>
	  	<option value="service staff">Service</option>
	  	<option value="system administrator">Administrator</option>
	</select>
	<input type="submit" value="Enter">
</form>


<p>Select theme:</p>
<form action="index.jsp">
  <input type="radio" name="Theme" value="default-theme">
  <label for="default">Default</label><br>
  <input type="radio" id="dark" name="Theme" value="dark-theme">
  <label for="dark">Dark</label><br>
  <input type="radio" id="pink" name="Theme" value="pink-theme">
  <label for="pink">Pink</label>
  <input type="submit" name="submit" value="submit">
</form> 


<%

	String userName = request.getParameter("fname") == null ? "defaultUser" : request.getParameter("fname");
	String userRoll = request.getParameter("userRoll") == null ? "operator" : request.getParameter("userRoll");
	

	
	switch (userRoll) {
	case "regular user":  response.sendRedirect("x.jsp?fname="+userName+"&userRoll="+userRoll); 
	         break;
	case "service staff":  response.sendRedirect("y.jsp?fname="+userName+"&userRoll="+userRoll);
    		break;
	case "system administrator":  response.sendRedirect("z.jsp?fname="+userName+"&userRoll="+userRoll);
    		break;
	default: break;
	}  
%>


Current Time: <%= java.util.Calendar.getInstance().getTime() %>

<%@ include file = "footer.jsp" %>

</body>
</html>