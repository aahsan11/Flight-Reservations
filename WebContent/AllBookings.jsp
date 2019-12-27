<%-- 
    Document   : CurrentBookings
    Created on : Sep 7, 2019, 5:59:09 PM
    Author     : pak1p
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Bookings</title>
        
      
          <link rel="stylesheet" href="css/bootstrap.min.css">
  
        <link rel="stylesheet" href="css/style.css">
        
        
    </head>
    <body style="background-color:white;">
     <%
     response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");//http 1.1
     response.setHeader("Pragma", "no-cache"); //http 1.0
     response.setHeader("Expires", "0");
     
     
if(session.getAttribute("ids")==null){
	
	response.sendRedirect("LogIn.jsp");
}

%>
    

      <header>
           
        <div id="header">
          
        <nav class="navbar navbar-expand-md navbar-light navbar-expand-md " >
         
            
            <a class="navbar-brand" href="index.jsp"> AHSAN AIRLINE
           
               <img src="goldenlogoahsan.png" alt="logo">
           
           </a>
                
              <button data-toggle="collapse" data-target="#navbarToggler" type="button"
       class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>
         <!--so as soon i enter below small size icon appear-->
       <!--this bootom line is for data-target-->
       <div class="collapse navbar-collapse" id="navbarToggler">
            
            
            
            
            
            <ul class="navbar-nav">
               
                
             
                
                    <li class="nav-item dropdown">
            <!--this anchortag will now play a role of the button
            u can see in the website what i m talking about-->
            <a class="nav-link  active dropdown-toggle" data-toggle="dropdown"  role="button"
            href="#">Bookings</a>
            <div class="dropdown-menu">
              <a class="dropdown-item active" href="AllBookings.jsp">All Bookings</a>
              <a class="dropdown-item" href="PreviousBookings.jsp">Previous Bookings</a>
                <a class="dropdown-item " href="CurrentBookings.jsp">Current Bookings</a>
                
             

            </div>
        </li>
                
                
                
                <li class="nav-item">
                    <a class="nav-link "  href="BookFlight.jsp">Book Flight</a>
                </li>
                <li class="nav-item">
              <a class="nav-link"  href="Logout">Logout</a>
              
                </li>
                
                
            </ul>
           
                    
               
       </div>    
                
                
                
            </nav>
        </div>
            
        
        </header>
        











        
        
        <section>
            
<div class="tables mt-5 allbookingtables">

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Airline Name</b></td>
<td><b>Departure Date</b></td>
<td><b>Departure Time</b></td>
<td><b>Departure Airport</b></td>
<td><b>Total Time</b></td>
<td><b>Arrival Time</b></td>
<td><b>Arrival Airport</b></td>
<td><b>Seat</b></td>
<td><b>Status</b></td>
</tr>



<%

 
    
    
    
    String ids;
    
    
    
    
    try {
    	
    	Connection connection = null;
    	Statement statement = null;
    	ResultSet resultSet = null;
    	
    	   ids=(String)session.getAttribute("ids");
    	  System.out.println("this is current ids"+ids);

     //   String connectionURL = "jdbc:mysql://host/db";
      
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        connection = DriverManager.getConnection("jdbc:mysql://den1.mysql6.gear.host:3306/khamdu", "khamdu", "Sq1HK_2S_fn0");
        if(!connection.isClosed())
        	
        	
  
        	statement=connection.createStatement();
      
 
   
  resultSet = statement.executeQuery   ("SELECT * FROM travel WHERE ids=" + "'" + ids + "'");


 
  
  
//resultSet = statement.executeQuery("SELECT travel.AirlineName,travel.DepDate, travel.DepTime, travel.Depairport, travel.TotalTime,travel.ArrTime, travel.ArrAirport, travel.SeatNumber  FROM travel  WHERE travel.DepDate >= curdate() AND travel.ids=" +"'" + ids + "'" 
  //         + "AND travel.id=newuser.ID" );
        while(resultSet.next()){

%>

<tr bgcolor="#DEB887">

<td><%=resultSet.getString("AirlineName") %></td>
<td><%=resultSet.getString("DepDate") %></td>
<td><%=resultSet.getString("DepTime") %></td>
<td><%=resultSet.getString("Depairport") %></td>
<td><%=resultSet.getString("TotalTime") %></td>

<td><%=resultSet.getString("ArrTime") %></td>
<td><%=resultSet.getString("ArrAirport") %></td>

<td><%=resultSet.getString("SeatNumber") %></td>

<td><%=resultSet.getString("Status") %></td>

</tr>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

            
  </div>          
            
        </section>
        
       
        <footer style="margin-bottom:0px; margin-top:4px; padding-top:3%; padding-bottom:4px; border-top:2px solid black;">
            <div class="container-fluid" style="background-color:white;">
               
               
                    
                    <div class="row">
                     <div class="col-12 align-content-center">
                        <h6 class="pb-1 mb-0">Ahsan Airline 2019 © All Rights Reserved.</h6>
                     </div>
                        
                    </div>
                    
                    <div class="row">
                      <div class="col-12 align-content-center">
                          <p class="pt-0 mt-0"> <i> Web-site designed by Muhammad Ahsan</i></p>
                      
                        
                    </div>
                    
               
                   
                </div>
                
                   <div class="row">
                      <div class="col-12 align-content-center">
                          <input type="image"  name="flys"class="img-fluid" src="goldenlogoahsan.png" class="    "   />
                      
                        
                    </div>
                    
               
                   
                </div>
                
                
                  <div class="row">
                      <div class="col-12 align-content-center">
                    <h6 class=" pb-0 mb-0 ">  <span>Ahsan Airline</span></h6>
                      
                        
                    </div>
                    
               
                   
                </div>
              
                
                      <div class="row">
                      <div class="col-12 align-content-center">
                      <p style="font-size:7px;" class=" m-0 p-0 pt-1">World Best Airline in 2011, 2012,2013;</p>
                      
                        
                    </div>
                    
                    </div>
                
                     <div class="row">
                      <div class="col-12 align-content-center">
                      <p style="font-size:7px;" class=" m-0 p-0">2016 and 2019</p>
                      
                        
                    </div>
                    
               
                   
                </div>
                
                
                
                
            </div>
            
            
            
            
            
        </footer>
        
        
       
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </body>
</html>
