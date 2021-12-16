package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserBean;

/**
 * Servlet implementation class UserInfoServlet
 */
@WebServlet("/UserInfoServlet")
public class UserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("userpage.jsp");
		UserBean userBean = new UserBean();
		
		//get user information from session
		userBean = (UserBean) request.getSession().getAttribute("mySession");
		String user = userBean.getUser();
		
		
		if ((request.getParameter("food") != null) && (request.getParameter("food") != ""))
		{
			userBean.setUserInput(user,request.getParameter("food"));
			System.out.println(userBean.getUserInput(user));
		}
		
		rd.forward(request, response);
	}

}
