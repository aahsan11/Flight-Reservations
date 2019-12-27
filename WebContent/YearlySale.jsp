<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.io.*" %>  
<%@ page import="java.util.*" %>  
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import=" java.time.LocalDate"%>

<%@page import="  java.time.LocalDateTime"%>
<%@page import=" java.time.ZonedDateTime"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0">
<title>Yearly Sale</title>


          <link rel="stylesheet" href="css/bootstrap.min.css">
  
        <link rel="stylesheet" href="css/style.css">
        

<script type="text/javascript" src="https://cdn.zingchart.com/zingchart.min.js"></script>  
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
            <a class="nav-link  dropdown-toggle" data-toggle="dropdown"  role="button"
            href="#">Bookings</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="AdminAllBookings.jsp">All Bookings</a>
              <a class="dropdown-item " href="ConfirmBookings.jsp">Confirmed Bookings</a>
                <a class="dropdown-item " href="PendingBookings.jsp">Pending Bookings</a>
             

            </div>
        </li>
                
                
                        <li class="nav-item dropdown">
            <!--this anchortag will now play a role of the button
            u can see in the website what i m talking about-->
            <a class="nav-link active dropdown-toggle" data-toggle="dropdown"  role="button"
            href="#">Sale</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="AllSales.jsp">All Sales</a>
              <a class="dropdown-item " href="MonthlySale.jsp">Monthly Sale</a>
                <a class="dropdown-item " href="PendingSale.jsp">Pending Sale</a>
				    <a class="dropdown-item active" href="YearlySale.jsp">Quarterly Sale</a>	             

            </div>
        </li>
                
                
                
              
                
                <li class="nav-item">
                    <a class="nav-link "  href="Logout">Logout</a>
                </li>
                
                
                
            </ul>
           
                    
               
       </div>    
                
                
                
            </nav>
        </div>
            
        
        </header>













<%!  
    // --- String Join Function converts from Java array to javascript string.  
    public String join(ArrayList<?> arr, String del)  
    {  

        StringBuilder output = new StringBuilder();  

        for (int i = 0; i < arr.size(); i++)  
        {  

            if (i > 0) output.append(del);  

              // --- Quote strings, only, for JS syntax  
              if (arr.get(i) instanceof String) output.append("\"");  
              output.append(arr.get(i));  
              if (arr.get(i) instanceof String) output.append("\"");  
        }  

        return output.toString();  
    }  
%>  


    <script>  
        <%  
           // --- Create two Java Arrays  
            ArrayList<String> months = new ArrayList<String>();  
            ArrayList<Integer> users = new ArrayList<Integer>();  

           // --- Loop 10 times and create 10 string dates and 10 users  
            //int counter = 1;  
            //while(counter < 11)  
            //{  
                //months.add("Aug " + counter);  
              //  users.add(counter++);  
            //}
            
            
            
            
            
                	 LocalDate end = LocalDate.now();
            LocalDate begin = LocalDate.now().minusMonths(3);
            
            
            
                
    try {
    	
    	Connection connection = null;
    	Statement statement = null;
    	ResultSet resultSet = null;
    	ResultSet resultSets = null;
    	
    	//   ids=(String)session.getAttribute("ids");
    	  //System.out.println("this is current ids"+ids);

     //   String connectionURL = "jdbc:mysql://host/db";
      
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        connection = DriverManager.getConnection("jdbc:mysql://den1.mysql6.gear.host:3306/khamdu", "khamdu", "Sq1HK_2S_fn0");
        if(!connection.isClosed())
        	
        	
  
        	statement=connection.createStatement();
       // String sql ="SELECT * FROM travel WHERE DepDate >= curdate() AND ids=";

     //   resultSet = statement.executeQuery(sql);
     
   //resultSet = statement.executeQuery   ("SELECT * FROM newuser WHERE Email= " + "'" + log.getUserName() + "'" 
     //       + "AND Password=" + "'" + log.getPassword() + "'");
   
 
   
  resultSets = statement.executeQuery (" SELECT SUM(Paid) FROM travel WHERE  DepDate >= '" + begin + "' AND DepDate <= '" + end + "'" + "GROUP BY MONTH(DepDate) ORDER BY DepDate ASC");

 
  
  
//resultSet = statement.executeQuery("SELECT travel.AirlineName,travel.DepDate, travel.DepTime, travel.Depairport, travel.TotalTime,travel.ArrTime, travel.ArrAirport, travel.SeatNumber  FROM travel  WHERE travel.DepDate >= curdate() AND travel.ids=" +"'" + ids + "'" 
  //         + "AND travel.id=newuser.ID" );
        while(resultSets.next()){
        	System.out.println(resultSets.getInt(1));
        	int resul=resultSets.getInt(("SUM(Paid)"));
        	users.add(resul);

}

} catch (Exception e) {
e.printStackTrace();
}
            
            
            
            
    
    
    
    
    
    
    
    
 try {
    	
    	Connection connection = null;
    	Statement statement = null;
    	ResultSet resultSet = null;
    	
    	//   ids=(String)session.getAttribute("ids");
    	  //System.out.println("this is current ids"+ids);

     //   String connectionURL = "jdbc:mysql://host/db";
     
 
      
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        connection = DriverManager.getConnection("jdbc:mysql://den1.mysql6.gear.host:3306/khamdu", "khamdu", "Sq1HK_2S_fn0");
        if(!connection.isClosed())
        	
        	   
        
        	
  
        	statement=connection.createStatement();
       // String sql ="SELECT * FROM travel WHERE DepDate >= curdate() AND ids=";

     //   resultSet = statement.executeQuery(sql);
     
   //resultSet = statement.executeQuery   ("SELECT * FROM newuser WHERE Email= " + "'" + log.getUserName() + "'" 
     //       + "AND Password=" + "'" + log.getPassword() + "'");
   
 
   
 // resultSet = statement.executeQuery   (" SELECT DepDate(DepDate, %M) FROM travel GROUP BY MONTH(DepDate)");
 
 //resultSet = statement.executeQuery   (" SELECT MONTHNAME(DepDate) FROM travel WHERE  GROUP BY MONTH(DepDate)");
 
 resultSet = statement.executeQuery   (" SELECT MONTHNAME(DepDate) FROM travel WHERE  DepDate >= '" + begin + "' AND DepDate <= '" + end + "'" + "GROUP BY MONTH(DepDate) ORDER BY DepDate ASC");

 

  
//resultSet = statement.executeQuery("SELECT travel.AirlineName,travel.DepDate, travel.DepTime, travel.Depairport, travel.TotalTime,travel.ArrTime, travel.ArrAirport, travel.SeatNumber  FROM travel  WHERE travel.DepDate >= curdate() AND travel.ids=" +"'" + ids + "'" 
  //         + "AND travel.id=newuser.ID" );
        while(resultSet.next()){
        	System.out.println(resultSet.getString(1));
        	
        	String monthname=resultSet.getString(1);
        	
        	months.add(monthname);

}

} catch (Exception e) {
e.printStackTrace();
}
    
 
 
 
 
 
            
            
            
            
            
        //    months.add("Jan");
          //  months.add("Feb");
            //months.add("Mar");
            //months.add("Apr");
            //months.add("May");
            //months.add("Jun");
            //months.add("Jul");
            //months.add("Aug");
            //months.add("Sep");
            //months.add("Oct");
            //months.add("Nov");
            //months.add("Dec");
            //users.add(300);
            //users.add(400);
            //users.add(500);
            //users.add(600);
            //users.add(700);
            //users.add(800);
            //users.add(900);
            //users.add(1000);
            //users.add(1100);
            //users.add(1200);
            //users.add(1300);
          //  users.add(1400);
        %>  

       // --- add a comma after each value in the array and convert to javascript string representing an array  
        var monthData = [<%= join(months, ",") %>];  
        var userData = [<%= join(users, ",") %>];  

    </script> 



<script>
window.onload = function() {
  zingchart.render({
    id: "myChart",
    width: "100%",
    height: 400,
    data: {
      "type": "bar",
      "title": {
        "text": "Last Quarter Sale"
      },
      "scale-x": {
        "labels": monthData
      },
      "plot": {
        "line-width": 1
      },
      "series": [{
        "values": userData
      }]
    }
  });
};
</script>

   
  <div id="myChart"></div>
  
  
  
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
                <!--  
                
                <div class="row text-center align-content-center">
                <div class="col-5 p-0 m-0">
                
                </div>
                
                <div class="col-2 lg- md-1 ml-5 pl-3">
                <hr class="p-0 m-0" align="center">
                </div>
                
                </div>
                -->
                
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






