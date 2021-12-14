package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserBean;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Session is a part of the request
		// Session is created when the user visits the website
		HttpSession session = request.getSession();

		String pword = request.getParameter("pword");
		String uname = request.getParameter("uname");

//		String userpage = "";
//		//what page to redirect to
//		if ((uname.equals("cat")) && (pword.equals("cat"))) userpage = "cat.jsp";
//		else if ((uname.equals("dog")) && (pword.equals("dog"))) userpage = "dog.jsp";
//		else if ((uname.equals("swallow"))	&& (pword.equals("swallow"))) userpage = "swallow.png";
//		else userpage = "index.jsp";

		// add selected value to the model/bean
		UserBean userBean = new UserBean(); // create a new instance of the image model
		userBean.setUser(uname); // set the user-selected value to the bean

		request.setAttribute("userbean", userBean);// används olika attribut för olika requests?

		// @CT sätter man timeout här eller i resultatsidan?
		// session.setMaxInactiveInterval(600);
		// session timeout in sec

		// name add data into the session
		// @CT finns nån anledning att använda uname istället för "mySession" som
		// attributnamn?
		session.setAttribute("mySession", "This is " + uname + " session");

		// send it all to the next page
		// skillnad mot sendRedirect förutom att browsern är inblandad i sendRedirect?
		// sendDirect innehåller all info i URL och här lägger man det i request?
		RequestDispatcher rd = request.getRequestDispatcher("loginpage.jsp");
		rd.forward(request, response);
		// hur byggs URL upp med denna? hur hänger det ihop?

	}

}
