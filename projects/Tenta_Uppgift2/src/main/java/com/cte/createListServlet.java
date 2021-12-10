package com.cte;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class createListServlet
 */
@WebServlet("/createListServlet")
public class createListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		int iterator = request.getParameter("length") == "" ? 0 : Integer.parseInt(request.getParameter("length"));		
		String listSelect = ( request.getParameter("listselect"));
		
		out.print("<html><body>");
		
		out.print("<h3> Ordered HTML list of " + listSelect + "</h3>");
		out.print("<ol>");
		
		if ( iterator > 0) {
			
			for(int i = 1;i <= iterator; i++) {
				  
				  if (listSelect.equals("random values")) out.print("<li>" + Math.random() + "</li>");
				  else if(listSelect.equals("empty pictures")) out.print("<li>" + "<img src=\"noimg\"" + "</li>");
				  else out.print("Nothing selected");
				
			}
			out.print("</ol>");		
			out.print("</body></html>");
			out.close();
			
			
		} else {
		
			out.print("Cannot print empty list, please insert a number");
			response.sendRedirect("index.jsp");
		}

	}

}
