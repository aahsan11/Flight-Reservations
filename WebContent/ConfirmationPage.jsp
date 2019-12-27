<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
 <meta name="viewport" content="width=device-width, initial-scale=1, 
    shrink-to-fit=yes">
        <title>JSP Page</title>
            <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css">
        
 
      <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    
        <script src="Bootstrap/js/popper.min.js"></script>
 <script src="Bootstrap/js/bootstrap.min.js"></script>
    
   
    
 

           
             
              
       
    
  
        <link rel="stylesheet" href="css/style.css">
</head>
<meta charset="ISO-8859-1">
<title>Confirmation Page</title>
<body style="background-color:white;">


<%
response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");//http 1.1
response.setHeader("Pragma", "no-cache"); //http 1.0
response.setHeader("Expires", "0"); //proxy

if(session.getAttribute("ids")==null){
	
	response.sendRedirect("LogIn.jsp");
}

%>
  
<header>
           
        <div id="header">
          
        <nav class="navbar navbar-expand-md navbar-light navbar-expand-md " >
         
            
            <a class="navbar-brand" href="#"> AHSAN AIRLINE
           
               <img src="goldenlogoahsan.png" alt="logo">
           
           </a>
                
              <button data-toggle="collapse" data-target="#navbarToggler" type="button"
       class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>
         <!--so as soon i enter below small size icon appear-->
       <!--this bootom line is for data-target-->
       <div class="collapse navbar-collapse" id="navbarToggler">
            
            
            
            
            
            <ul class="navbar-nav">
                <li class="nav-item ">
                    <a class="nav-link"  href="BookFlight.jsp">Book Flight</a>
                </li>
                
                
           
                
                
                
                
                
                
                <li class="nav-item">
                    <a class="nav-link active"  href="ConfirmationPage.jsp">Confirmation Page</a>
                </li>
                <li class="nav-item">
              <a class="nav-link"  href="Logout">Logout</a>
              
                </li>
                
                
            </ul>
           
                    
               
       </div>    
                
                
                
            </nav>
        </div>
            
        
        </header>
        
        
        <section class="mb-5">
        
        
        <div class="container">
        
        <div class="row">
        <div class="col lg-mx-auto md-mx-auto">
        
        <div class="row mt-5">
        <div class="col">
        
           <p class="text-center" style="font-size:23px;"><b>Flight Confirmed</b></p>
        
        </div>
        
        
        
        </div> <!--  end 1st row -->
        
        
         <div class="row mt-4">
        <div class="col ">
        
           <p style="color:#666;font-size:18px;">Hi ${firstname} </p>
        
        </div>
        
        
        
        </div> <!-- end row -->
        
        
        
        
        
        
         <div class="row">
        <div class="col">
        
           <p style="color:#666;font-size:18px;">Your trip to  ${descity}  on ${depday} , ${depmonth}  ${depdate}  is confirmed.</p>
        
        </div>
        
        
        
        </div>  <!--  end of row -->
        
        
        
        
        
         <div class="row">
        <div class="col">
        
          <p style="color:#666;font-size:18px;"> We will email your ticket shortly.</p>

        
        </div>
        
        
        
        </div>  <!--  end of row -->
        
        
        
        
        
        
       
        
        
        
              
         <div class="row">
        <div class="col">
        
              <p style="color:#666;font-size:18px;"> Ahsan Airline trip confirmation number <b>${confirmationno} .</b> Please use this confirmation number 
              for any communication with us. </p>
        
      
        
        </div>
        
        
        
        </div>  <!--  end of row -->
        
        
        
        
        
           
        
        
        
        
        
        
        
        </div> <!--  end entire col -->
        
        
        </div><!--  end entire row -->
        
        
        
        </div> <!--  end entire container -->
        
        
        
        
        
        
     
        
        
        
        
       
        
        
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

</body>
</html>