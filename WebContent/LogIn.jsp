<%-- 
    Document   : LogIn
    Created on : Sep 5, 2019, 6:11:55 PM
    Author     : pak1p
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn</title>
             <link rel="stylesheet" href="css/bootstrap.min.css">
  
        <link rel="stylesheet" href="css/style.css">
    </head>
    
    <body style="background-color:white;">
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
                <li class="nav-item ">
                    <a class="nav-link"  href="index.jsp">Home</a>
                </li>
                
             
                <li class="nav-item active">
              <a class="nav-link"  href="LogIn.jsp">LogIn</a>
              
                </li>
                
               <!--  
                <li class="nav-item">
                    <a class="nav-link"  href="LogIn.jsp">Log</a>
                </li>
                 --> 
                
            </ul>
           
                    
               
       </div>    
                
                
                
            </nav>
        </div>
            
        
        </header>
        
        
      
            
     
          <section class="mb-5">
        
            
            
            
            
            
            <div class="container mt-5">
            
            <div class="row">
            
            
            <div class="col-md-6 mx-auto">
            
            <div class="card">
            
            <div class="card-body">
            
            <div class="row">
            
            <div class="col text-center">
            
         
            <img width="150px" src="login.png"/>
            
            </div>
            
            
            </div>
            
               <div class="row">
            
            <div class="col text-center">
            
          
     <h3>Member Login</h3>
           
            </div>
            
            
            </div>
            
            
             <div class="row">
            
            <div class="col">
            
          

   <hr>        
            </div>
            
            
            </div>
            
            
            
            
            
            
               <div class="row">
            
            <div class="col text-center">
            
          

   <label > <font color="red">${message}</font></label>       
            </div>
            
            
            </div>
            
            
            
            
               <div class="row">
            
            <div class="col">
            
                <form action="login" method="post">
              <label for="uname">UserName</label>
            <div class="form-group">
          
            <input type="email" name="uname" id="uname" class="form-control" placeholder="User Name"/>
            </div>
            
               <label for="upassword">Password</label>
            <div class="form-group">
         
            <input type="password" name="upassword" id="upassword" class="form-control" placeholder="Password"/>
            </div>
            
            
           
           
           <div class="form-group">
         
    <input type="submit"  name="usubmit " value="Login" class="btn btn-primary btn-block btn-lg">
            </div>
                </form>
                
                  <form action="NewAccount.jsp" method="post">
                
           <div class="form-group">
         
              <input type="submit"  value="Newaccount" name="usubmit " class="btn btn-info btn-block btn-lg">
            </div>
           
      	</form>
            </div>
            
            
            </div>
            
            
            
            
            </div>
            
            
            
            </div>
            
            
            </div>
            
            </div>
            
            
            
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
