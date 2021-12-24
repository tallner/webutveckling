package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Optional;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.WeatherDataParser;
import model.weatherbean;

/**
 * Servlet implementation class cookieCreator
 */
@WebServlet("/CookieAccept")
public class CookieAccept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CookieAccept() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {

			String n = request.getParameter("acceptcookies");
			Cookie ck = new Cookie("cookiesaccepted", n);// creating cookie object
			String nextPage = "";
			
			
			if (n.equals("no")){
				Cookie removeCookies[] = request.getCookies();
				nextPage = "index.jsp";
				for(int i = 0 ; i < request.getCookies().length ; i++){
					removeCookies[i].setMaxAge(0);
					response.addCookie(removeCookies[i]);// adding cookie in the response
				}
			}else {
				ck.setMaxAge(3600); // set how long the cookie lasts, seconds
				response.addCookie(ck);// adding cookie in the response
				nextPage = "userWeatherPage.jsp";
			}
			
			//send back the page where the cookiesetting was made
			//String referer = request.getHeader("Referer");
			//response.sendRedirect(referer);
			response.sendRedirect(nextPage);
			


		} catch (Exception e) {
			System.out.println("Error: " + e);
		}
	}
	
	public static boolean cookiesAccepted(Cookie ck[], int nrCookies) {
		

		//check if acceptcookie is created
		boolean cookiesAccepted = false;
		try {
			if (ck[0].getName().isEmpty()==false){
				for(int i = 0 ; i < nrCookies ; i++){
					if (ck[i].getName().equals("cookiesaccepted"))
						cookiesAccepted = ck[i].getValue().equals("yes");
				}
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return cookiesAccepted;
		
	}

}