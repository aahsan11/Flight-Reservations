package test1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Bookingvalidation
 */
@WebServlet("/Bookingvalidation")
public class Bookingvalidation extends HttpServlet {
	
	
	   
    String urls="jdbc:mysql://den1.mysql6.gear.host:3306/khamdu";
    String usernames="khamdu";
    String passwords="Sq1HK_2S_fn0";
    String sql="select * from newuser where Email=? and Password=?";
    String ra;
    String depcity;
    String descity;
    String dat;
    String ids;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String airlinename=request.getParameter("airlinename");
		 
		
		 String depcode=request.getParameter("depcode");
		 String depmonth=request.getParameter("depmonth");
		 String depday=request.getParameter("depday");
		 String depdate=request.getParameter("depdate");
		 String deptime=request.getParameter("deptime");
		 String artime=request.getParameter("arrtime");
		 
		 String firstname=request.getParameter("firstname");
		 
		 String descode=request.getParameter("descode");
		// String firstname=request.getParameter("firsname");
		 //String lastname=request.getParameter("lastname");
	//	 String dob=request.getParameter("dob");
		
		 String date=request.getParameter("hid1");
		 String seat=request.getParameter("selectedseat");
		 String finaltotals=request.getParameter("finaltotals");
		   String finaltotal=finaltotals.replace("$", "");
		 
		 String totaltime=request.getParameter("totaltime");
		
		 
		 
		 
		 String salt="/#$%^&/+-_@~abcdefghijklmnipqrstuvwxyz1234567890";
         StringBuilder salts=new StringBuilder();
         for (int i=0; i<14;i++){
         Random rnd= new Random();
         System.out.println("salts cu"+salts);
     
             int index=(int) (rnd.nextFloat()*salt.length());
             salts.append(salt.charAt(index));
             System.out.println(index+"ind");
            
             String str=salts.toString();
           //  System.out.println(str+ "       number");
         }
          System.out.println(salts);
          
          
          
          
          
          
          
          StringBuilder strings= new StringBuilder();
          String items="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
          
        
          
          for(int i=0; i<3; i++) {
        	  Random random=new Random();
              int randomnumber=(int) (random.nextFloat()*items.length());
        	 
        	  strings.append(items.charAt(randomnumber));
        	  
          }
          
          
          
		 
	
		 HttpSession sessionsa = request.getSession();
		  depcity = (String) sessionsa.getAttribute("depcity");
		  
		  
		  
			 HttpSession sessions1 = request.getSession();
			  descity = (String) sessions1.getAttribute("descity");
		
			  
			  
				 HttpSession sessions2 = request.getSession();
				  dat = (String) sessions2.getAttribute("dat");
			
				  
					 HttpSession sessions3 = request.getSession();
					  ids = (String) sessions3.getAttribute("ids");
				
		
		 
		 
		 try {
		 
		 
		 
		 
		 
		 Class.forName("com.mysql.jdbc.Driver");
		    
		   Connection DBConn = DriverManager.getConnection("jdbc:mysql://den1.mysql6.gear.host:3306/khamdu?autoReconnect=true&useSSL=false", "khamdu", "Sq1HK_2S_fn0");

		    
		    
		    
		    
		    
		    String query = " insert into travel (AirlineName, DepDate,"
		            + "DepTime, Depairport, TotalTime, ArrTime, ArrAirport,Paid,SeatNumber,ids,Airline" 
		            + ")"
		+ " values (?, ?,?,?,?,?,?,?,?,?,?)";

// create the mysql insert preparedstatement
PreparedStatement preparedStmt = DBConn.prepareStatement(query);
preparedStmt.setString (1, airlinename+"-"+strings);
preparedStmt.setString (2, date);

//preparedStmt.setString (3, dat);
preparedStmt.setString(3, deptime);

preparedStmt.setString (4, depcity);
		   preparedStmt.setString(5, totaltime);
		   
		      preparedStmt.setString(6, artime);
		      
		      
		      
		      preparedStmt.setString(7, descity);
		      preparedStmt.setString(8, finaltotal);
		      
		      preparedStmt.setString(9, seat);
		      
		      preparedStmt.setString(10, ids);
		      
		      preparedStmt.setString(11, airlinename);
		      
		      
		      request.setAttribute("depday", depday);
		      request.setAttribute("depdate", depdate);
		      request.setAttribute("depmonth", depmonth);
		      request.setAttribute("confirmationno",salts );
		      request.setAttribute("airlinename", airlinename+" "+strings);
		      request.setAttribute("firstname", firstname);
		
		    
		      
		      RequestDispatcher rd = getServletContext().getRequestDispatcher("/ConfirmationPage.jsp");
	    		rd.forward(request, response);
		 
		


// execute the preparedstatement
preparedStmt.execute();
	
	
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	}

}
