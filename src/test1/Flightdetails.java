package test1;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Flightdetails
 */
@WebServlet("/Flightdetails")
public class Flightdetails extends HttpServlet {

  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String day=request.getParameter("day");
		 String mo=request.getParameter("months1");
		 String dcode=request.getParameter("dcode");
		 String decode=request.getParameter("decode");
		 request.setAttribute("day", day);
		 request.setAttribute("dcode", dcode);
		 request.setAttribute("decode", decode);
		 request.setAttribute("mo", mo);
		  RequestDispatcher rd = getServletContext().getRequestDispatcher("/MoreFlightDetails.jsp");
	  		rd.forward(request, response);
	}



}
