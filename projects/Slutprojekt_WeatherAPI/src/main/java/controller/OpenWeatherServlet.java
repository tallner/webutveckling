package controller;

import java.io.IOException;
import java.util.ArrayList;

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
 * Servlet implementation class apiservlet
 */
@WebServlet("/OpenWeatherServlet")
public class OpenWeatherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OpenWeatherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String cityStr = request.getParameter("city");
		String countryStr = request.getParameter("country");
		weatherbean wb = new weatherbean(cityStr, countryStr);
//		ArrayList<weatherbean> wb = new ArrayList<weatherbean>();
		
		System.out.println(cityStr+" in "+countryStr + wb);

		WeatherDataParser.getWeather(wb);

		//check if acceptcookie is created
		String cookiesAccepted = "no";
		try {
			Cookie ck[] = request.getCookies();
			if (ck[0].getName().isEmpty()==false){
				for(int i = 0 ; i < request.getCookies().length ; i++){
					if (ck[i].getName().equals("cookiesaccepted"))
						cookiesAccepted = ck[i].getValue();
				}
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		// check if cookies are accepted
		if (cookiesAccepted.equals("yes")) {
				Cookie ck = new Cookie(countryStr+"_"+cityStr, wb.getTemperature());// creating cookie object				
				ck.setMaxAge(3600); // set how long the cookie lasts, seconds
				response.addCookie(ck);// adding cookie in the response
		}
		
		
		request.setAttribute("wbean", wb);

		RequestDispatcher rd = request.getRequestDispatcher("userWeatherPage.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
