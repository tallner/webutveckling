package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.imgBean;

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
		// fetch params from user inputs
		String toShow = request.getParameter("show");

		//add selected value to the model/bean
	    imgBean imgBean=new imgBean();  //create a new instance of the image model
	    imgBean.setShow(toShow); // set the user-selected value to the bean
        
        request.setAttribute("imgBean",imgBean);//anv�nds olika attribut f�r olika requests?
		
        // skillnad mot sendRedirect f�rutom att browsern �r inblandad i sendRedirect?
        // sendDirect inneh�ller all info i URL och h�r l�gger man det i request?
		RequestDispatcher rd=request.getRequestDispatcher("showimg.jsp");
        rd.forward(request, response);
        // hur byggs URL upp med denna? hur h�nger det ihop?
        
	}

}
