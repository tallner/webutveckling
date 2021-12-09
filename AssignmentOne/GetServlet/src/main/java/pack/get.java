package pack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class get
 */
@WebServlet("/get")
public class get extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public get() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><body>");
		
		
		out.print("<h3> I will print </h3>");
		
		int iterator = Integer.parseInt( request.getParameter("fname"));
		String size = request.getParameter("stuff");
		
		for(int i = 1;i <= iterator; i++) {
			out.print("<img src=\""+ i + ".png\" width="+size+">");
			
//			out.print("<img src=\"https://cataas.com/cat\"");
			
		}
		
		

		
		out.print("</body></html>");
		out.close();
		
	}

	
	

}
