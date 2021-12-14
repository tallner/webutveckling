package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShowController
 */
@WebServlet("/ShowController")
public class ShowController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// this is the CONTROLLER of the application
		// get inputs from the index.jsp(the user, client, browser), 
		// gets the image name from the imgHandler(probably the MODEL in this case??),
		// and sends the information to the showimg.jsp(the VIEW in this case?)
		
		//get selected value
		String toShow = request.getParameter("show"); 
		
		//get img filename from the model
		String imgFile = imgHandler.getImgName(toShow);
		
		//add params to the response to the view
		String redirectUrl = "showimg.jsp" + "?show=" + toShow + "&img=" + imgFile;
		response.sendRedirect(redirectUrl);
		
		
		
	}

}
