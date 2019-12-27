package test1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Newaccount
 */
@WebServlet("/Newaccount")
public class Newaccount extends HttpServlet {
	
//String email;
//String password;
//	String cpassword;
//String squestion;
//	String answer;
//String squestion2;
//	String answer2;
//	String phone;
//	String caccount;
	   String errors ="";
	   String er="";
	   
	   
	    String urls="jdbc:mysql://den1.mysql6.gear.host:3306/khamdu";
	    String usernames="khamdu";
	    String passwords="Sq1HK_2S_fn0";
	    String sql="select * from newuser where Email=? and Password=?";
	    String ra;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
		String email=request.getParameter("email");
		
		String password=request.getParameter("password");
		 String cpassword=request.getParameter("cpassword");
		  String squestion=request.getParameter("squestion");
		  String answer=request.getParameter("answer");
		String squestion2=request.getParameter("squestion2");
		String  answer2=request.getParameter("answer2");
		 String phone=request.getParameter("phone");

		 
		
	        
	        
	
	          
					try {
						if(check( email,  password,  cpassword,  answer,  answer2,  phone)){
						     Class.forName("com.mysql.jdbc.Driver");
							    
							   Connection DBConn = DriverManager.getConnection("jdbc:mysql://den1.mysql6.gear.host:3306/khamdu?autoReconnect=true&useSSL=false", "khamdu", "Sq1HK_2S_fn0");

							    
							    
							    
							    
							    
							    String query = " insert into newuser (Email, Password, SecretQuestion1,"
							            + "SecretAnswer1, SecretQuestion2, SecretAnswer2,"
							            + "PhoneNumber)"
							+ " values (?,?,?,?,?,?,?)";

     // create the mysql insert preparedstatement
     PreparedStatement preparedStmt = DBConn.prepareStatement(query);
     preparedStmt.setString (1, email);
     preparedStmt.setString (2, password);

     preparedStmt.setString (3, squestion);
     preparedStmt.setString(4, answer);
     
     preparedStmt.setString (5, squestion2);
							   preparedStmt.setString(6, answer2);
							   
							      preparedStmt.setString(7, phone);
							      
							 
							
    

     // execute the preparedstatement
     preparedStmt.execute();
     
							
							//   HttpSession session=request.getSession();
							 
      //      session.setAttribute("invalid", "no");
     
     
 	//RequestDispatcher rd = getServletContext().getRequestDispatcher("/BookSeat.jsp");
	//rd.forward(request, response);
     
     
     response.sendRedirect("LogIn.jsp");
 
							    //    System.out.println("yes");
							        
							        }
						
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
						
							
							
						
						    
							
						

						    
						    
 
						    
						
						        
						        
						    
						
						else{
							
							
					//		request.setAttribute("ku", er);
						//	RequestDispatcher rd = getServletContext().getRequestDispatcher("/NewAccount.jsp");
							//rd.forward(request, response);
							
							
							
							
							
							
					//	 HttpSession session=request.getSession();
						     
						        request.setAttribute("ku", er);
						 	   RequestDispatcher rd = getServletContext().getRequestDispatcher("/NewAccount.jsp");
					    		rd.forward(request, response);
					    		er="";

							
						//	er="";
							
							
							
							
							
							
						        

       }
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	 	       
	}
	 	            
		 
	
	
public boolean check(String email, String password, String cpassword, String answer, String answer1, String phone) throws ClassNotFoundException, SQLException {
		
		
	    Pattern specialCharPattern = Pattern.compile("[^a-z0-9 ]", Pattern.CASE_INSENSITIVE);
	    Pattern UpperCasePattern = Pattern.compile("[A-Z ]");
	    Pattern lowerCasePattern = Pattern.compile("[a-z ]");
	    Pattern digitCasePattern = Pattern.compile("[0-9 ]");

	        
	        
	       

	        
	        
	        //if(email.isEmpty()){
	      //      er +="email field is empty \n";
	    //    }
	        
	     //   if (password.isEmpty()){
		        
		   //             er +="password field is empty" +"<br />";
		         
		          
		     // }
	      //  if (cpassword.isEmpty()){
		     
		      //          er +="password field is empty" +"<br />";
		        
		        
		          
		    //  }
	        
	        
	        //if(answer.isEmpty()){
	          //  er +="Answer1 field is empty" + "<br/>";
	        //}
	        //if(answer1.isEmpty()){
	          //  er +="Answer2 field is empty \n";
	        //}
	        //if(phone.isEmpty()){
	          //  er +="phonenumber field is empty \n";
	        //}
	        
	      
		      
	        
	      //  if(!email.contains("@")){
	        //    er +="invalid email \n";
	        //}
	    
	    if(!email.contains(".")){
	            er +="<ul><li>missing dot in email </li>  </ul>" ;
	        }
	       
	        
	        
	        if(!password.equals(cpassword) ){
	             
	            er +="<ul><li>password field is not matched </li>  </ul>";
	        
	           
	        }
	        
	      if ( password.length() <8){
	          
	          er +="<ul><li> password length is < than 8 </li>  </ul>"  ; 
	   //        er +="password length is < than 8" + "<br/>";
	        
	     
	          
	      }
	      
	      if (!specialCharPattern.matcher(password).find()){
	          //    Alert alert = new Alert(Alert.AlertType.ERROR);
	            
	        //     alert.setTitle("Invalid Fields");
	        
	        er += "<ul><li>missing special character in password  </li>  </ul>" ;
	         
	             //error.setText(errors);
	       }
	       
	       if (!UpperCasePattern.matcher(password).find()){
	          
	             
	                    er +="<ul><li>missing uppercase letter in password  </li>  </ul>" ;
	         
	             //error.setText(errors);
	          //   return false;
	           
	       }
	       
	       if (!lowerCasePattern.matcher(password).find()){
	          
	              er +="<ul><li>missing lower case letter in password  </li>  </ul>" ;
	         
	             //error.setText(errors);
	             //return false;
	           
	       }
	       
	       
	       if (lowerCasePattern.matcher(phone).find()){
	          
	              er +="<ul><li>phonenumber must not contain any alphabet letter  </li>  </ul>" ;
	         
	             //error.setText(errors);
	             //return false;
	           
	       }
	       
	       if (UpperCasePattern.matcher(phone).find()){
		          
	              er +="<ul><li>phonenumber must not contain any alphabet letter  </li>  </ul>" ;
	         
	             //error.setText(errors);
	             //return false;
	           
	       }
	       
	       
	       
	       
	       if (!digitCasePattern.matcher(password).find()){
	     
	                 er +="<ul><li>missing numeric digit in password  </li>  </ul>";
	         
	            
	       }
	       
	       if (!digitCasePattern.matcher(phone).find()){
	  	     
               er +="<ul><li>Phonenumber must be numeric  </li>  </ul>" ;
       
          
     }

	       Class.forName("com.mysql.jdbc.Driver");
	       
	        Connection connection=DriverManager.getConnection(urls, usernames, passwords);
	        PreparedStatement statement=connection.prepareStatement(sql);
	        statement.setString(1, email);
	        statement.setString(2, password);
	        
	        ResultSet rs=statement.executeQuery();
	        if(rs.next()){
	            
	            er +="<ul><li>username and password already exists  </li>  </ul>" ;
	            
	        }
	        if (er.length()==0){
	            
	            
	            return true;
	                
	            }
	            
	            else{
	            er+="";
	                        return false;
	            }
		
		
		
	}
	 	            
	 	            
	 	            
	 	            
	 	            
	 	        

	 	          
	             }
	 	            
	 	            
	 	            
		 
	 	            
	 	            
	 	          
	 		 
	 		 
	 		 
	
	
	
	
	
	
	
	
	
	
	


	           
	         
	        
	    
	
	
	
	

	
	    
	
	
	
	
	


