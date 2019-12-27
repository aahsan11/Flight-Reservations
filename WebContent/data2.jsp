<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");//http 1.1
response.setHeader("Pragma", "no-cache"); //http 1.0
response.setHeader("Expires", "0"); //proxy

if(session.getAttribute("ids")==null){
	
	response.sendRedirect("LogIn.jsp");
}

%>

<%
    
String s=request.getParameter("val");



if(s==null || s.trim().equals("")){
    out.print("please enter id");
}
else{
   // int id=Integer.parseInt(s);
    //out.print(id);
    try{
        Class.forName("com.mysql.jdbc.Driver");
         Connection connection=DriverManager.getConnection("jdbc:mysql://den1.mysql6.gear.host:3306/khamdu", "khamdu", "Sq1HK_2S_fn0");
     //   PreparedStatement statement=connection.prepareStatement("select Type from newuser where Email=? and Password=? and AccountType=?");
        
        PreparedStatement statement=connection.prepareStatement("select * from newuser where Email=?");
        statement.setString(1,s);
     
        ResultSet rs= statement.executeQuery();
        if(rs.next()){
            
            
        
            out.println("Already Subscribed");
        }
        
        else{
        	
        	
        	 String query = "insert into newuser(Email)"
        				+ " values(?)";
        	        	
        	        	 PreparedStatement preparedStmt = connection.prepareStatement(query);
        	             preparedStmt.setString (1, s);
        	             
        	             preparedStmt.execute();
        	
        	
        	             out.println("Successfully Subscribed");
        }
        
        
        
        connection.close();
    }
    catch(Exception e){e.printStackTrace();}
}



    %>