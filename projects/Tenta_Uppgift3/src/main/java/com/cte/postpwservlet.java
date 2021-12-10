package com.cte;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class postpwservlet
 */
@WebServlet("/postpwservlet")
public class postpwservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public postpwservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String pword = request.getParameter("pword");
		String uname = request.getParameter("uname");
		int loginLevel = Integer.parseInt(request.getParameter("usertype"));
		
		String loginmessage = "";
		
		
		if ((uname.equals("christian")) && (pword.equals("admin")) && (loginLevel == 3)) 
		{
			response.sendRedirect("admin.jsp");

		}
		else if ((uname.equals("marcus")) && (pword.equals("service")) && (loginLevel == 2))
		{
			response.sendRedirect("service.jsp");
			
		} 
		else if ((uname.equals("john"))	&& (pword.equals("user")) && (loginLevel == 1))
		{
			response.sendRedirect("user.jsp");
		} 
		else
		{
			loginmessage = "<h2>Login failed, try again!</h2>";;
		}
		out.print(loginmessage);

		out.close();
	
	}

}
