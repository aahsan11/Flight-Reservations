package test1;

import java.io.IOException;
import java.sql.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Pendingbookings
 */
@WebServlet("/Pendingbookings")
public class Pendingbookings extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String s=request.getParameter("selected");
		
		//System.out.println(s+"is is selected");
		
		
		String hobbise [] = request.getParameterValues("selected") ;
		   for(String value : hobbise)
		     {
		    System.out.println("values  "+value);
		    } 
		   
		   
		   
		 
		    	
		    	Connection connection = null;
		    	Statement statement = null;
		    	ResultSet resultSet = null;
		    	
		    	//   ids=(String)session.getAttribute("ids");
		    	  //System.out.println("this is current ids"+ids);

		     //   String connectionURL = "jdbc:mysql://host/db";
		    	
		    	
		    	try {
		      
		        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		        connection = DriverManager.getConnection("jdbc:mysql://den1.mysql6.gear.host:3306/khamdu", "khamdu", "Sq1HK_2S_fn0");
		   //     Array array = connection.createArrayOf("STRING", hobbise);
		   
		        
		        for (int i=0; i<hobbise.length; i++) {
		        	
		        	
		        	
		        	   PreparedStatement psc = connection.prepareStatement("UPDATE travel SET Status = ? WHERE id=? ");
		        	   
		        	   psc.setString(1, "Confirmed");
		        	
			               psc.setInt(2, Integer.parseInt(hobbise[i]));
			              
		        	   
		        	    
			 		   
			                
			                
		        	  
		        	   
		    
		   	  	 psc.executeUpdate();
		        	 //  System.out.println(results +"res");
		        	
		       }
		   
		     //   PreparedStatement psc = connection.prepareStatement("UPDATE travel"
		       //         + "SET status = ? "
		         //       + "WHERE id=? ");
		        
		        
		            
		          //      psc.setString(1, "approved");
		            //    psc.setArray(2, array);
		   
		   
		    	
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
		   
		   
		    	   RequestDispatcher rd = getServletContext().getRequestDispatcher("/PendingBookings.jsp");
		   	  		rd.forward(request, response);
		        	
	
	}
	

}
