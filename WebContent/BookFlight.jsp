<%@page contentType="text/html" pageEncoding="UTF-8"%>

   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
<title>Book Flight</title>

	<script src="JS/jquery-1.3.2.js"></script>
	 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
	        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
	
	
	
			  <link rel="stylesheet" href="css/bootstrap.min.css">
  			<link rel="stylesheet" href="css/style.css">
	<script src="jquery.autocomplete.js"></script>  
<link rel="stylesheet" type="text/css" href="css/jquery.autocomplete.css" />


</head>
<body style="background-color:white;"  >



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
                <li class="nav-item ">
                    <a class="nav-link"  href="CurrentBookings.jsp">Current Bookings</a>
                </li>
                
                
           
                
                
                
                
                
                
                <li class="nav-item">
                    <a class="nav-link active"  href="BookFlight.jsp">Book Flight</a>
                </li>
                <li class="nav-item">
              <a class="nav-link"  href=Logout>Logout</a>
              
                </li>
                
                
            </ul>
           
                    
               
       </div>    
                
                
                
            </nav>
        </div>
            
        
        </header>
        
        
        
        
        
        <section style="background-image: url('boatbackground.jpg'); background-size:cover;">
        
         <div class="container mt-3">
            
            <div class="row">
            
            
            <div class="col-md-8 mx-auto">
            
            <div class="card mt-3" style="background-color:transparent">
            
            <div class="card-body">
            
           
            
               <div class="row">
            
            <div class="col text-center">
            
          
     <h3><font color="white">FIND CHEAP FLIGHTS AND SAVE</font></h3>
           
            </div>
            
            
            </div>
            
            <div class="row">
            <div class="col text-center">
            
            
               <label > <font color="red">${kun}</font></label>  
            
            </div>
            
            </div>
            
            
           
            
            
            
            
            
            
          
            
            
            
            
               <div class="row">
            
            <div class="col">
            
              <form action="bookflight" method="post">
              <label for="country"><font size="5" color=white>From</font></label>
            <div class="form-group">
          
    <input required type="text" class="form-control" id="country" name="departure" placeholder="Departure City" required/>
            </div>
            
               <label for="coun"><font size="5" color="white">To</font></label>
            <div class="form-group">
         
         <input required type="text" class="form-control" id="coun" name="destination"
                                    value= "<%= request.getParameter("fl")%>" placeholder="Destination City" required
                                />
                          
            </div>
            
            
             <label for="da"><font size="5" color="white">Departure Date</font></label>
            <div class="form-group">
         

            <br> 
                                   <input type="date" class="form-control" id="da" name="date" placeholder="Departure Date" required>
            </div>
            
            
            
            
            
               <label for="class"><font size="5" color="white">Class</font></label>
            <div class="form-group">
         
           <select class="form-control" name="class" id="class">
                            
                              
                         <option selected>Economy</option>
                         <option>Business</option>
                         <option>First Class</option>
                          </select>
           
            </div>
            
            
            
            
              <label for="answer2"><font size="5" color="white">No of People</font></label>
              <div class="form-group ">
             <select class="form-control" name="class">
                            
                              
                         <option selected>1</option>
                         
                          </select>
                 
     </div>     
     
       
            
            
            
        
           
           
           <div class="form-group">
         
    <input type="submit"  name="caccount" value="Search Flights" name="search" class="btn btn-primary btn-block btn-lg">
    

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
        
        
        
        
        
    
        
        
        
        
        
        
       <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script> 
        
        
        
        
        
        
        







	
	<script>
		$("#country").autocomplete("getdata.jsp");
	</script>
	
	<script>
		$("#coun").autocomplete("getdata.jsp");
	</script>
	


		<script>
function emt(){
var d=document.getElementById("coun").value;
if(d== 'null'){
	document.getElementById("coun").value='';
	
}
}

window.onload=emt();

</script>






<script>

function dates(){
	
	const element = document.getElementById('da');
	element.valueAsNumber = Date.now()-(new Date()).getTimezoneOffset()*60000;
	
	
}
window.onload=dates();

</script>
	

  

  

  
    
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