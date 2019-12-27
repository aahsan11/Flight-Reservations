<%-- 
    Document   : LogIn
    Created on : Sep 5, 2019, 6:11:55 PM
    Author     : pak1p
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>
             <link rel="stylesheet" href="css/bootstrap.min.css">
  
        <link rel="stylesheet" href="css/style.css">
    </head>
    
    
    
    
    
    <body style="background-color:white;">
    
    
   
    
    
    
    
         <header>
           
        <div id="header">
          
      
         <div id="login">
                
           <a class="navbar-brand" href="#">AHSAN AIRLINE 
           
               <img src="goldenlogo1.png" alt="logo">
           
           </a>
            
            
            
         </div>     
                
                
        </div>
                
                
              
     
        
        </header>
        
        
  
   
        
            
            
            
            
                    <section>
        
            
            
            
            
            
            <div class="container mt-5">
            
            <div class="row">
            
            
            <div class="col-md-8 mx-auto">
            
            <div class="card">
            
            <div class="card-body">
            
           
            
               <div class="row">
            
            <div class="col text-center">
            
          
     <h3>Create Account</h3>
           
            </div>
            
            
            </div>
            
            
           
            
            
                <div class="row">
            
            <div class="col ml-5">
            
          
          
     
   <label > <font color="red">${ku}</font></label>       
            </div>
            
            
            </div>
            
            
            
          
            
            
            
            
               <div class="row">
            
            <div class="col">
            
                <form action="Newaccount" method="post">
              <label for="uname">UserName</label>
            <div class="form-group">
          
            <input type="email" required="required" name="email" id="uname" class="form-control" placeholder="User Name"/>
            </div>
            
               <label for="password">Password</label>
            <div class="form-group">
         
            <input type="password"  id="password" required="required" min="8" class="form-control" name="password" placeholder="Password">
            </div>
            
            
             <label for="cpassword">Confirm Password</label>
            <div class="form-group">
         
                <input type="password" id="cpassword" required="required" min="8" class="form-control" name="cpassword" placeholder="Password">
            </div>
            
            
            
            
            
               <label for="answer">Secret Question 1</label>
            <div class="form-group">
         
             <select name="squestion" class="form-control" >
  <option value="volvo">What is your GrandMother last Name</option>
  <option value="saab">What is your highSchool Mascot</option>
  <option value="mercedes">What is your favorite color</option>

</select>
           
            </div>
            
            
               <div class="form-group">
         
             <input type="text" required="required" id="answer" class="form-control" name="answer" placeholder="Answer">
            </div>
            
            
              <label for="answer2">Secret Question 2</label>
              <div class="form-group ">
            <select name="squestion2" class="form-control"  >
  <option value="volvo">What is your favorite Car Name</option>
  <option value="saab">What is your favorite sport</option>
  <option value="mercedes">Which city were your born</option>

</select>
                 
     </div>     
     
        <div class="form-group">
         
            <input type="text" required="required" id="answer2" class="form-control" name="answer2" placeholder="Answer">
            </div>  
            
            
            
            <label for="phone">Phone Number</label>
            <div class="form-group">
         
          <input  required="required" type="text" id="phone" class="form-control" name="phone" placeholder="Phone Number">
            </div>
           
           
           <div class="form-group">
         
    <input type="submit"  name="caccount" value="Create Account" class="btn btn-primary btn-block btn-lg">
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
        
        
        
               <%
            
           //session=request.getSession();
             
         String aj=(String)  request.getAttribute("ku");
         if
         
         (request.getAttribute("ku")==null){
        	 System.out.println("yes");
         }
         else{
             out.write(aj);
             request.removeAttribute("ku");
       // user="";
             
           //  user="";
         }
         
      //   request.removeAttribute("ku");
         
     
            %>
          
        
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
        
        
        
    </body>
</html>
