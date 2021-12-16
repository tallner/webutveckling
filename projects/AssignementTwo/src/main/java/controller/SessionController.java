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
@WebServlet("/SessionController")
public class SessionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SessionController() {
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
		
		//Maybe getSession() should be done only if pw correct, now a session is created everytime this servlet is called
		HttpSession session = request.getSession();
		RequestDispatcher rd = request.getRequestDispatcher("userpage.jsp");
		UserBean userBean = new UserBean();
		String pword = request.getParameter("pword");
		String uname = request.getParameter("uname");
		
		// check if session already exists		
		if (request.getSession().getAttribute("mySession") != null) 
			userBean = (UserBean) request.getSession().getAttribute("mySession");
		// if no session, check password
		else if (pwCheck(uname, pword)) {
			userBean.setUser(uname);
			session.setAttribute("mySession", userBean);
		}
		
		rd.forward(request, response);
	}
	
	protected boolean pwCheck(String uname, String pword) {
		//password validation
		return
				(uname.equals("cat") && (pword.equals("cat"))) ||
				(uname.equals("dog") && (pword.equals("dog"))) ||
				(uname.equals("swallow") && (pword.equals("swallow")))
			;
		
	}

}
