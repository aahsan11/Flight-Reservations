<%-- 
    Document   : index
    Created on : Sep 3, 2019, 4:28:43 PM
    Author     : pak1p
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ahsan Airline</title>
        
      
          <link rel="stylesheet" href="css/bootstrap.min.css">
  
        <link rel="stylesheet" href="css/style.css">
        
        
    </head>
    <body  style="background-color:white;" >
     
    


<style>

span{
  border-bottom:.3px solid #ececec;
}

</style>











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
                <li class="nav-item active">
                    <a class="nav-link"  href="index.jsp">Home</a>
                </li>
                
                
           
                
                
                
                
                
                
                <li class="nav-item">
                    <a class="nav-link"  href="LogIn.jsp">LogIn</a>
                </li>
                <li class="nav-item">
              <a class="nav-link"  href="BookFlight.jsp">Book Flights</a>
              
                </li>
                
                
            </ul>
           
                    
               
       </div>    
                
                
                
            </nav>
        </div>
            
        
        </header>
        
        
        <section>
            
          

      <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel" style="border-bottom:3px solid black; margin-bottom:1px;">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="airplane.jpg" class="d-block w-100" src=".../800x400?auto=yes&bg=777&fg=555&text=First slide" alt="First slide">
              <div class="carousel-caption d-none d-md-block text-top">
                <h1>Welcome to Ahsan Airline!</h1>
                </div>
            
            
            </div>
            <div class="carousel-item">
              <img src="milky.jpg" class="d-block w-100" src=".../800x400?auto=yes&bg=777&fg=555&text=Second slide" alt="Second slide">
            <div class="carousel-caption d-md-block">
				<h1>Where do you want to explore?</h1>
			</div>
            
            
            </div>
            <div class="carousel-item">
              <img src="explore.jpg" class="d-block w-100" src=".../800x400?auto=yes&bg=777&fg=555&text=Third slide" alt="Third slide">
          <div class="carousel-caption d-md-block">
				<h1>Awarded the World best Airline for 2011-19!</h1>
			</div>
          
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
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
       
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    </body>
</html>
