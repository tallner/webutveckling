package com.cte;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class postservlet
 */
@WebServlet("/postservlet")
public class postservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public postservlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.print("<html><body>");
		out.print("<h3>Hello Servlet with POST</h3>");

		String pword = request.getParameter("pword");
		String uname = request.getParameter("uname");
		int loginLevel = Integer.parseInt(request.getParameter("usertype"));
		
		String loginresponse = "false";
		
		//out.print(pass);
		if (
				(uname.equals("christian"))
				&& (pword.equals("admin")) 
				&& (loginLevel == 3)
				) 
		{
			out.print("<h3>Welcome in admin</h3>"
					+ "<br/>"
					+ "<div>"
					+ "<form action=\"http://localhost:8080/Tenta/index.jsp?inlogfail=false\" method=\"post\">"
					+ "<input type=\"submit\" value=\"HOME\">"
					+ "</form>"
					+ "</div>");
			

		} else if (
				(uname.equals("daria"))
				&& (pword.equals("service")) 
				&& (loginLevel == 2)
				)
		{
			out.print("<h3>Welcome in service</h3>");
		}  else if (
				(uname.equals("john"))
				&& (pword.equals("user")) 
				&& (loginLevel == 1)
				)
		{
			out.print("<h3>Welcome in user</h3>");
		} else {

			System.out.println("wrond pass");
			out.print("<h3>NOPE</h3>");
			loginresponse = "true";
			response.sendRedirect("index.jsp?inlogfail="+loginresponse);
		}

		// methods works

		out.print("<p>");
//		DoDog(out);
		// have to send the printer with the method of to print HTML over there

		out.print("</p>");

		out.close();
	}

}
