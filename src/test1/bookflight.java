package test1;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class bookflight
 */
@WebServlet("/bookflight")
public class bookflight extends HttpServlet {

	String error="";
	LocalDate ld ;
	String errors="";
	int dep;
	
	String departur;
	int deplength;
	int des;
	String destinatio;
	int deslength;
	Calendar c;
	SimpleDateFormat df;
	Date dates;
	int dayofweek;
	String day;
	String date;
	String s;
	String dateinput;
	
	LocalDate today;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   date=request.getParameter("date");
		  
//		  LocalDate la=LocalDate.now();
//		  DateTimeFormatter df=DateTimeFormatter.ofPattern("dd/MM/YYYY");
//		  LocalDate lg=LocalDate.parse(la,df);
		
		   
		   try {
		   DateTimeFormatter f = DateTimeFormatter.ofPattern( "yyyy-MM-dd" );
			   dateinput=request.getParameter("date");
		    ld = LocalDate.parse( dateinput , f );
		    today = LocalDate.now( );
		   
		   if( ld.isBefore( today ) ) {  // Before today.
			   error+="<ul><li>Please select current or future date</li> </ul>";
			}
		   
		   
		   }
		   catch (Exception e) {   error+="<ul><li>Please enter date in this \"yyyy-MM-dd\" format </li> </ul>";}

		String departure=request.getParameter("departure");
		String ahsan=request.getParameter("departure");
		 String destination=request.getParameter("destination");
		 String ahsan1=request.getParameter("destination");
		 
		  String people=request.getParameter("people");
		  String classs=request.getParameter("class");
		  
		  String depcity=request.getParameter("departure");
		  
	
		  
		  
		  
		  
		  HttpSession session = request.getSession();
		  session.setAttribute("depcity", depcity);
		  
		  
		  HttpSession session2 = request.getSession();
		  session.setAttribute("dep", departure);
		  
		  
		  HttpSession sessions = request.getSession();
		  sessions.setAttribute("descity", destination);
		  
		//  if(DummyDB.countries.contains(destination))
		  
		  
		//  DummyDB.getDayOfWeek(date);
		  
		  
		  
		   dep=departure.length()-3;
		   
		    deplength=dep+3;
		  
		   
		
		    departur=(String) departure.subSequence(dep, deplength);
		 
		//  String depar=departure.substring(departue.length-3);
		    
		    
		    
		    
		    des=destination.length()-3;
			   
		    deslength=des+3;
		  
		   
		
		    destinatio=(String) destination.subSequence(des, deslength);
		  
		  
		  DummyDB db=new DummyDB();
		  
		  
		  
		  
			if  (db.checkdeparture(departure)){
				
				
				System.out.println("this is what");
			}
		
			else {
				error+="<ul><li>Please select departure from list</li> </ul>";
				
			}
			
			
	if  (db.checkdestination(destination)){
				
				
				
			}
		
			else {
				error+="<ul><li>Please select destination from list</li> </ul>";
				
			}
			
		
			
		
		  
	
	
	 if(departure.equals(destination)) {
		  error+="<ul><li>Departure and destination airports are same</li> </ul>";
	  }
	
	if(error.length()==0 && db.checkdeparture(departure) ) {
		String jo= "ak/ na  -tk j";
		// response.sendRedirect("FlightDetails.jsp");
		 request.setAttribute("departure", departure);
		 request.setAttribute("destination", destination);
		 request.setAttribute("ahsan", ahsan);
		 request.setAttribute("ahsan1", ahsan1);
	//	 request.setAttribute("date", date);
		 request.setAttribute("dcode", departur);
		 request.setAttribute("decode", destinatio);
		 request.setAttribute("dn", jo);
		 request.setAttribute("day",  DummyDB.getDayOfWeek(date));
		 request.setAttribute("month",  DummyDB.getMonth(date));
		 request.setAttribute("dat",  DummyDB.getDay(date));
		 
		 request.setAttribute("dateinput",  dateinput);
		 
		 
		 System.out.println(departur+"outwhatman");
	 	   RequestDispatcher rd = getServletContext().getRequestDispatcher("/Flight.jsp");
	  		rd.forward(request, response);
	  		//System.out.println("yes buddy"+dept);
	}
	else {
	//	String errors="plz select departure from list";
	//	String errorss="plz select destination from list";
	//	System.out.println(g+"outwhat");
		 request.setAttribute("kun", error);
		// request.setAttribute("de", errors);
		// request.setAttribute("derror", errorss);
		// request.setAttribute("kt", date);
	 	   RequestDispatcher rd = getServletContext().getRequestDispatcher("/BookFlight.jsp");
  		rd.forward(request, response);
  		error="";
  		errors="";
  	//	errorss="";
  		
	}
	}

}
