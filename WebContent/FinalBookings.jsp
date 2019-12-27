<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Final Bookings</title>
   
 <meta name="viewport" content="width=device-width, initial-scale=1">
        
               <link rel="stylesheet" href="css/bootstrap.min.css">
                 <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
        <link rel="stylesheet" href="css/style.css">
 
     
    
   
    
 

           
             
              
       
    
  
        <link rel="stylesheet" href="css/style.css">
</head>
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
            <a class="nav-link dropdown-toggle" data-toggle="dropdown"  role="button"
            href="#">Bookings</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="AllBookings.jsp">All Bookings</a>
              <a class="dropdown-item " href="PreviousBookings.jsp">Previous Bookings</a>
                <a class="dropdown-item " href="CurrentBookings.jsp">Current Bookings</a>
             

            </div>
        </li>
                
                <li class="nav-item">
              <a class="nav-link active"  href="FinalBookings.jsp">Final Booking</a>
              
                </li>
                
                <li class="nav-item">
                    <a class="nav-link "  href="BookFlight.jsp">Book Flight</a>
                </li>
                
                
                
            </ul>
           
                    
               
       </div>    
                
                
                
            </nav>
        </div>
            
        
        </header>
        
        
        
        
        
        
        
        
        
        
        
        
        
   

<section>
<div class="container-fluid ml-lg-5 ml-md-5 ml-0 ml-sm-0">
<div class="row">

<div class="col-lg-8 col-12  col-sm-12  ">

<div class="row ml-5 mt-3 text-center">
<div class="col ">
<p class="pb-0 mb-0" style="font-weight:bold;font-size:1rem;">Review Trip Details and Book</p>
</div>


</div> <!-- end heading row -->



<div class="row ml-5">
<div class="col text-center">
 <p class="" style="font-weight:bold;font-size:1rem;"> Just one last step, before we book your tickets for <%= session.getAttribute("descity")%></p>
</div>


</div>  <!-- end heading details -->

<form action="Bookingvalidation" method="post">

<div class="card d-none  d-lg-block d-md-block d-xl-block">
<div style="position:relative">
<div class="row">

<div class="col">

    <div class="form-group ">
           
          <input type="text"   class=" form-control totalflighttimefinal text-right "  value= "<%= request.getParameter("totaltime")%>" id="totaltime4" name="totaltime"  style="width:10%; height:1.8rem;" >
             

             
             
         
      
             </div> <!--  end formgroup totaltime -->



</div> <!--  end tripdetails col -->

</div> <!--  end tripdetails row totaltime -->



<div class="row">
<div class="col">
<div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
            <%String name=request.getParameter("airlinename");
    
    if(name.equals("Humming Airline")){
    	
   
    
    %>
    
       <img src="hummingbird-72.png"  name= "image img-fluid" alt="media air">
       <% 
    }  
 %>
 
 
     
    <%String name1=request.getParameter("airlinename");
    
    if(name1.equals("Pinterest Airline")){
    	
   
    
    %>
    
       <img src="icons8-pinterest-72.png"  name= "image img-fluid" alt="media air">
       <% 
    }  
 %>
 
 
 
     
    <%String name2=request.getParameter("airlinename");
    
    if(name2.equals("Stumble Airline")){
    	
   
    
    %>
    
       <img src="stumbl-72.png"  name= "image img-fluid" alt="media air">
       <% 
    }  
 %>
 
 
 
 
 
     <%String name4=request.getParameter("airlinename");
    
    if(name4.equals("Star Airline")){
    	
   
    
    %>
    
       <img src="star-72.png"  name= "image img-fluid" alt="media air">
       <% 
    }  
 %>
 
 
 
 
 
     <%String name5=request.getParameter("airlinename");
    
    if(name5.equals("Crown Airline")){
    	
   
    
    %>
    
       <img src="crowns.png"  name= "image img-fluid" alt="media air">
       <% 
    }  
 %>
 
 
 
 
 
     <%String name6=request.getParameter("airlinename");
    
    if(name6.equals("Diamond Airline")){
    	
   
    
    %>
    
       <img src="diamond.png"  name= "image img-fluid" alt="media air">
       <% 
    }  
 %>
 
 
 
 
 
     <%String name7=request.getParameter("airlinename");
    
    if(name7.equals("Travel Airline")){
    	
   
    
    %>
    
       <img src="travel.png"  name= "image img-fluid" alt="media air">
       <% 
    }  
 %>
 
 
 
 
 
      <%String name8=request.getParameter("airlinename");
    
    if(name8.equals("Bunny Airline")){
    	
   
    
    %>
    
       <img src="bunny.png"  name= "image img-fluid"  alt="media air">
       <% 
    }  
 %>
 
 
 
      <%String name9=request.getParameter("airlinename");
    
    if(name9.equals("Dolphin Airline")){
    	
   
    
    %>
    
       <img src="dolphin.png"  name= "image img-fluid" alt="media air">
       <% 
    }  
 %>
 
 
 
      <%String name10=request.getParameter("airlinename");
    
    if(name10.equals("Lion's Airline")){
    	
   
    
    %>
    
       <img src="lion.png"  name= "image img-fluid" alt="media air">
       <% 
    }  
 %>
 
 
 
 
      <%String name11=request.getParameter("airlinename");
    
    if(name11.equals("Dots Airline")){
    	
   
    
    %>
    
       <img src="dots.png" name= "image img-fluid" alt="media air">
       <% 
    }  
 %>
          
              
                  <input type="text" id="airlinelable"  class="form-control finalfontstyling text-center ml-0 pl-0 " value="${param.airlinename}" name="airlinename" readonly="readonly" style="width:21.5%">
    
                 
                 
                   <input type="text" id="dayz1"  class=" form-control  text-center  finalfontstyling finalmont12 text-top  p-0 pb-1 ml-4" name="depday"   value="${param.depday}"   style="width: 9%;" >
                   
                            
        
         <input type="text" value="${param.deptime}" class=" form-control finalmont12 finalfontstylingbold text-center text-top p-0 pb-1"    name="deptime"  style="width:10.5%;" >
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
     <input type="text" value= "${param.arrtime}"   class=" form-control  text-center finalfontstylingbold finalmont12  p-0 pb-1 text-top p-0"  name="arrtime"  style="width: 10.5%;">
         
           
                 
                   <input type="text" id="dayz1"  class=" form-control finalfontstyling text-center finalmont12 text-top p-0"  class="form-control" name="arrday" value="${param.arrday}"   style="width:7%;" >
                   
                
                     
                     
         
                     
                     
                      
                         
          </div> <!--  end group -->
          </div><!-- end inline -->








</div> <!-- end col flightdetail  -->



</div>  <!-- end flighdetail row -->




 <div class="row form-inline mt-1" style="margin-left:8.1%;"> <!-- start pinterest row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top">
            
           
            
             <input type="text"  id="depmonth" class="   form-control finalmont12 finalfontstyling text-right text-top p-0  m-0   "   name="depmonth" value="${param.depmonth}" style="width:10.3%;" >
            
           <input type="text" id="gh"  name="depdate" class=" form-control text-left text-top p-0  finalfontstyling finalmont12 " value="${param.depdate}"   style="width: 7%;" >
           
           		<input type="text"  class=" form-control  text-top  text-right p-0  finalmont12  finalfontstyling " name="depcode"  value="${param.depcode}" style="width:8%;" >
           		
             <label class=" form-control  text-bottom text-right p-0  mont12" style="width: 16%;font-size:.8rem;">Non Stop</label>	
             
             <input type="text"  class=" form-control  finalmont12  text-top text-center p-0 pl-2  finalfontstyling" name="descode" value="${param.descode}"   style="width: 15%;" >
           		
           		  <input type="text" class="  form-control align-text-top finalmont12 text-right p-0 pt-1  finalfontstyling " name="desmonth" value="${param.desmonth}"   style="width: 8%;" >
            
          <input type="text" id="gh"  class=" form-control align-text-top  text-left p-0 pt-1 finalmont12 ml-0 finalfontstyling " name="desdate" value="${param.desdate}"  style="width: 8%;" >
            
       
      	
                 
               
            </div>
            
            
            
          
            
            
            
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of pineterest 3rd row -->


</div> <!--  end relative style -->


</div> <!-- card end -->






   
        <section>
        
        <div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12  d-xl-none d-lg-none">

<div class="card" id="flightdetailm">

<div class="row">
<div class="col">

  <div class="input-group">
            
           
          
           
              
          <input type="text" id="airlinelable"  class="form-control  ml-0 pl-0  text-bottom mobileairlinename" value="${param.airlinename}"   name="airlinename"   >
          
                     <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=  value="${param.hid}" >
                <input type="text" id="totalsm1"  value="${param.total}"  class="form-control float-right text-right text-bottom mobileflightdetail"  name="total" />  
                
                

                
                
                
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control   p-0 m-0     text-left text-top mobiletotaltime mobilemont12" value= "${param.totaltime} (Non-Stop) "  id="totaltimem" name="totaltime">



</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-2">








          <%String namem=request.getParameter("airlinename");
    
    if(namem.equals("Humming Airline")){
    	
   
    
    %>
    
  <input type="image"  name="flys" src="hmmingmobile.png" class="  mobileimageborder  "   />
       <% 
    }  
 %>
 
 
     
    <%String namem1=request.getParameter("airlinename");
    
    if(namem1.equals("Pinterest Airline")){
    	
   
    
    %>
    
      
       
         <input type="image"  name="flys" src="pinterestmobile.png" alt="Pineterest air" class="  mobileimageborder  "   />
       <% 
    }  
 %>
 
 
 
     
    <%String namem2=request.getParameter("airlinename");
    
    if(namem2.equals("Stumble Airline")){
    	
   
    
    %>
    
   
       <input type="image"  name="flys" src="stumblmobile.png" alt="Stumbl air" class="  mobileimageborder  "   />
       <% 
    }  
 %>
 
 
 
 
 
     <%String namem4=request.getParameter("airlinename");
    
    if(namem4.equals("Star Airline")){
    	
   
    
    %>
    
     
       <input type="image"  name="flys" src="starmobile.png" alt="Star air" class="mobileimageborder  "   />
       <% 
    }  
 %>
 
 
 
 
 
     <%String namem5=request.getParameter("airlinename");
    
    if(namem5.equals("Crown Airline")){
    	
   
    
    %>
    
     
       <input type="image"  name="flys" src="crownmobile.png" alt="Crown air" class="  mobileimageborder  "   />
       <% 
    }  
 %>
 
 
 
 
 
     <%String namem6=request.getParameter("airlinename");
    
    if(namem6.equals("Diamond Airline")){
    	
   
    
    %>
    
 
       <input type="image"  name="flys" src="diamondmobile.png" alt="Diamond air" class="  mobileimageborder  "   />
       <% 
    }  
 %>
 
 
 
 
 
     <%String namem7=request.getParameter("airlinename");
    
    if(namem7.equals("Travel Airline")){
    	
   
    
    %>
    
  
       <input type="image"  name="flys" src="travelmobile.png" alt="Travel air" class="  mobileimageborder  "   />
       <% 
    }  
 %>
 
 
 
 
 
      <%String namem8=request.getParameter("airlinename");
    
    if(namem8.equals("Bunny Airline")){
    	
   
    
    %>
    
       <input type="image"  name="flys" src="bunnymobile.png" alt="Bunny air" class="  mobileimageborder  "   />
       <% 
    }  
 %>
 
 
 
      <%String namem9=request.getParameter("airlinename");
    
    if(namem9.equals("Dolphin Airline")){
    	
   
    
    %>
    
      
       <input type="image"  name="flys" src="dolphinmobile.png" alt="Dolphin air" class="mobileimageborder  "   />
       <% 
    }  
 %>
 
 
 
      <%String namem10=request.getParameter("airlinename");
    
    if(namem10.equals("Lion's Airline")){
    	
   
    
    %>
    
  
       <input type="image"  name="flys" src="lionmobile.png" alt="Lion air" class="  mobileimageborder  "   />
       <% 
    }  
 %>
 
 
 
 
      <%String namem11=request.getParameter("airlinename");
    
    if(namem11.equals("Dots Airline")){
    	
   
    
    %>
    
   
       <input type="image"  name="flys" src="dotsmobile.png" alt="Dots air" class="  mobileimageborder  "   />
       <% 
    }  
 %>















    </div>
    
    <div class="col-2 p-0 ml-2 m-0 ">
<input type="text"  class=" form-control mobileflightdetail1 text-left"  name="depcode"  value="${param.depcode}">

</div>


<div class="col-2 p-0 m-0">
  
         <input type="text"  id="timem" name="deptime" style="font-size:.73rem; font-weight:bold; border-none; border-color:transparent;" value="${param.deptime}"  class="form-control p-0  m-0 text-left" >
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width:100%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem2" style="font-size:.73rem; font-weight:bold; border-none; border-color:transparent;" class=" form-control  p-0  "  value="${param.arrtime}"  name="arrtime"  >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="text"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1"  name="descode" value="${param.descode}"   >



                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->


<div class="row">



<div class="col-5">
<input type="text" class=" p-0 m-0  mobileflightdetail1"  value="Depart (<%=request.getParameter("depday")%>, &nbsp;<%=request.getParameter("depmonth")%>
<%=request.getParameter("depdate")%>)&nbsp; "/>


</div>




<div class="col-5 pr-0 mr-0">
<input type="text" class=" p-0 m-0  mobileflightdetail1" style="max-width:9rem;" value=",   Arrive (<%=request.getParameter("depday")%>, &nbsp;<%=request.getParameter("depmonth")%>
<%=request.getParameter("depdate")%>)"/>


</div>






</div>


<!--  

<div class="row">



 

<div class="col-4">
<input type="text" class=" p-0 m-0 text-right" name="depday" value="Depart(<%=request.getParameter("depday")%>,"/>


</div>

<div class="col-2">
<input type="text" class="  text-left " value="<%=request.getParameter("depmonth")%><%= request.getParameter("depdate")%>) ,"/>


</div>


<div class="col-3">
<input type="text" class="text-right p-0 m-0 " value="Arrive(<%=request.getParameter("depday")%>,"/>


</div>

<div class="col-2">
<input type="text" class="p-0 m-0 text-left"  value="<%= request.getParameter("depmonth")%><%=request.getParameter("depdate")%>)"/>


</div>



</div>   end of day row -->





</div> <!-- end row  end card-->




</div> <!-- end entire 12 col mobile -->

















</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->






        
        
        
        
        
        
        
        
        
        
        
        </section>
        
        







<div class="row">
<div class="col">
<p class="detail mt-3  pb-0 mb-0">Traveler Details</p>
</div>


</div>


<div class="row  ">
<div class="col">
	<p class="detail2  pt-0 mt-0">Enter <b>traveler name's</b> and <b>date's of birth</b> exactly as appear on the passport or any other government-issue ID card to be used during this trip.</p>
     		<p class="travelerbelow ">Enter traveler details below:</p> 

</div>  <!-- end travelerbelow row -->
</div>

<div class="card d-sm-none d-none d-md-block d-lg-block d-xl-block">
<div class="row">
<div class="col-12 col-lg-12">
<div class="input-group">
 <select class="form-control inputfield m-lg-1" name="class " >
                            
                              
                         <option selected>Adult</option>
                         <option>Senior</option>
                         
                          </select>
                          
 <input type="text" class="form-control inputfield m-1" name="firstname" placeholder="First Name*" required >
             
               <input type="text" class="form-control inputfield m-1" placeholder="Middle Name" >
               
                 <input type="text" class="form-control inputfield m-1" name="lastname" placeholder="Last Name*" required  >
                   <input type="Date" class="form-control inputfield m-1" name="dob" placeholder="DOB*" required>

  <select class="form-control inputfield m-1"  >
                            
                              
                         <option selected>Select</option>
                         <option>Male</option>
                         <option>Female</option>
                          </select>

</div> <!-- end form-group -->


</div>


</div> <!--  end passenger detail row -->









<div class="row">
<div class="col">
<div class="input-group">
 <select class="form-control inputfield m-1" name="class " >
                            
                              
                         <option selected>Adult</option>
                         <option>Senior</option>
                         
                          </select>
                          
 <input type="text" class="form-control inputfield m-1" name="firstname" placeholder="First Name*" >
             
               <input type="text" class="form-control inputfield m-1" placeholder="Middle Name" >
               
                 <input type="text" class="form-control inputfield m-1" name="lastname" placeholder="Last Name*"   >
                   <input type="Date" class="form-control inputfield m-1" name="dob" placeholder="DOB*" >

  <select class="form-control inputfield m-1"  >
                            
                              
                         <option selected>Select</option>
                         <option>Male</option>
                         <option>Female</option>
                          </select>

</div> <!-- end form-group -->


</div>


</div> <!--  end passenger detail row -->



<div class="row">
<div class="col">
<div class="input-group">
 <select class="form-control inputfield m-1"  >
                            
                              
                         <option selected>Adult</option>
                         <option>Senior</option>
                         
                          </select>
                          
 <input type="text" class="form-control inputfield m-1" name="firstname" placeholder="First Name*" >
             
               <input type="text" class="form-control inputfield m-1" placeholder="Middle Name" >
               
                 <input type="text" class="form-control inputfield m-1" name="lastname" placeholder="Last Name*"   >
                   <input type="Date" class="form-control inputfield m-1" name="dob" placeholder="DOB*" >

  <select class="form-control inputfield m-1"  >
                            
                              
                         <option selected>Select</option>
                         <option>Male</option>
                         <option>Female</option>
                          </select>

</div> <!-- end form-group -->


</div>


</div> <!--  end passenger detail row -->














</div> <!--  end passenger detail card -->



















<div class="card d-lg-none d-md-none d-xl-none" >
<div class="row">
<div class="col-12">
<div class="form-group">
 <select class="form-control "  >
                            
                              
                         <option selected>Adult</option>
                         <option>Senior</option>
                         
                          </select>
                          
                          </div>
                          </div>
                          
                          </div>
                          
                          
                          <div class="row">
                          <div class="col-12">
                          <div class="form-group">
                          
                           <input type="text" class="form-control  " name="firstname" placeholder="First Name*" >
                          </div>
                          </div>
                          
                          
                          </div>
                          
                          
                            <div class="row">
                          <div class="col-12">
                          <div class="form-group">
                          
                             <input type="text" class="form-control  " placeholder="Middle Name" >
                          </div>
                          </div>
                          
                          
                          </div>
                          
                          
                               <div class="row">
                          <div class="col-12">
                          <div class="form-group">
                          
                                
                 <input type="text" class="form-control " name="lastname" placeholder="Last Name*"/>
                          </div>
                          </div>
                          
                          
                          </div>
                          
                          
                          
                           <div class="row">
                          <div class="col-12">
                          <div class="form-group">
                          
                                
               <input type="Date" class="form-control " name="dob" placeholder="DOB*" >
                          </div>
                          </div>
                          
                          
                          </div>
                          
                            <div class="row">
                          <div class="col-12">
                          <div class="form-group">
                          
    
  <select class="form-control"  >
                            
                              
                         <option selected>Select</option>
                         <option>Male</option>
                         <option>Female</option>
                          </select>
                          </div>
                          </div>
                          
                          
                          </div>
                          

             
           
          
                  








</div> <!--  end passenger detail row -->
































































<div class="row mt-3  "> <!-- seats row -->

<div class="col ">
 <p class="detail pb-0 mb-0 ">Select Seats (Recommended)</p>

</div>


</div> <!--  end seatinfo row -->


<div class="card ">
<div class="row ">
<div class="col-lg-1 col-md-2 col-2 col-sm-2  ml-sm-0 ml-md-0 my-ml-0 ml-2">
 <img class="mt-2 img-fluid" src="chair6.jpg" alt="select seat"> 

</div> <!-- end col -->

<div class=" col ">

    <p class="ml-lg-2 ml-md-2 ml-0     mt-2 "> Reserve your favorite seats to:</p>
    
   
      <p class="ml-2">	&#10004; Sit along with your family members</p>
      
       <p class="ml-2">	&#10004; Fly in comfort</p>
         <p class="ml-2">	&#10004; Get best seat in advance </p>
         
         <hr >
</div> <!-- end col4 -->




</div> <!-- end seat info row -->

<div class="row">
<div class="col my-ml-2">
</div>  <!--  empty col -->





<div class="col-lg-2 col-md-7 col-10 col-sm-7 mr-4">
<div class="form-group">
  <a class="btn btn-primary form-control SeeMor my-ml-2"  data-toggle="collapse" href="#multiCollapseExample1"
   role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Show Seat Map</a>

</div>


</div > <!-- end button col --> 


</div> <!-- end seat selection button row -->


 <div class="collapse multi-collapse" id="multiCollapseExample1">
 
<div class="card"> 
<div class="card-body">

<div class="row">
<div class="col-4 col-md-1 col-lg-1">
<input type="button" style="min-width:5rem; background-color:green;"/>

</div>

<div class="col-4 col-md-1 col-lg-1">

<input type="button" style="min-width:5rem; background-color:blue;"/>
</div>


<div class="col-4 col-md-1 col-lg-1">
<input type="button" value="seatA12" disabled="disabled" style="min-width:5rem; background-color:green;"/>

</div>








</div> <!-- end button icon -->


<div class="row">
<div class="col-4 col-md-1 col-lg-1">
<label>Available</label>

</div>

<div class="col-4 col-md-1 col-lg-1">

<label>Selected</label>
</div>


<div class="col-4 col-md-1 col-lg-1">
<label>Unavailable</label>

</div>








</div>










<div class="row text-center">

<div class="col">
<label class="text-right " style="color:orange;">Exit &nbsp; &nbsp;  &nbsp; &nbsp;   &nbsp; &nbsp; Exit </label>
</div>
</div>

<div class="row">

<div class="col">


<div class="table-responsive-md table-responsive">
 <table  class="" style="border:none;" >
                                            <tbody>
                        <tr>
                        
                        
                        <th scope="row" class="text-center" style="border:none;">F</th>
                        
                            <td>
                                <input type="button" value="seat00F"  class="bg " style="max-width:7rem; min-width:6rem;" name="submit" id="seat00F" onclick="changecolor()" /></td>
                            <td>
                                <input type="button" value="seat03F" class="bg" name="submit"  style="max-width:7rem; min-width:6rem;" id="seat03F"onclick="changecolor1()" /></td>
                            <td>
                                <input type="button" value="seat06F" class="bg" name="submit" style="max-width:7rem; min-width:6rem;" id="seat06F" onclick="changecolor2()"/></td>
                            <td>
                                <input type="button" value="seat09F" class="bg" name="submit" style="max-width:7rem; min-width:6rem;" id="seat09F" onclick="changecolor3()"/></td>
                            <td>
                                <input type="button" value="seat12F" class="bg" name="submit" style="max-width:7rem; min-width:6rem;" id="seat12F" onclick="changecolor4()"/></td>
                           
                            
                            <td>
                                <input type="button" value="seat15F" class="bg" name="submit" style="max-width:7rem; min-width:6rem;" id="seat15F" onclick="changecolor5()"/></td>
                            <td>
                                <input type="button" value="seat18F" class="bg" name="submit" style="max-width:7rem; min-width:6rem;" id="seat18F" onclick="changecolor6()"/></td>
                            <td>
                                <input type="button" value="seat21F" class="bg" name="submit" style="max-width:7rem; min-width:6rem;" id="seat21F" onclick="changecolor7()"/></td>
                        </tr>
                  
           
                   <tr>
                         <th scope="row" class="text-center" style="border:none;">G</th>
                            <td>
                                <input type="button" value="seat00G" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat00G" onclick="changecolors()" /></td>
                            <td>
                                <input type="button" value="seat03G" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat03G"onclick="changecolors1()" /></td>
                            <td>
                                <input type="button" value="seat06G" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat06G" onclick="changecolors2()"/></td>
                            <td>
                                <input type="button" value="seat09G" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat09G" onclick="changecolors3()"/></td>
                            <td>
                                <input type="button" value="seat12G" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat12G" onclick="changecolors4()"/></td>
                            <td>
                                <input type="button" value="seat15G" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat15G" onclick="changecolors5()"/></td>
                            <td>
                                <input type="button" value="seat18G" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat18G" onclick="changecolors6()"/></td>
                            <td>
                                <input type="button" value="seat21G" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat21G" onclick="changecolors7()"/></td>
                        </tr>
                        
                        
                        
                        
                        <tr>
                        
                        
                
                        
                            <td>
                                <input type="button" value=""  class=" " style="max-width:7rem; min-width:6rem;border:none;border-color:transparent;outline:none; background-color:white; pointer-events: none;" name="submit" /></td>
                            <td>
                                <input type="button" value="1" class="" name="submit"  style="max-width:7rem; min-width:6rem;border:none;border-color:transparent;outline:none; background-color:white; pointer-events: none;"  /></td>
                            <td>
                                <input type="button" value="2" class="" name="submit" style="max-width:7rem; min-width:6rem;border:none;border-color:transparent;outline:none; background-color:white; pointer-events: none;" /></td>
                            <td>
                                <input type="button" value="3" class="" name="submit" style="max-width:7rem; min-width:6rem;border:none;border-color:transparent;outline:none; background-color:white; pointer-events: none;" /></td>
                            <td>
                                <input type="button" value="4" class="" name="submit" style="max-width:7rem; min-width:6rem;border:none;border-color:transparent;outline:none; background-color:white; pointer-events: none;"  /></td>
                           
                            
                            <td>
                                <input type="button" value="5" class="" name="submit" style="max-width:7rem; min-width:6rem;border:none;border-color:transparent;outline:none; background-color:white; pointer-events: none;"  /></td>
                            <td>
                                <input type="button" value="6" class="" name="submit" style="max-width:7rem; min-width:6rem;border:none;border-color:transparent;outline:none; background-color:white; pointer-events: none;"  /></td>
                            <td>
                                <input type="button" value="7" class="" name="submit" style="max-width:7rem; min-width:6rem; border:none;border-color:transparent;outline:none; background-color:white; pointer-events: none;"  /></td>
                                
                                <td>
                                <input type="button" value="8" class="" name="submit" style="max-width:7rem; min-width:6rem; border:none;border-color:transparent;outline:none; background-color:white; pointer-events: none;"  /></td>
                        </tr>
                        
                        
                      
	
                        
                        
                        
                        
                        
                             <tr>
                             <th scope="row" class="text-center" style="border:none;">H</th>
                            <td>
                                <input type="button" value="seat00H"  style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat00H" onclick="changecolorss()" /></td>
                            <td>
                                <input type="button" value="seat03H" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat03H"onclick="changecolorss1()" /></td>
                            <td>
                                <input type="button" value="seat06H" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat06H" onclick="changecolorss2()"/></td>
                            <td>
                                <input type="button" value="seat09H" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat09H" onclick="changecolorss3()"/></td>
                            <td>
                                <input type="button" value="seat12H" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat12H" onclick="changecolorss4()"/></td>
                            <td>
                                <input type="button" value="seat15H" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat15H" onclick="changecolorss5()"/></td>
                            <td>
                                <input type="button" value="seat18H" style="max-width:7rem; min-width:6rem;" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat18H" onclick="changecolorss6()"/></td>
                            <td>
                                <input type="button" value="seat21H" style="max-width:7rem; min-width:6rem;"  class="bg" name="submit" id="seat21H" onclick="changecolorss7()"/></td>
                        </tr>
                  
                  
                  
                  
                  
                          <tr>
                          <th scope="row" class="text-center" style="border:none;">J</th>
                            <td>
                                <input type="button" value="seat00J" style="max-width:7rem; min-width:6rem;"  class="bg" name="submit" id="seat00J" onclick="changecolorsss()" /></td>
                            <td>
                                <input type="button" value="seat03J" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat03J"onclick="changecolorsss1()" /></td>
                            <td>
                                <input type="button" value="seat06J" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat06J" onclick="changecolorsss2()"/></td>
                            <td>
                                <input type="button" value="seat09J" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat09J" onclick="changecolorsss3()"/></td>
                            <td>
                                <input type="button" value="seat12J" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat12J" onclick="changecolorsss4()"/></td>
                            <td>
                                <input type="button" value="seat15J" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat15J" onclick="changecolorsss5()"/></td>
                            <td>
                                <input type="button" value="seat18J" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat18J" onclick="changecolorsss6()"/></td>
                            <td>
                                <input type="button" value="seat21J" style="max-width:7rem; min-width:6rem;" class="bg" name="submit" id="seat21J" onclick="changecolorsss7()"/></td>
                        </tr>
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                    
                    </tbody>

                </table>


</div>


 
</div>

</div> <!--  end seats row selection -->


<div class="row text-center">

<div class="col">
<label class="text-right " style="color:orange;">Exit &nbsp; &nbsp;  &nbsp; &nbsp;   &nbsp; &nbsp; Exit </label>
</div>
</div>


  <div class="row mt-1 float-right">
         <div class="col">
      <input type="text" hidden="hidden" id="kk" name="t1" >
       
        <span id="ahsan" style="visibility:hidden; border:none;"></span>
       
         <label>Selected Seat:</label>
        
          <input type="text" class="text-left mobilemont12" id="selectedseat" name="selectedseat" style="font-weight:bold;">
            </div>
        </div>


   
   </div> <!-- end card -->
   </div>   <!-- end card body-->
   
   
   
   
   
   
   
   
   
   
   
      <script>
 
        	function changecolor(){
	var col1=document.getElementById('seat00F').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat00F').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00F');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat00F').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat00F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00F');
            		
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat00F').style.backgroundColor='blue';
        			var x="seat00F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00F');
            		
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        		
        		
        	}
    
        </script>
              <script>
 
        	function changecolor1(){
	var col1=document.getElementById('seat03F').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat03F').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03F');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat03F').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat03F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03F');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat03F').style.backgroundColor='blue';
        			var x="seat03F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03F');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
        		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>  
        
        
        
         <script>
 
        	function changecolo11(){
        		
        			var x="seat03f";
            		document.getElementById('kk').value=x;
        		}
        	
    
        </script>  
        
       
   
        
      
        
        
        
            <script>
 
        	function changecolor2(){
	var col1=document.getElementById('seat06F').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat06F').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat06F');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat06F').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat06F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat06F');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat06F').style.backgroundColor='blue';
        			var x="seat06F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat06F');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>      <script>
 
        	function changecolor3(){
        		var col1=document.getElementById('seat09F').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat09F').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09F');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat09F').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat09F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat09F').style.backgroundColor='blue';
        			var x="seat09F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09F');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
        			
        		
        		}
        	}
    
        </script>
        
        
        
        
        
       
              <script>
 
        	function changecolor4(){
	var col1=document.getElementById('seat12F').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat12F').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12F');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat12F').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat12F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12F');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat12F').style.backgroundColor='blue';
        			var x="seat12F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12F');
            		
            		
            		
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        			
        		}
        	}
    
        </script>
     
        
            <script>
 
        	function changecolor5(){
	var col1=document.getElementById('seat15F').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat15F').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat15F');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat15F').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat15F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat15F');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat15F').style.backgroundColor='blue';
        			var x="seat15F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat15F');
            		
            		
            		
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
        		}
        	}
    
        </script>
        
        
          <script>
 
        	function changecolor6(){
	var col1=document.getElementById('seat18F').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat18F').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18F');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat18F').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat18F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18F');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat18F').style.backgroundColor='blue';
        			var x="seat18F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18F');
            		
            		
            		
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
        		}
        	}
    
        </script>
        
        
        
         <script>
 
        	function changecolor7(){
	var col1=document.getElementById('seat21F').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat21F').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21F');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat21F').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat21F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21F');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat21F').style.backgroundColor='blue';
        			var x="seat21F";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21F');
            		
            		
            		
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
         <script>
 
        	function changecolors(){
var col1=document.getElementById('seat00G').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat00G').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00G');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat00G').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat00G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00G');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat00G').style.backgroundColor='blue';
        			var x="seat00G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00G');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
         <script>
 
        	function changecolors1(){
var col1=document.getElementById('seat03G').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat03G').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03G');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat03G').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat03G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03G');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat03G').style.backgroundColor='blue';
        			var x="seat03G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03G');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
         <script>
 
        	function changecolors2(){
var col1=document.getElementById('seat06G').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat06G').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat06G');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat06G').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat06G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat06G');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat06G').style.backgroundColor='blue';
        			var x="seat06G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat06G');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
         <script>
 
        	function changecolors3(){
var col1=document.getElementById('seat09G').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat09G').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09G');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat09G').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat09G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09G');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat09G').style.backgroundColor='blue';
        			var x="seat09G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09G');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
         <script>
 
        	function changecolors4(){
var col1=document.getElementById('seat12G').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat12G').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12G');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat12G').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat12G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12G');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat12G').style.backgroundColor='blue';
        			var x="seat12G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12G');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
         <script>
 
        	function changecolors5(){
var col1=document.getElementById('seat15G').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat15G').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat15G');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat15G').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat15G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat15G');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat15G').style.backgroundColor='blue';
        			var x="seat15G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat15G');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
         <script>
 
        	function changecolors6(){
var col1=document.getElementById('seat18G').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat18G').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18G');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat18G').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat18G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18G');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat18G').style.backgroundColor='blue';
        			var x="seat18G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18G');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
         <script>
 
        	function changecolors7(){
var col1=document.getElementById('seat21G').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat21G').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21G');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat21G').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat21G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21G');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat21G').style.backgroundColor='blue';
        			var x="seat21G";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21G');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss(){
var col1=document.getElementById('seat00H').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat00H').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00H');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat00H').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat00H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00H');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat00H').style.backgroundColor='blue';
        			var x="seat00H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00H');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss1(){
var col1=document.getElementById('seat03H').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat03H').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03H');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat03H').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat03H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03H');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat03H').style.backgroundColor='blue';
        			var x="seat03H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03H');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss2(){
var col1=document.getElementById('seat06H').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat06H').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat06H');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat06H').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat06H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat06H');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat06H').style.backgroundColor='blue';
        			var x="seat06H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat06H');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss3(){
var col1=document.getElementById('seat09H').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat09H').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09H');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat09H').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat09H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09H');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat09H').style.backgroundColor='blue';
        			var x="seat09H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09H');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss4(){
var col1=document.getElementById('seat12H').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat12H').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12H');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat12H').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat12H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12H');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat12H').style.backgroundColor='blue';
        			var x="seat12H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12H');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss5(){
var col1=document.getElementById('seat15H').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat15H').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat15H');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat15H').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat15H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00H');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat15H').style.backgroundColor='blue';
        			var x="seat15H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat15H');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
           <script>
 
        	function changecolorss6(){
var col1=document.getElementById('seat18H').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat18H').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18H');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat18H').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat18H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18H');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat18H').style.backgroundColor='blue';
        			var x="seat18H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18H');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss7(){
var col1=document.getElementById('seat21H').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat21H').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21H');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat21H').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat21H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21H');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat21H').style.backgroundColor='blue';
        			var x="seat21H";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21H');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            	
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat00H').style.backgroundColor='green';
            		
            		
            		
            		
            		
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorsss(){
var col1=document.getElementById('seat00J').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat00J').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00J');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat00J').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat00J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00J');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat00J').style.backgroundColor='blue';
        			var x="seat00J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00J');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
           <script>
 
        	function changecolorsss1(){
var col1=document.getElementById('seat03J').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat03J').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03J');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat03J').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat03J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03J');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat03J').style.backgroundColor='blue';
        			var x="seat03J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat03J');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
        
        <script>
 
        	function changecolorsss2(){
var col1=document.getElementById('seat06J').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat06J').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat06J');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat06J').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat06J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat00J');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat06J').style.backgroundColor='blue';
        			var x="seat06J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat06J');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        <script>
 
        	function changecolorsss3(){
var col1=document.getElementById('seat09J').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat09J').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09J');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat09J').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat09J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09J');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat09J').style.backgroundColor='blue';
        			var x="seat09J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat09J');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
    
    
    <script>
 
        	function changecolorsss4(){
var col1=document.getElementById('seat12J').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat12J').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12J');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat12J').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat12J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12J');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat12J').style.backgroundColor='blue';
        			var x="seat12J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat12J');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        <script>
 
        	function changecolorsss5(){
var col1=document.getElementById('seat15J').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat15J').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat15J');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat15J').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat15J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat15J');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat15J').style.backgroundColor='blue';
        			var x="seat15J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat15J');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
        <script>
 
        	function changecolorsss6(){
var col1=document.getElementById('seat18J').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat18J').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18J');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat18J').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat18J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18J');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat18J').style.backgroundColor='blue';
        			var x="seat18J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat18J');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
            		document.getElementById('seat21J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
        
        <script>
 
        	function changecolorsss7(){
var col1=document.getElementById('seat21J').style.backgroundColor;
        		
        		if(col1=='blue'){
        			document.getElementById('seat21J').style.backgroundColor='green';
        			var x="";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21J');
        		}
        		
        		else if (col1 !== 'green') {
        			document.getElementById('seat21J').style.backgroundColor='blue';
        			document.getElementById('selectedseat').value=x;
        			
        			var x="seat21J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21J');
            	
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat09G').style.backgroundColor='green';
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
            		
            		
            	
        		}
        		
        		else if (col1 == 'green') {
        			document.getElementById('seat21J').style.backgroundColor='blue';
        			var x="seat21J";
            		document.getElementById('selectedseat').value=x;
            		var sa=document.getElementById('seat21J');
            		
            		document.getElementById('seat00F').style.backgroundColor='green';
            		document.getElementById('seat09F').style.backgroundColor='green';
            		document.getElementById('seat03F').style.backgroundColor='green';
            		document.getElementById('seat06F').style.backgroundColor='green';
            		document.getElementById('seat12F').style.backgroundColor='green';
            		document.getElementById('seat15F').style.backgroundColor='green';
            		document.getElementById('seat18F').style.backgroundColor='green';
            		document.getElementById('seat21F').style.backgroundColor='green';
            		
            		
            		
            		document.getElementById('seat03G').style.backgroundColor='green';
            		document.getElementById('seat06G').style.backgroundColor='green';
            		document.getElementById('seat00G').style.backgroundColor='green';
            		document.getElementById('seat12G').style.backgroundColor='green';
            		document.getElementById('seat15G').style.backgroundColor='green';
            		document.getElementById('seat18G').style.backgroundColor='green';
            		document.getElementById('seat21G').style.backgroundColor='green';
            		
            		
            		document.getElementById('seat00H').style.backgroundColor='green';
            		document.getElementById('seat03H').style.backgroundColor='green';
            		document.getElementById('seat06H').style.backgroundColor='green';
            		document.getElementById('seat09H').style.backgroundColor='green';
            		document.getElementById('seat12H').style.backgroundColor='green';
            		document.getElementById('seat15H').style.backgroundColor='green';
            		document.getElementById('seat18H').style.backgroundColor='green';
            		document.getElementById('seat21H').style.backgroundColor='green';
            		
            		
            		
            		
            		
           
            		document.getElementById('seat03J').style.backgroundColor='green';
            		document.getElementById('seat06J').style.backgroundColor='green';
            		document.getElementById('seat09J').style.backgroundColor='green';
            		document.getElementById('seat12J').style.backgroundColor='green';
            		document.getElementById('seat15J').style.backgroundColor='green';
            		document.getElementById('seat18J').style.backgroundColor='green';
            		document.getElementById('seat00J').style.backgroundColor='green';
        		}
        	}
    
        </script>
        <% String depcode = (String) request.getParameter("depcode"); %>
        
              <% String descode = (String) request.getParameter("descode"); %>
              
              
              <% String deptime = (String) request.getParameter("deptime"); %>
        
        <% String descity= (String)session.getAttribute("descity");%>
        
        <% String dep= (String)session.getAttribute("dep");%>
        
       <%   String dat= (String) request.getParameter("dates"); %>
        
        <%String dates= (String)request.getParameter("hid");%>
        
		<%String airlinename= (String) request.getParameter("airlinename");%>
        
        
     
        
        
        <!--  
      
        -->
        
        <script>
            
            var request;
            var n;
            function sendInfo()
            {
            	
            	
            	
                var a="11";
             
                var depcode ="<%= depcode%>";
                
                var deptime ="<%= deptime%>";
                
                var descode ="<%= descode%>";
                
            
             
                
                var descity ="<%= descity%>";
                
                var dep ="<%= dep%>";
                
                var dates ="<%= dates%>";
                
                var airlinenam ="<%= airlinename%>";
                console.log(airlinenam+ "this is dates  cdoe");
                
                var url="data.jsp?val="+dep+"&des="+ descity +"&time="+ deptime +"&date="+ dates+"&airline="+ airlinenam;
                console.log(depcode+"bor");
                
                if(window.XMLHttpRequest){
                    request=new XMLHttpRequest();
                }
                else if(window.ActiveXObject){
                    request=new ActiveXObject("Microsoft.XMLHTTP");
                }
                try{
                    request.onreadystatechange=getInfo;
                    request.open("POST",url,true);
                    request.send();
                    
                }catch(e){alert("unable to connect to server");}
                
                
            }
            

















            
            
    
            
            
            
            
            
            
            
            
            
            
            
            function getInfo(){
            	var k;
            	var g;
            	var z;
            	var b;
            	var td;
                if(request.readyState==4){
                    var val=request.responseText;
                   document.getElementById('ahsan').innerHTML=val;
                 //  document.getElementById('kk').value=val;
               //    document.getElementById('kk').value=l;
               
               var x=document.getElementById('ahsan').innerHTML;
              n= document.getElementById('kk').value=x;
           //  console.log(n);
             
             
             
            //if (button.attr("id")==n){
            	
            //	n.disabled=true;
           // }
            
             var seat00f=document.getElementById('seat00F');  
            
            var seat03f=document.getElementById('seat03F');
               
          
            
           //   var k=document.getElementById('seat06F').value;
              
           //   var g=document.getElementById('kk').value;
            var  seat06f=document.getElementById('seat06F');
            
            var  seat09f=document.getElementById('seat09F');
            
            var seat12f=document.getElementById('seat12F');
            
            var seat15f=document.getElementById('seat15F');
            
            var seat18f=document.getElementById('seat18F');
            
            var seat21f=document.getElementById('seat21F');
            
            
            
            var seat00g=document.getElementById('seat00G');
            
            var seat03g=document.getElementById('seat03G');
            
            var seat06g=document.getElementById('seat06G');
            
            var seat09g=document.getElementById('seat09G');
            
            var seat12g=document.getElementById('seat12G');
            
            var seat15g=document.getElementById('seat15G');
            var seat18g=document.getElementById('seat18G');
            var seat21g=document.getElementById('seat21G');
            
            
            
            
            
            var seat00h=document.getElementById('seat00H');
            
            var seat03h=document.getElementById('seat03H');
            
            var seat06h=document.getElementById('seat06H');
            
            var seat09h=document.getElementById('seat09H');
            
            var seat12h=document.getElementById('seat12H');
            
            var seat15h=document.getElementById('seat15H');
            var seat18h=document.getElementById('seat18H');
            var seat21h=document.getElementById('seat21H');
            
            
            
         var seat00j=document.getElementById('seat00J');
            
            var seat03j=document.getElementById('seat03J');
            
            var seat06j=document.getElementById('seat06J');
            
            var seat09j=document.getElementById('seat09J');
            
            var seat12j=document.getElementById('seat12J');
            
            var seat15j=document.getElementById('seat15J');
            var seat18j=document.getElementById('seat18J');
            var seat21j=document.getElementById('seat21J');
            
            
        
              
              
        
              
           
           
             if(n.indexOf(seat00f.value) > -1) {
            	  
            	  seat00f.disabled=true;
            	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
              }
             
             else{
            	 seat00f.disabled=false;
             }
             
             
              
              if(n.indexOf(seat03f.value) > -1) {
            	  
            	  seat03f.disabled=true;
            	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
              }
              else{
             	 seat03f.disabled=false;
              }
              
              

              
              
             if(n.indexOf(seat06f.value) > -1){
              	
             	seat06f.disabled=true;
            
              }
             else{
            	 seat06f.disabled=false;
             }
             
             
              
             

             
             if(n.indexOf(seat09f.value) > -1) {
           	  
           	  seat09f.disabled=true;
           	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
             }
             else{
            	 seat09f.disabled=false;
             }
             
             

             
             if(n.indexOf(seat12f.value) > -1) {
              	  
              	  seat12f.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             else{
            	 seat12f.disabled=false;
             }
             
             

             
             

             if(n.indexOf(seat15f.value) > -1) {
              	  
              	  seat15f.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             else{
            	 seat15f.disabled=false;
             }
             
             

             

             if(n.indexOf(seat18f.value) > -1) {
              	  
              	  seat18f.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             else{
            	 seat18f.disabled=false;
             }
             
             
             
             
             
             if(n.indexOf(seat21f.value) > -1) {
             	  
             	  seat21f.disabled=true;
             	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
               }

             else{
            	 seat21f.disabled=false;
             }
             
              
              
              
             
             
             
             
             
             
             
             if(n.indexOf(seat00g.value) > -1) {
           	  
           	  seat00g.disabled=true;
           	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
             }
             
             else{
            	 seat00g.disabled=false;
             }
             
             
             if(n.indexOf(seat03g.value) > -1) {
              	  
              	  seat03g.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             
             else{
            	 seat03g.disabled=false;
             }
             
             
             
             if(n.indexOf(seat06g.value) > -1) {
              	  
              	  seat06g.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             
             else{
            	 seat06g.disabled=false;
             }
             
             
             
             if(n.indexOf(seat09g.value) > -1) {
              	  
              	  seat09g.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             else{
            	 seat09g.disabled=false;
             }
             
             
             if(n.indexOf(seat12g.value) > -1) {
              	  
              	  seat12g.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             
             else{
            	 seat12g.disabled=false;
             }
             
             if(n.indexOf(seat15g.value) > -1) {
              	  
              	  seat15g.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             
             else{
            	 seat15g.disabled=false;
             }
             
             
             if(n.indexOf(seat18g.value) > -1) {
              	  
              	  seat18g.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
            
             
             
             
             else{
            	 seat18g.disabled=false;
             }
             
             
             if(n.indexOf(seat21g.value) > -1) {
              	  
              	  seat21g.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             
             else{
            	 seat21g.disabled=false;
             }
             
             
             
             
             
             
             
             
             
             
             
             if(n.indexOf(seat00h.value) > -1) {
           	  
           	  seat00h.disabled=true;
           	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
             }
             
             else{
            	 seat00h.disabled=false;
             }
             
             
             if(n.indexOf(seat03h.value) > -1) {
              	  
              	  seat03h.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             
             else{
            	 seat03h.disabled=false;
             }
             
             
             
             if(n.indexOf(seat06h.value) > -1) {
              	  
              	  seat06h.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             
             else{
            	 seat06h.disabled=false;
             }
             
             
             
             if(n.indexOf(seat09h.value) > -1) {
              	  
              	  seat09h.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             else{
            	 seat09h.disabled=false;
             }
             
             
             if(n.indexOf(seat12h.value) > -1) {
              	  
              	  seat12h.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             
             else{
            	 seat12h.disabled=false;
             }
             
             if(n.indexOf(seat15h.value) > -1) {
              	  
              	  seat15h.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             
             else{
            	 seat15h.disabled=false;
             }
             
             
             if(n.indexOf(seat18h.value) > -1) {
              	  
              	  seat18h.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
            
             
             
             
             else{
            	 seat18h.disabled=false;
             }
             
             
             if(n.indexOf(seat21h.value) > -1) {
              	  
              	  seat21h.disabled=true;
              	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
                }
             
             
             else{
            	 seat21h.disabled=false;
             }
             
             
             
             
             
             
             if(n.indexOf(seat00j.value) > -1) {
             	  
             	  seat00j.disabled=true;
             	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
               }
            else{
           	 seat00j.disabled=false;
            }
             
             
             
             if(n.indexOf(seat03j.value) > -1) {
             	  
             	  seat03j.disabled=true;
             	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
               }
            else{
           	 seat03j.disabled=false;
            }
             
             
             
             
             if(n.indexOf(seat06j.value) > -1) {
             	  
             	  seat06j.disabled=true;
             	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
               }
            else{
           	 seat06j.disabled=false;
            }
             
             
             
             
             if(n.indexOf(seat09j.value) > -1) {
             	  
             	  seat09j.disabled=true;
             	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
               }
            else{
           	 seat09j.disabled=false;
            }
              
             
             
             
             
             
             if(n.indexOf(seat12j.value) > -1) {
             	  
             	  seat12j.disabled=true;
             	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
               }
            else{
           	 seat12j.disabled=false;
            }
             
             
             
             
             if(n.indexOf(seat15j.value) > -1) {
             	  
             	  seat15j.disabled=true;
             	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
               }
            else{
           	 seat15j.disabled=false;
            }
             
             
             
             
             if(n.indexOf(seat18j.value) > -1) {
             	  
             	  seat18j.disabled=true;
             	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
               }
            else{
           	 seat18j.disabled=false;
            }
             
             
             
             
             if(n.indexOf(seat21j.value) > -1) {
             	  
             	  seat21j.disabled=true;
             	//  document.getElementById("seat03F").setAttribute("disabled", "disabled");
               }
            else{
           	 seat21j.disabled=false;
            }
              
          //    if(n.includes(z.value)){
                	
            //    	z.disabled=true;
                //	console.log(d.value);
              //  }

              
              
              
          //    if(n.includes(b.value)){
                	
            //    	b.disabled=true;
                	//console.log(d.value);
              //  }
              
              //if(n.includes(td.value)){
              	
              	//td.disabled=true;
              	//console.log(d.value);
              //}

              
              
              
            
            
            
       
             
                }
            }
            
            
           
          
           
            
        </script>
        
        
<script>

var i = setInterval(function(){
	   //Call ajax here
	   sendInfo();
	},10000)
</script>

<script>

var k = setInterval(function(){
	   //Call ajax here
	   getInfo();
	},10000)
</script>
        
        
       
        <script>
        window.onload=sendInfo();
     
     
      
 		
        </script>

   
   
   
   

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   


</div> <!-- collapse example  end-->

</div> <!-- end card seat -->





   <!-- end of seat selection -->
   
   
   <!-- start travel protection -->
   
   <div class="row"> <!-- protection row -->

<div class="col ">
 <p class="detail mt-3 mb-0 pb-0">Travel Protection (Recommended)</p>

</div>


</div> <!--  end travel protection heading row -->




<div class="card">




<div class="row">
<div class="col-2 col-sm-2 col-lg-1 ml-2">
 <img class="mt-2 img-fluid" src="protection72.png" alt="Travel Protection "> 

</div> <!-- end col -->

<div class="col">

    <p class="ml-lg-2 ml-md-2 ml-0     mt-2">Travel Protection Coverage Includes:</p>
    
   
      <p class="ml-2">	&#10004; Trip Cancellation</p>
      
       <p class="ml-2">	&#10004; Trip Delay</p>
         <p class="ml-2">	&#10004; Baggage Delay </p>
         
         
         
       
         
         
         
         
        
</div> <!-- end col4 -->

<div class="col-lg mt-4 pt-3 ml-0 pl-0  d-none d-lg-block ">

  
    
   
      <p class="">	&#10004; Trip Interruption</p>
      
       <p class="">	&#10004; Bad Weather</p>
         <p class="">	&#10004; Medical Emergency </p>
         
        
</div> <!-- end col4 -->













</div> <!-- end travel protection info row -->

<div class="row">

<div class="col-1">

</div>
<div class="col">

<hr class="mr-4 ml-4">
</div>


</div> <!-- for hr  of travel protection row end -->


<div class="row">

<div class="col-1">

</div>

<div class="col ml-4">


<div class="form-check">

<input class="form-check-input" type="checkbox" value="" id="defaultCheck1" onclick="tripprotection(this)">

<label class="form-check-label" for="defaultCheck1">
    Yes, I want to protect my trip.
  </label>
</div>

<div class="form-check mt-2">

<input class="form-check-input " type="checkbox" value="" id="defaultCheck2" >

<label class="form-check-label" for="defaultCheck2">
   No, I'm willing to risk my <%= request.getParameter("total")%> trip.
  </label>
</div>







</div>


</div> <!-- for  checkboxes of travel protection row end -->





</div> <!-- end travel  protection card -->




<div class="row"> <!-- price row -->

<div class="col ">
 <p class="detail mt-3 pb-0 mb-0">Price Details</p>

</div>


</div> <!--  end price heading row -->


<div class="card">
<div class="row mt-2 ml-1">

<div class="col-6 col-lg-2">
<p class=""> Travelers</p>

</div>

<div class="col-6 col-lg-4 text-center">



 <input type="text" class="  mobilemont12"  style="max-width:3.4rem;" value="1 Adult" >
</div>



</div>




<div class="card base p-0">

<div class="row  ml-1">

<div class="col-6 col-lg-2">
<p class="pt-2">Base Price</p>



</div>

<div class="col-6 col-lg-4 text-center">

 <input type="text" class="pt-2  mobilemont12" style="background-color:#e7e7e7; max-width:3.4rem;"  value="${param.price}" >
</div>



</div> <!--  end base price row -->


</div>


<div class="row mt-2 ml-1">

<div class="col-6 col-lg-2">
<p class=""> Taxes and Fees</p>

</div>

<div class="col-6 col-lg-4 text-center">

 <input type="text" class=" mobilemont12" style=" max-width:3.4rem;" value="${param.tax}"  >
</div>



</div>  <!--  end taxes -->








<div class="row mt-2 ml-1">

<div class="col-6 col-lg-2">
<p class=""> Travel Insurance</p>

</div>

<div class="col-6 col-lg-4 text-center ">

 <input type="text" class="text-center mobilemont12" style="max-width:3.9rem;" value="Declined" id="insurance" />
</div>



</div>  <!--  end seat price -->








<div class="card">

<div class="row">

<div class="col">

 <div class="accordion" id="accordionExample">
 <div class="card-header" id="headingTwo"> 
 
   <button class="btn btn-link collapsed" type="button"  data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Coupon or PromoCode
        </button>
 
 
 </div> <!--  end cardheader -->
 
     <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
     
      <div class="card-body">
      
     
       <p style="display: inline-block"> I have a Promotional Code:</p> <input type="text" id="pro" name="promo" class="ml-4" style="display: inline-block">
       
     <input type="button" value="Apply" id="ap" class="btn default"  name="submit"  onclick="apply()" /> 
     
     <label id="invalid"></label> 
      
      
       
      </div> <!-- end card-body -->
     
     
     
     
     
 
 </div>  <!-- end collapse2 -->


</div>  <!--  end accordian -->



</div> <!-- end promo col -->






</div> <!-- end promo row -->




</div>  <!-- end card -->







<div class="row mt-2 ml-1">

<div class="col-6 col-lg-2">
<p class=""> Original Price: </p>

</div>

<div class="col-6 col-lg-4 text-center ">

   <input type="text"  id="originalprice" value="${param.total}"  style="max-width:3.9rem;" class="text-center mobilemont12">
</div>



</div>  <!--  original price row  -->






<div class="row mt-2 ml-1">

<div class="col-6 col-lg-2">
<p class=""> Total Discount: </p>

</div>

<div class="col-6 col-lg-4 text-center ">

 <input type="text"  id="discount" value="$0"  style="max-width:3.9rem;" class="text-center mobilemont12 ">
</div>



</div>  <!--  end total discount row  -->






<div class="row mt-2 ml-1">

<div class="col-6 col-lg-2">
<p class=""> Final Price: </p>

</div>

<div class="col-6 col-lg-4 text-center ">

  <input type="text"  name="finaltotals" id="finaltotals" value="${param.total}" style="max-width:3.9rem;"  class="text-center mobilemont12">
          		  
          		   <input type="text"  hidden="hidden" name="hid1" id="fin" value="${param.hid}"   class="">
</div>



</div>  <!--  final end price row  -->










</div> <!--  end entire card -->



<!-- start payment -->


   <div class="row"> 

<div class="col ">
 <p class="detail mt-3 mb-0 pb-0">Payment Info</p>

</div>


</div> <!--  end payment heading row -->



<div class="card">

<div class="row mt-3">

<div class="col-lg-8 col-11">

<div class="form-group">

 <select class="form-control inputfield ml-2 " name="cardtype" placeholder="PaymentMethod" >
                            
                              
                         <option selected>Select</option>
                         <option>Visa</option>
                         <option>Master</option>
                           <option>Discover</option>
                             <option>AmericanExpress</option>
                         
                          </select>


</div>


</div> <!--  end pay col -->




</div> <!-- end pay row -->




<div class="row">
<div class="col-lg-8 col-11">

<div class="form-group">
 <input type="number" class="inputfield ml-2 form-control" onKeyPress="handleKeyPress(event)" name="cardno" placeholder="cardnumber" required>
</div>
</div>


</div> <!--  end 2nd row -->


<div class="row">
<div class="col-lg-8 col-11">

<div class="form-group">
<input type="text" class="inputfield ml-2 form-control" name="expdate" placeholder="expiration date" required >
</div>
</div>


</div> <!--  end expire row -->



<div class="row">
<div class="col-lg-8 col-11">

<div class="form-group">
 <input type="text" class="inputfield ml-2 form-control"  name="vercode" placeholder="verification code" required >
</div>
</div>


</div> <!--  end ver row -->







</div> <!-- end paymnet card -->


<div class="row">
<div class="col-lg-8 col-11">

<p style="text-align:center;font-size:.7rem;" class="ml-5">By clicking BOOK, I agree that I have read and accepted the Ahsan travel Terms and Conditions and Privacy Policy.</p>

</div>

</div> <!-- end privacy row -->


<div class="row ml-5">
<div class="col-lg-8 col-8 text-center">
<div class="form-group">

     <input type="submit"  value="BOOK" name="usubmit " class="btn btn-info  btn-lg ">


</div>

</div>


</div>



</form> <!--  end entire form -->
</div>  <!--  end of entrie col -->



<!--  start of col-3 side -->




<div class="col-3 mt-5 d-none d-lg-block d-xl-block d-md-block">

<div class="aside">


<div class="card mt-3">
<div class="card-body">

<div class="row ">
<div class="col text-center">

<p class="mb-0 pb-0 mt-1" style="color:#666;font-weight:bold; top:100px;">Why Book with Us?</p>



</div> <!-- end 1st col -->




</div>  <!--  end first row -->




<div class="row mt-0">

<div class="col">

<hr class="ml-3 mr-3 mb-0 pb-1" >

</div>

</div> <!--  end hr -->


<div class="row">

<div class="col">



<p style="color:#666;">  <span style="color:#666;font-weight:bold;">&#10003; </span>Cheap, quick and easy</p>

</div>


</div>


<div class="row">

<div class="col">



<p style="color:#666;">  <span style="color:#666;font-weight:bold;">&#10003; </span>Real-time,up-to-date pricing</p>

</div>


</div>


<div class="row">

<div class="col">



<p style="color:#666;">  <span style="color:#666;font-weight:bold;">&#10003; </span>24/7 Customer Service</p>

</div>


</div>



<div class="row">

<div class="col">



<p style="color:#666;">  <span style="color:#666;font-weight:bold;">&#10003; </span>New Deals Update Daily</p>

</div>


</div>



<div class="row">

<div class="col">



<p style="color:#666;">  <span style="color:#666;font-weight:bold;">&#10003; </span>Best Service Award Winner</p>

</div>


</div>



</div>

</div> <!--  end of card -->


<!--  end ahsan side -->

<div class="card mt-5">
<div class="card-body">

<div class="row">


<div class="col text-center">
<p style="color:#666; font-weight:bold;">Book Sercurely with Ahsan Airline</p>




</div>


</div> <!--  end heading row -->

<div class="row">


<div class="col">

<hr class="ml-3 mr-3 mt-0 mb-0 pb-1" >

</div>

</div> <!-- end hr row -->



<div class="row">

<div class="col">



<p style="color:#666;">  <span style="color:#666;">&#10003; </span>Transactions are 100% secure</p>

</div>


</div> <!--  end 1st row -->


<div class="row">

<div class="col">



<p style="color:#666;">  <span style="color:#666; font-weight:bold;">&#10003; </span>Deals with over 1000 international airlines</p>

</div>


</div> <!--  end 2nd row -->




<div class="row">

<div class="col">



<p style="color:#666;">  <span style="color:#666;font-weight:bold;">&#10003; </span>Ahsan Airline has passed AntiVirus daily security scan</p>

</div>


</div> <!--  end 2nd row -->

</div> <!-- end card body -->


</div> <!-- end card -->


















<div class="card mt-5">
<div class="card-body">

<div class="row">


<div class="col text-center">
<p style="color:#666; font-weight:bold;">Need help?</p>




</div>


</div> <!--  end heading row -->

<div class="row">


<div class="col">

<hr class="ml-3 mr-3 mt-0 mb-0 pb-1" >

</div>

</div> <!-- end hr row -->



<div class="row">

<div class="col">



<p style="color:#666;">Our team of professional travel experts are ready to help! Call us and we'll help you plan the perfect trip for you and your family.</p>

</div>


</div> <!--  end 1st row -->


<div class="row">

<div class="col">



<p class="" style="color:#666;font-weight:bold;"> CALL US TOLL FREE 24/7</p>

</div>


</div> <!--  end 2nd row -->




<div class="row">

<div class="col">


<p style="color:#666;"> <i class="fas fa-mobile-alt"></i><span style="color:#666;font-weight:bold;font-size:1.4rem;"> 1-800-987-9862</span></p>



</div>


</div> <!--  end 2nd row -->

</div> <!-- end card body -->


</div> <!-- end card -->














</div> <!--  end aside -->
</div> <!--  end of entire col-4 -->







</div> <!--  end of entire row -->




</div> <!-- end container fluid -->

</section>

<!--  

<script>

$('.SeeMor').click(function(){
    var $this = $(this).toggleClass('SeeMor');
       if($(this).hasClass('SeeMor'))
               {
             $(this).text('Show Seat Map');

           } else {
             $(this).text('Hide Seat Map');
               }
});
	  </script>
	  -->
	  
	  
	   <% String pri = (String) request.getParameter("total"); %>
	  <script>
var tot=document.getElementById('finaltotals').value;

function tripprotection(protection){
	

	
	
	
	var tot=document.getElementById('finaltotals').value;
	
	
	console.log(tot+"too");

	 var val ="<%= pri%>";
	
	if(protection.checked){
		var finaltotal=document.getElementById('finaltotals').value;
		
		var orignal=document.getElementById('originalprice').value;
		
		
		
		var finaltotal1=Number(finaltotal.replace('$', ''));
		var orignal1=Number(orignal.replace('$', ''));
		
		var finaltotal2=finaltotal1+19;
		var orignal2=orignal1+19;
		
	document.getElementById('finaltotals').value="$"+finaltotal2;
		
		document.getElementById('originalprice').value="$"+orignal2;
		
		
		
		
		 var value ="<%= pri%>";
		 
		 
		 
		 
		 
		
		
		
		var x=19;
	//	document.getElementById('insurance').value=x;
	
	
	
//	var money=Number(value.replace('$', ''));
	
	
	var money1=Number(tot.replace('$', ''));
	
	//var m=money+x;
	
	var m1=money1+x;
	//console.log("mo  "+m1+"money");
		
		

		
		
		document.getElementById('insurance').value="$"+x;
		
		
		
		
		
		//document.getElementById('finaltotals').innerHTML="$"+m;
		
		
	//	document.getElementById('finaltotals').value="$"+m1;
		
		//document.getElementById('originalprice').value="$"+m1;
		
		m1="";
	//	alert("ya");
		
	}
	
	else{
		document.getElementById('insurance').value="declined";
		
		var fin=document.getElementById('finaltotals').value;
		
		var ori=document.getElementById('originalprice').value;
		
		var fin1=Number(fin.replace('$', ''));
		
		var fin2=fin1-19;
		
		var ori1=Number(ori.replace('$', ''));
		var ori2=ori1-19;
		
		document.getElementById('finaltotals').value=fin2;
		document.getElementById('originalprice').value=ori2;
		
		
	}
	
}

</script>


<script>
var tot1
function apply(){
	var promo=document.getElementById('pro').value;
	
	
	
	var code="ahsan19";
	

	
	  if(promo.indexOf(code) > -1) {
		  
		  var count=0;
		  count++;
		  
      	  
			
			var invalid=" ";
   
      	
			document.getElementById('invalid').innerHTML=invalid;
			
			 tot1=document.getElementById("finaltotals").value;
			 
				var money=Number(tot1.replace('$', ''));
			
		
			
			document.getElementById("discount").value="$10";
			
		
		
			var lg=parseInt(tot1);
			
			var tots=money-10;
			
			console.log(tots+"this");
			
			
			document.getElementById('finaltotals').value=tots;
			
			
			document.getElementById('pro').value="";
			
			var btn = $("#ap");
			var clickHandler = btn[0].onclick;
			btn[0].onclick = false;
		  
	  }
	
	else{
		
		
		console.log("invalid");
		
		var invalid="invalid promo code";
		
		document.getElementById('invalid').innerHTML=invalid;
	
	}
	
}
</script>

<script>

function handleKeyPress(e) {
    let newValue = e.target.value + e.key;
    if (
    // It is not a number nor a control key?
    isNaN(newValue) && 
    e.which != 8 && // backspace
    e.which != 17 && // ctrl
    newValue[0] != '-' || // minus
    // It is not a negative value?
    newValue[0] == '-' &&
    isNaN(newValue.slice(1)))
        e.preventDefault(); // Then don't write it!
}

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
	  

  
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
           <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>

</body>
</html>