package test1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.regex.Pattern;

public class loginda {
	
	
	   String errors ="";
	   String er="";
	   
	   
	    String urls="jdbc:mysql://den1.mysql6.gear.host:3306/khamdu";
	    String usernames="khamdu";
	    String passwords="Sq1HK_2S_fn0";
	    String sql="select * from newuser where Email=? and Password=?";
	    String ra;
	
	
	
	public boolean check(String email, String password, String cpassword, String answer, String answer1, String phone) throws ClassNotFoundException, SQLException {
		
		
	    Pattern specialCharPattern = Pattern.compile("[^a-z0-9 ]", Pattern.CASE_INSENSITIVE);
	    Pattern UpperCasePattern = Pattern.compile("[A-Z ]");
	    Pattern lowerCasePattern = Pattern.compile("[a-z ]");
	    Pattern digitCasePattern = Pattern.compile("[0-9 ]");

	        
	        
	       

	        
	        
	        if(email.isEmpty()){
	            er +="email field is empty \n";
	        }
	        
	        if (password.isEmpty()){
		        
		                er +="password field is empty \n";
		         
		          
		      }
	        if (cpassword.isEmpty()){
		     
		                er +="password field is empty \n";
		        
		        
		          
		      }
	        
	        
	        if(answer.isEmpty()){
	            er +="Answer1 field is empty \n";
	        }
	        if(answer1.isEmpty()){
	            er +="Answer2 field is empty \n";
	        }
	        if(phone.isEmpty()){
	            er +="phonenumber field is empty \n";
	        }
	        
	      
		      
	        
	        if(!email.contains("@")){
	            er +="invalid email \n";
	        }
	       
	        
	        
	        if(!password.equals(cpassword) ){
	             
	            er +="password field is not matched \n ";
	        
	           
	        }
	        
	      if ( password.length() <8){
	          
	      
	           er +="password length is < than 8 \n";
	        
	     
	          
	      }
	      
	      if (!specialCharPattern.matcher(password).find()){
	          //    Alert alert = new Alert(Alert.AlertType.ERROR);
	            
	        //     alert.setTitle("Invalid Fields");
	        
	        er += "missing special character \n ";
	         
	             //error.setText(errors);
	       }
	       
	       if (!UpperCasePattern.matcher(password).find()){
	          
	             
	                    er +="missing uppercase letter \n";
	         
	             //error.setText(errors);
	          //   return false;
	           
	       }
	       
	       if (!lowerCasePattern.matcher(password).find()){
	          
	              er +="missing lower case letter \n";
	         
	             //error.setText(errors);
	             //return false;
	           
	       }
	       
	       if (!digitCasePattern.matcher(password).find()){
	     
	                 er +="missing numeric digit \n";
	         
	            
	       }

	       Class.forName("com.mysql.jdbc.Driver");
	       
	        Connection connection=DriverManager.getConnection(urls, usernames, passwords);
	        PreparedStatement statement=connection.prepareStatement(sql);
	        statement.setString(1, email);
	        statement.setString(2, password);
	        
	        ResultSet rs=statement.executeQuery();
	        if(rs.next()){
	            
	            er +="username and password already exists \n";
	            
	        }
	        if (er.length()==0){
	            
	            
	            return true;
	                
	            }
	            
	            else{
	                er=er+"";
	                        return false;
	            }
		
		
		
	}
	
	

}
