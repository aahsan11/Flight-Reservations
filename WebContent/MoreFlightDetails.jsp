<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
      
          <link rel="stylesheet" href="css/bootstrap.min.css">
  
        <link rel="stylesheet" href="css/style.css">
</head>
<body>


    
   <header>
           
        <div id="header">
          
        <nav class="navbar navbar-expand-md navbar-light navbar-expand-md" >
         
            
            <a class="navbar-brand" href="#"> AHSAN AIRLINE
           
               <img src="goldenlogo1.png" alt="logo">
           
           </a>
                
          
                
                
                
            </nav>
        </div>
            
        
        </header>





<section>
                
                
                    
                    
                    
                    
                    
                    <div class="container flightdetails" id="flightdetail" style="background-color:white">
                    
                    <form action="bookflight" method="post">
                    
                    <div class="row">
                    
                    <div class="col-2">
                    <div class="ln">
                    <label id="des">Depart
                    
                    </label>
                    </div>
                    </div>
                    
                    
                    
                       <div class="col-2">
                    <div class="images">
                  <img src="hummingbird-72.png" alt="media air">
                   </div>
                   
                   <div id="flightdate">
                      <%= request.getAttribute("day")%>
                   </div>
                       <div id="month">
                   <%= request.getAttribute("mo")%>
                   
                   <%= request.getAttribute("dat")%>
                    </div> 
                    
                   
                    </div>
                    
                    
                    
                    <div class="col-3">
                   
                    <div id="time">
                  
                    </div> 
                    
                  
                      <div id="flighttime">
                  
                    </div> 
                   
                    
                    </div>
                    
                    <div class="col-3">
                    <div class="line">
                    <hr> 
                    
                    </div>
                    <div class="dot">
                    .
                    </div>
                    
                    <div class="line2">
                    <hr>
                    </div>
                    <div id="time2">
                    </div>
                    
                    </div>
                    
                    <div class="col-3">
                    <div class="dcode">
                    
                    </div>
                    
                    
                      <div class="stops">
                 
                    Nonstop
                    </div>
                    
                     <div class="acode">
               
                    </div>
                    
                    </div>
                    
                    
                    
                    </div>
                    
                    
                    
                    
                    
                    
                    
                           <div class="row">
                    
                    <div class="col-3">
                    <div class="lg">
                    
                    <input type="date" id="dates" disabled value="<%= request.getAttribute("date")%>" name="dat"  >
                  
                    </div>
                    </div>
                    
                    
                    
                    </div>
                    
              
                    
                    
                    
           
                         <div class="row">
                    
                      <div class="col-3">
                    <div class="amount">
                    
                    
                
                    </div>
                    </div>
                    
                    
                    
                    <div class="col-3">
                    <div class="button">
                    
                    <input type="submit" name="submitbutton" >
                
                    </div>
                    </div>
                    
                    
                    
                    </div>
                    
                    
                     
                    
                    
                    </form>
                 
                    
                    </div>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                 
                 
                    
               
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                  
                    
              
                    
                    
                    
           
                    
                    
                    
                     
                    
                    
                    
                 
                    
                   
                    
                    
                    
                    
                    
                      
               

                 
                    
                    </section>
                    





  



<%
String at=(String)request.getAttribute("mo");   
out.print(at+"yahman");
System.out.println("out"+at);
String ats=(String)request.getAttribute("day"); 
out.print(ats+"day");


String dcode=(String)request.getAttribute("dcode"); 
out.print(dcode+"dcode");

String decode=(String)request.getAttribute("decode"); 
out.print(decode+"decode");

%>






      
      
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
           <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>


</body>
</html>