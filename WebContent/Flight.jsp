
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
<meta name="viewport"
content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0">
        <title>Choose Flights</title>
        
        
      
          <link rel="stylesheet" href="css/bootstrap.min.css">
          
          
           <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
  
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

			<nav class="navbar navbar-expand-md navbar-light navbar-expand-md ">


				<a class="navbar-brand" href="index.jsp"> AHSAN AIRLINE <img
					src="goldenlogoahsan.png" alt="logo">

				</a>

				<button data-toggle="collapse" data-target="#navbarToggler"
					type="button" class="navbar-toggler">
					<span class="navbar-toggler-icon"></span>
				</button>
				<!--so as soon i enter below small size icon appear-->
				<!--this bootom line is for data-target-->
				<div class="collapse navbar-collapse" id="navbarToggler">





					<ul class="navbar-nav">




						<li class="nav-item dropdown">
							<!--this anchortag will now play a role of the button
            u can see in the website what i m talking about--> <a
							class="nav-link  dropdown-toggle" data-toggle="dropdown"
							role="button" href="#">Bookings</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="AllBookings.jsp">All Bookings</a>
								<a class="dropdown-item " href="PreviousBookings.jsp">Previous
									Bookings</a> <a class="dropdown-item " href="CurrentBookings.jsp">Current
									Bookings</a>


							</div>
						</li>

						<li class="nav-item"><a class="nav-link active" href="#">Choose
								Flight</a></li>

						<li class="nav-item"><a class="nav-link "
							href="BookFlight.jsp">Book Flight</a></li>



					</ul>



				</div>



			</nav>
		</div>


	</header>

           
        
          <style>
        /* override Bootstrap's container */
        .container-fluid {
            padding-right:0;
            padding-left:0;
            margin-right:auto;
            margin-left:auto
         }
         
         
         hr {
    color: black;
  padding:0;
    
}
    </style>
        
        
        
       
       
<div class="container-fluid  p-0 m-0">

<div class="row">

<div class="col-xs-12 col-md-12 col-sm-12 d-sm-block d-xs-block d-md-block   d-xl-none d-lg-none">

<div class="card p-2"  style="background-color:#118acb; ">



<div class="row">

<div class="col-7 p-0 m-0">



<input type="text"  class=" form-control  text-left pr-0 fontstylingmobile" style="max-width:11.4rem;" name="depcode" value="${requestScope.dcode} &#8594; ${requestScope.decode}  ${requestScope.day}
, ${requestScope.month}${requestScope.dat} &#124;" >

</div>



 
          <label class= " text-left p-0 m-0 pt-2 fontstylingmobile" style="max-width:6rem;">1 traveler</label>

 
      
          
          <div class="col">
          
          <input type="submit" class= " btn  btn-rounded mobileeditbutton p-0 pl-1 pr-1 mt-2"  value="Edit" style="background-color:#118acb;" />
          
           </div>

  <!-- end input group    style="width:2vw;"-->


 <!--  end col -->



</div> <!--  end row -->










</div> <!-- card end -->



</div>



</div>



</div>


 <!-- end bottomheader -->
        
        
        
        
        
        

<section> <!-- section for mobile -->
<div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12    d-xl-none   d-lg-none">

<div class="card" id="flightdetailm">
<form action="FinalBookings.jsp">
<div class="row">
<div class="col">

  <div class="input-group">
            
           
          
           <input type="text" id="dayz" hidden="hidden" class="dayz form-control fontstyling dayz" name="depday"   value=${day}   style="width: 4.2rem;" >
 
   <input type="text"  id="depmonth" hidden="hidden" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh" hidden="hidden"  class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
          
           
              
          <input type="text" id="airlinelable"  class="form-control  m-0 p-0 mt-1 pt-3 text-bottom mobileairlinename "  value="Humming Airline" name="airlinename"   >
          
                     <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput}>
                <input type="submit" id="totalsm1"  class=" btn btn-info  btn-lg form-control  float-right text-right text-bottom mt-1"  name="total" />  
                
                

                
                
                
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control   p-0 m-0     text-left text-top mobiletotaltime mobilemont12"  id="totaltimem" name="totaltime">



</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-1">

    <input type="image"  name="flys" src="hmmingmobile.png" class="  mobileimageborder  "   />
    </div>
    
    <div class="col-2 p-0 ml-2 m-0 pl-1">
<input type="text"  class=" form-control mobileflightdetail1   text-left"  name="depcode" value=${dcode}    >



</div>


<div class="col-2 p-0 m-0">
  
         <input type="text"  id="timem" name="deptime"  class="form-control p-0  m-0 text-left mobileflightdetail"  >
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width-15%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem2" class=" form-control  p-0 mobileflightdetail "  name="arrtime"  >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="text"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1"  name="descode" value=${decode}>



                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->



</form>

</div> <!-- end row  end card-->


</div> <!-- end entire 12 col mobile -->

</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->

<div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12    d-xl-none   d-lg-none">

<div class="card" id="flightdetailm1">
<form action="FinalBookings.jsp">
<div class="row">
<div class="col">

  <div class="input-group">
  
                       
           <input type="text" id="dayz" hidden="hidden" class="dayz form-control fontstyling dayz" name="depday"   value=${day}   style="width: 4.2rem;" >
 
   <input type="text"  id="depmonth" hidden="hidden" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh" hidden="hidden" class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
              
          <input type="text" id="airlinelable"  class="form-control  m-0 p-0 mt-1 pt-3 text-bottom mobileairlinename "  value="Pinterest Airline" name="airlinename"   >
          
                     <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput}  >
                <input type="submit" id="totalsm2"  class="form-control float-right text-right mt-1 btn btn-info  btn-lg "  name="total" />  
                                              
                                 
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control   p-0 m-0     text-left text-top mobiletotaltime mobilemont12"  id="totaltimem2" name="totaltime">

 

</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-2">

    <input type="image"  name="flys" src="pinterestmobile.png" class="  mobileimageborder  "   />
    </div>
    
    <div class="col-2 p-0 ml-2 m-0 pl-1">
<input type="text"  class=" form-control mobileflightdetail1   text-left"  name="depcode" value=${dcode}   >

</div>


<div class="col-2 p-0 m-0">
  
         <input type="text"  id="timem3" name="deptime"  class="form-control p-0  m-0 text-left mobileflightdetail"  >
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width-15%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem4" class=" form-control  p-0 mobileflightdetail "  name="arrtime"  >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="text"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1"  name="descode" value=${decode}    >


                 
                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->

</form>

</div> <!-- end row  end card-->

</div> <!-- end entire 12 col mobile -->

</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->


<div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12    d-xl-none   d-lg-none">

<div class="card" id="flightdetailm2">
<form action="FinalBookings.jsp">
<div class="row">
<div class="col">

  <div class="input-group">
            
        <input type="text" id="dayz" hidden="hidden" class="dayz form-control fontstyling dayz" name="depday"   value=${day}  style="width: 4.2rem;" >
 
   <input type="text"  id="depmonth" hidden="hidden" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh" hidden="hidden" class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
              
          <input type="text" id="airlinelable"   class="form-control  m-0 p-0 mt-1 pt-3 text-bottom mobileairlinename "  value="Stumble Airline" name="airlinename"   >
          
                     <input type="text"  class="hid form-control " hidden="hidden"  name="hid" value= ${requestScope.dateinput}  >
                <input type="submit"  id="totalsm3"  class="form-control float-right text-right mt-1 btn btn-info  btn-lg "  name="total" />  
                
                
                
                
                
                
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control   p-0 m-0 text-left text-top mobiletotaltime mobilemont12"  id="totaltimem3" name="totaltime">

 

</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-2">

    <input type="image"  name="flys" src="stumblmobile.png" class="  mobileimageborder  "   />
    </div>
    
    <div class="col-2 p-0 ml-2 m-0 pl-1">
<input type="text"  class=" form-control mobileflightdetail1   text-left"  name="depcode" value=${dcode}   >

</div>


<div class="col-2 p-0 m-0">
  
         <input type="text"  id="timem5" name="deptime"  class="form-control p-0  m-0 text-left mobileflightdetail">
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width-15%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem6" class=" form-control  p-0 mobileflightdetail "  name="arrtime" >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="text"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1"  name="descode" value=${decode}    >


                 
                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->

</form>

</div> <!-- end row  end card-->


</div> <!-- end entire 12 col mobile -->


</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->

<div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12    d-xl-none   d-lg-none">

<div class="card" id="flightdetailm3">
<form action="FinalBookings.jsp">
<div class="row">
<div class="col">

  <div class="input-group">
            
           <input type="text" id="dayz" hidden="hidden" class="dayz form-control fontstyling dayz" name="depday"   value=${day}  style="width: 4.2rem;" >
 
   <input type="text"  id="depmonth" hidden="hidden" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month} style="width: 3.5rem;" >
            
           <input type="text" id="gh" hidden="hidden" class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
              
          <input type="text" id="airlinelable"  class="form-control  m-0 p-0 mt-1 pt-3 text-bottom mobileairlinename "  value="Star Airline" name="airlinename"   >
          
                     <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput}  >
                <input type="submit" id="totalsm4"  class="form-control float-right text-right mt-1 btn btn-info  btn-lg "  name="total" />  
                
                
                
                
                
                
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control   p-0 m-0     text-left text-top mobiletotaltime mobilemont12"  id="totaltimem4" name="totaltime">

 

</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-2">

    <input type="image"  name="flys" src="starmobile.png" class="  mobileimageborder  "   />
    </div>
    
    <div class="col-2 p-0 ml-2 m-0 pl-1">
<input type="text"  class=" form-control mobileflightdetail1   text-left"  name="depcode" value=${dcode}    >

</div>


<div class="col-2 p-0 m-0">
  
         <input type="text"  id="timem7" name="deptime"  class="form-control p-0  m-0 text-left mobileflightdetail"  >
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width-15%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem8" class=" form-control  p-0 mobileflightdetail "  name="arrtime" >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="text"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1"  name="descode" value=${decode}    >


                 
                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->

</form>

</div> <!-- end row  end card-->




</div> <!-- end entire 12 col mobile -->


</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->



<div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12    d-xl-none   d-lg-none">

<div class="card"id="flightdetailm4">
<form action="FinalBookings.jsp">
<div class="row">
<div class="col">

  <div class="input-group">
            
           
           <input type="text" id="dayz" hidden="hidden" class="dayz form-control fontstyling" name="depday"   value= ${requestScope.day}   style="width: 4.2rem;" >
 
   <input type="text"  id="depmonth" hidden="hidden" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${requestScope.month} style="width: 3.5rem;" >
            
           <input type="text" id="gh" hidden="hidden" class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${requestScope.dat}  style="width: 2.8rem;" >
           
              
          <input type="text" id="airlinelable"  class="form-control  m-0 p-0 mt-1 pt-3 text-bottom mobileairlinename "  value="Crown Airline" name="airlinename"   >
          
                     <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value= ${requestScope.dateinput} >
                <input type="submit" id="totalsm5"  class="form-control float-right text-right mt-1 btn btn-info  btn-lg "  name="total" />  
                
                
                
                
                
                
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control   p-0 m-0 text-left text-top mobiletotaltime mobilemont12"  id="totaltimem5" name="totaltime">

 

</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-2">

    <input type="image"  name="flys" src="crownmobile.png" class="  mobileimageborder  "   />
    </div>
    
    <div class="col-2 p-0 ml-2 m-0 pl-1">
<input type="text"  class=" form-control mobileflightdetail1   text-left"  name="depcode" value=${dcode}   >

</div>


<div class="col-2 p-0 m-0">
  
         <input type="text"  id="timem9" name="deptime"  class="form-control p-0  m-0 text-left mobileflightdetail"  >
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width-15%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem10" class=" form-control  p-0 mobileflightdetail "  name="arrtime"  >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="submit"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1  "  name="descode" value=${decode}   >


                 
                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->

</form>

</div> <!-- end row  end card-->





</div> <!-- end entire 12 col mobile -->


</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->






<div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12    d-xl-none   d-lg-none">

<div class="card" id="flightdetailm5">
<form action="FinalBookings.jsp">
<div class="row">
<div class="col">

  <div class="input-group">
            
             <input type="text" id="dayz" hidden="hidden" class="dayz form-control fontstyling dayz" name="depday"   value= ${requestScope.day}   style="width: 4.2rem;" >
 
   <input type="text"  id="depmonth" hidden="hidden" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${requestScope.month} style="width: 3.5rem;" >
            
           <input type="text" id="gh" hidden="hidden" class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${requestScope.dat}  style="width: 2.8rem;" >
           
              
          <input type="text" id="airlinelable"  class="form-control  m-0 p-0 mt-1 pt-3 text-bottom mobileairlinename "  value="Diamond Airline" name="airlinename"   >
          
                     <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} >
                <input type="submit" id="totalsm6"  class="form-control float-right text-right mt-1 btn btn-info  btn-lg "  name="total" />  
                
                
                
                
                
                
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control   p-0 m-0     text-left text-top mobiletotaltime mobilemont12"  id="totaltimem6" name="totaltime">

 

</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-2">

    <input type="image"  name="flys" src="diamondmobile.png" class="  mobileimageborder  "   />
    </div>
    
    <div class="col-2 p-0 ml-2 m-0 pl-1">
<input type="text"  class=" form-control mobileflightdetail1   text-left"  name="depcode" value=${dcode}    >

</div>


<div class="col-2 p-0 m-0">
         <input type="text"  id="timem11" name="deptime"  class="form-control p-0  m-0 text-left mobileflightdetail"  >
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width-15%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem12" class=" form-control  p-0 mobileflightdetail "  name="arrtime"  >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="text"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1"  name="descode" value=${decode}  >


                 
                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->

</form>

</div> <!-- end row  end card-->





</div> <!-- end entire 12 col mobile -->



</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->




<div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12    d-xl-none   d-lg-none">

<div class="card" id="flightdetailm6">
<form action="FinalBookings.jsp">
<div class="row">
<div class="col">

  <div class="input-group">
            
           <input type="text" id="dayz" hidden="hidden" class="dayz form-control fontstyling dayz" name="depday"   value= ${requestScope.day}   style="width: 4.2rem;" >
 
   <input type="text"  id="depmonth" hidden="hidden" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${requestScope.month} style="width: 3.5rem;" >
            
           <input type="text" id="gh" hidden="hidden" class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${requestScope.dat}  style="width: 2.8rem;" >
          
           
              
          <input type="text" id="airlinelable"  class="form-control  m-0 p-0 mt-1 pt-3 text-bottom mobileairlinename "  value="Travel Airline" name="airlinename"   >
          
                     <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} >
                <input type="submit" id="totalsm7"  class="form-control float-right text-right mt-1 btn btn-info  btn-lg "  name="total" />  
                
                
                
                
                
                
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control   p-0 m-0     text-left text-top mobiletotaltime mobilemont12"  id="totaltimem7" name="totaltime">

 

</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-2">

    <input type="image"  name="flys" src="travelmobile.png" class="  mobileimageborder  "   />
    </div>
    
    <div class="col-2 p-0 ml-2 m-0 pl-1">
<input type="text"  class=" form-control mobileflightdetail1   text-left"  name="depcode" value=${dcode}   >

</div>


<div class="col-2 p-0 m-0">
  
         <input type="text"  id="timem13" name="deptime"  class="form-control p-0  m-0 text-left mobileflightdetail"  >
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width-15%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem14" class=" form-control  p-0 mobileflightdetail "  name="arrtime"  >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="text"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1"  name="descode" value=${decode}    >


                 
                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->

</form>

</div> <!-- end row  end card-->



</div> <!-- end entire 12 col mobile -->

</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->



<div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12    d-xl-none   d-lg-none">

<div class="card" id="flightdetailm7">
<form action="FinalBookings.jsp">
<div class="row">
<div class="col">

  <div class="input-group">
             <input type="text" id="dayz" hidden="hidden" class="dayz form-control fontstyling dayz" name="depday"   value= ${requestScope.day}   style="width: 4.2rem;" >
 
   <input type="text"  id="depmonth" hidden="hidden" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${requestScope.month} style="width: 3.5rem;" >
            
           <input type="text" id="gh" hidden="hidden" class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${requestScope.dat}  style="width: 2.8rem;" >
           
          
              
          <input type="text" id="airlinelable"  class="form-control  m-0 p-0 mt-1 pt-3 text-bottom mobileairlinename "  value="Bunny Airline" name="airlinename"   >
          
                     <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} >
                <input type="submit" id="totalsm8"  class="form-control float-right text-right mt-1 btn btn-info  btn-lg "  name="total" />  
                
                
                
                
                
                
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control p-0 m-0 text-left text-top mobiletotaltime mobilemont12"  id="totaltimem8" name="totaltime">

 

</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-2">

    <input type="image"  name="flys" src="bunnymobile.png" class="  mobileimageborder  "   />
    </div>
    
    <div class="col-2 p-0 ml-2 m-0 pl-1">
<input type="text"  class=" form-control mobileflightdetail1 text-left"  name="depcode" value=${dcode}    >

</div>


<div class="col-2 p-0 m-0">
  
         <input type="text"  id="timem15" name="deptime"  class="form-control p-0  m-0 text-left mobileflightdetail"  >
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width-15%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem16" class=" form-control  p-0 mobileflightdetail "  name="arrtime"  >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="text"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1"  name="descode" value=${decode}   >


                 
                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->

</form>

</div> <!-- end row  end card-->




</div> <!-- end entire 12 col mobile -->



</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->



<div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12    d-xl-none   d-lg-none">

<div class="card" id="flightdetailm8">
<form action="FinalBookings.jsp">
<div class="row">
<div class="col">

  <div class="input-group">
            
           <input type="text" id="dayz" hidden="hidden" class="dayz form-control fontstyling dayz" name="depday"   value= ${requestScope.day}   style="width: 4.2rem;" >
 
   <input type="text"  id="depmonth" hidden="hidden" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${requestScope.month} style="width: 3.5rem;" >
            
           <input type="text" id="gh" hidden="hidden" class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${requestScope.dat}  style="width: 2.8rem;" >
          <input type="text" id="airlinelable"  class="form-control  m-0 p-0 mt-1 pt-3 text-bottom mobileairlinename "  value="Dolphin Airline" name="airlinename"   >
          
                     <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput}  >
                <input type="submit" id="totalsm9"  class="form-control float-right text-right mt-1 btn btn-info  btn-lg "  name="total" />  
                
                
                
                
                
                
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control p-0 m-0 text-left text-top mobiletotaltime mobilemont12"  id="totaltimem9" name="totaltime">

 

</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-2">

    <input type="image"  name="flys" src="dolphinmobile.png" class="  mobileimageborder  "   />
    </div>
    
    <div class="col-2 p-0 ml-2 m-0 pl-1">
<input type="text"  class=" form-control mobileflightdetail1   text-left"  name="depcode" value=${dcode}   >

</div>


<div class="col-2 p-0 m-0">
  
         <input type="text"  id="timem17" name="deptime"  class="form-control p-0  m-0 text-left mobileflightdetail"  >
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width-15%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem18" class=" form-control p-0 mobileflightdetail "  name="arrtime" >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="text"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1"  name="descode" value=${decode}   >


                 
                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->

</form>

</div> <!-- end row  end card-->


</div> <!-- end entire 12 col mobile -->

</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->

<div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12  d-xl-none   d-lg-none">

<div class="card" id="flightdetailm9">
<form action="FinalBookings.jsp">
<div class="row">
<div class="col">

  <div class="input-group">
            
          <input type="text" id="dayz" hidden="hidden" class="dayz form-control fontstyling dayz" name="depday"   value= ${requestScope.day}   style="width: 4.2rem;" >
 
   <input type="text"  id="depmonth" hidden="hidden" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${requestScope.month} style="width: 3.5rem;" >
            
           <input type="text" id="gh" hidden="hidden" class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${requestScope.dat}  style="width: 2.8rem;" >  
       
           
              
          <input type="text" id="airlinelable"  class="form-control  m-0 p-0 mt-1 pt-3 text-bottom mobileairlinename "  value="Lion's Airline" name="airlinename"   >
          
                     <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput}  >
                <input type="submit" id="totalsm10"  class="form-control float-right text-right mt-1 btn btn-info  btn-lg "  name="total" />  
                
                
                
                
                
                
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control   p-0 m-0     text-left text-top mobiletotaltime mobilemont12"  id="totaltimem10" name="totaltime">

 

</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-2">

    <input type="image"  name="flys" src="lionmobile.png" class="  mobileimageborder  "   />
    </div>
    
    <div class="col-2 p-0 ml-2 m-0 pl-1">
<input type="text"  class=" form-control mobileflightdetail1   text-left"  name="depcode" value=${dcode}    >

</div>


<div class="col-2 p-0 m-0">
  
         <input type="text"  id="timem19" name="deptime"  class="form-control p-0  m-0 text-left mobileflightdetail"  >
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width-15%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem20" class=" form-control  p-0 mobileflightdetail "  name="arrtime"  >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="text"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1"  name="descode" value=${decode}    >


                 
                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->

</form>

</div> <!-- end row  end card-->



</div> <!-- end entire 12 col mobil -->




</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->




<div class="container-fluid ml-0 pl-0 mr-0 pr-0">

<div class="row">

<div class="col-xs-12 col-sm-12 col-md-12 d-xl-none   d-lg-none">

<div class="card" id="flightdetailm10">
<form action="FinalBookings.jsp">
<div class="row">
<div class="col">

  <div class="input-group">
            
           <input type="text" id="dayz" hidden="hidden" class="dayz form-control fontstyling dayz" name="depday"   value= ${requestScope.day}   style="width: 4.2rem;" >
 
   <input type="text"  id="depmonth" hidden="hidden" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${requestScope.month} style="width: 3.5rem;" >
            
           <input type="text" id="gh" hidden="hidden" class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${requestScope.dat}  style="width: 2.8rem;" >
           
              
          <input type="text" id="airlinelable"  class="form-control  m-0 p-0 mt-1 pt-3 text-bottom mobileairlinename "  value="Dots Airline" name="airlinename"   >
          
                     <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput}  >
                <input type="submit" id="totalsm11"  class="form-control float-right text-right mt-1 btn btn-info  btn-lg "  name="total" />  
                
                
                
                
                
                
</div> <!-- end input -->
</div> <!-- end mobile 1st col humming -->


</div> <!-- end mobile 1st row humming -->

<div class="row pt-0 mt-0 ">

<div class="col">


 
   <input type="text" class=" form-control   p-0 m-0     text-left text-top mobiletotaltime mobilemont12"  id="totaltimem11" name="totaltime">

 

</div> <!-- end 2nd col humming -->

</div> <!-- end 2nd row  humming-->


<div class="row">

<div class="col-1 pr-0 pt-0 mr-2">

    <input type="image"  name="flys" src="dotsmobile.png" class="  mobileimageborder  "   />
    </div>
    
    <div class="col-2 p-0 ml-2 m-0 pl-1">
<input type="text"  class=" form-control mobileflightdetail1   text-left"  name="depcode" value=${dcode}   >

</div>


<div class="col-2 p-0 m-0">
  
         <input type="text"  id="timem21" name="deptime" name="deptime" class="form-control p-0  m-0 text-left mobileflightdetail"  >
        <!--   #747474  <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
                  
</div>
<div class="col-1 p-0 m-0">

            <hr  align="left" style="width-15%; border-color:black;"  class="pl-0 align-left" />

</div>
                 
                 <div class="col-2 p-0 m-0 align-left">
                 
                   <input type="text"  id="timem22" class=" form-control  p-0 mobileflightdetail "  name="arrtime" >
                 
                 </div>
                 
                 <div class="col-2 p-0 m-0">
                 
                 
             
<input type="text"  class=" form-control p-0 m-0  text-left pl-3 mobileflightdetail1"  name="descode" value=${decode}   >


                 
                 
                 </div>
                 
      
<!-- end input group -->


</div> <!-- end row -->

</form>

</div> <!-- end row  end card-->



</div> <!-- end entire 12 col mobil -->


</div> <!-- end of entire 12 row -->

</div> <!--  end of entire container -->


</section> <!-- end section for mobile -->



<section >



     <div class="container-fluid mt-5 ml-0">
            
            <div class="row">
            
            
            <div class="col-md-4 col-lg-3 d-none d-lg-block">
            
        <!--  -->    <div class="card pl-1">
            
            
            
       
              
       <!--   <div  class="cardbody"-->  
            
            
            
            
            
               <div class="row">
            
            <div class="col">
            
                <form >
             
            <div class="form-group">
          
        <input type="text" class="form-control" disabled  name= "ak" value=${ahsan} />
            </div>
            
           
            <div class="form-group">
         
         <input  type="text" class="form-control" disabled style="vertical-align:top;" value=${ahsan1}  />
            </div>
            
            
            
              <div class="form-inline">
  <div class="form-group" >
  
    <input  type="date" class="form-control"  name="dates" id="da" value=${dateinput} style="max-width:200px;"  >
    
   
    <select class="form-control travelersfield" name="" id="" style="max-width:148px;">
                  <option selected>Travelers</option> 
                  <option>1</option>
                  

                </select>
               
  </div>
</div>
            
            
           
           
           <div class="form-group text-center mt-2">
         
  <button type="button" style="width:200px;" onclick="setdetails();day()" class="   btn btn-primary   ">Submit</button>
            </div>
                </form>
                
              
            </div>
            
            
            </div>
            
            
            
            
        <!--   </div>  cardbody-->   
            
            
            
            </div>  <!-- end of 1st card -->
            
            
            
            
            
            
            
            <div class="card mt-2">
            
          
            
            
            <div class="row">
            <div class="col">
            
            
              <form >
          <label for="subscribe"  class="ml-3 pl-5 pb-0 " style="font-weight:bold;font-size:1.1vw;">GET AN ALERT WHEN <br>THE PRICE DROPS</label> 
         
      
  
           <input type="image"  class="img-fluid " src="graphs2.png" alt="Yearly Price Trend" style="vertical-align:bottom;"/>
         
        <div class="form-group mb-0 ">
        
        <span class="ml-5 pl-3 text-center" style="color:orange; font-weight:bold;"  id="amit"> </span> 
       
         <input type="email" id="subscribe" class="form-control input-lg  ml-0  ml-lg-5 " placeholder="Enter your email" style="max-width:250px;">
     </div>
      
     
 
     
   		   
   		        <button type="button" id="alert" onclick="sendInfo()" class="btn btn-primary ml-5" style="width:250px; vertical-align:top;"> <i class="far fa-bell  "></i>&nbsp; SUBSCRIBE</button>    

   
   		      
   		     
 
    </form>
                     
        
         
     
             </div>
            
            </div>
            
            
            
           
            
            
      
            
            
            </div>   <!-- end of 2nd card -->
            
            
            
              <div class="row mt-3" >
            
            <div class="col text-center  ">
            
             <p class="flightdeals"><B><i>Ahsan Travel Top Flight Deals<br> Updated Daily </i></B> </p>
            </div>
            
            
            </div>     <!--  end of row -->
            
            
            
         
            <div class="card mt-2" id="dc">
          <!--    <div class="card-body">          -->
            
            <div class="row ">
            
            <div class="col text-center">
            
               <form action="BookFlight.jsp" >
           
    <div class="dullescontainer">
        <input type="hidden" value="Washington-Dulles IAD" name="fl" />

          
             <input type="image"  class="img-fluid " src="DCs.jpg" alt="Washington DC" style="vertical-align:bottom;"/>
             
               <div class="bottom-left">United States</div>
               
               <div class="bottom-right">from $600</div>
             
             </div> <!-- end dulles container -->
             
        
         
    </form>
            
            </div>
            
            
            
            </div>
            
            
        <!--      </div> -- cardbody -->
            
            
            
            </div>  <!-- end of DC card col -->
            
            
            
              <div class="card mt-2" id="paris">
           
            
            <div class="row">
            
            <div class="col text-center">
            
               <form action="BookFlight.jsp" >
           
          <div class="dullescontainer">
        <input type="hidden" value="Paris-Charles De Gaulle CDG" name="fl" />
        
         <input type="image"  class="img-fluid" name="flys" src="paris.jpg" alt="Paris" style="vertical-align:bottom;"/>
        
    
         <div class="bottom-left">France</div>
               
               <div class="bottom-right">from $710</div>
    
         
       </div> <!-- end dullescontainer -->
         
    </form>
            
            </div>
            
            
            
            </div>
            
            
           
            
            
            
            </div> <!-- end of paris card col-->
            
            
            
            
                <div class="card mt-2" id="peru">
        
            
            <div class="row">
            
            <div class="col text-center">
            
               <form action="BookFlight.jsp" >
           
     <div class="dullescontainer">
         
         
         
            <input type="hidden" value="Peru/Grissom Aeroplex IND" name="fl" />
        
   
      
            <input type="image"  class="img-fluid" name="flys" src="peru2.jpg" alt="Peru" style="vertical-align:bottom;"/>
    
         <div class="bottom-left">Peru</div>
               
               <div class="bottom-right">from $545</div>
    
         
       </div> <!-- end dullescontainer -->
         
       
         
    </form>
            
            </div>
            
            
            
            </div>
            
            
          
            
            
            
            </div> <!-- end of peru card col-->
            
            
            
            
                     <div class="card mt-2" id="canada">
        
            
            <div class="row">
            
            <div class="col text-center">
            
               <form action="BookFlight.jsp" >
           
          
         <div class="dullescontainer">
    
         
            <input type="hidden" value="Ontario Int'l ONT" name="fl" />
        
         <input type="image"  class="img-fluid" name="flys" src="canada2.jpg" alt="Canada" style="vertical-align:bottom;"/>
       
         
         <div class="bottom-left">Canada</div>
               
               <div class="bottom-right">from $449</div>
    
         
       </div> <!-- end dullescontainer -->
    </form>
            
            </div>
            
            
            
            </div>
            
            
          
            
            
            
            </div> <!-- end of canada card col-->
            
            
            
            
                    <div class="card mt-2 " id="egypt">
            
            
            <div class="row">
            
            <div class="col text-center">
            
               <form action="BookFlight.jsp" >
           
        <div class="dullescontainer">
         
            <input type="hidden" value="Cairo CAI" name="fl" />
        
         <input type="image"  class="img-fluid  " name="flys" src="egypt2.jpg" alt="Egypt" style="vertical-align:bottom;"/>
       
         
         
         <div class="bottom-left">Egypt</div>
               
               <div class="bottom-right">from $890</div>
    
         
       </div> <!-- end dullescontainer -->
         
    </form>
            
            </div>
            
            
            
            </div>
            
            
          
            
            
            
            </div> <!-- end of egypt card col-->
            
            
            
            
            
            
                    <div class="card mt-2" id="uae">
           
            
            <div class="row">
            
            <div class="col text-center">
            
               <form action="BookFlight.jsp" >
           
         
         <div class="dullescontainer">
    
         
            <input type="hidden" value="Abu Dhabi AUH" name="fl" />
        
         <input type="image"  class="img-fluid pr-0 mr-0 img-right" name="flys" src="uae2.jpg" alt="UAE" style="vertical-align:bottom;"/>
       
       
         <div class="bottom-left">UAE</div>
               
               <div class="bottom-right">from $889</div>
    
         
       </div> <!-- end dullescontainer -->
         
    </form>
            
            </div>
            
            
            
            </div>
            
            
            
            
            
            
            </div> <!-- end of uae card col-->
            
            
            
                    <div class="card mt-2" id="italy">
           
            
            <div class="row">
            
            <div class="col text-center">
            
               <form action="BookFlight.jsp" >
           
          
         <div class="dullescontainer">
    
            <input type="hidden" value="Venice-Aeroporto Marco Polo VCE" name="fl" />
        
         <input type="image"  class="img-fluid" name="flys" src="italy2.jpg" alt="Italy" style="vertical-align:bottom;"/>
         
         
         
         <div class="bottom-left">Italy</div>
               
               <div class="bottom-right">from $449</div>
    
         
       </div> <!-- end dullescontainer -->
         
       
         
    </form>
            
            </div>
            
            
            
       
            
            
            </div>
            
            
            
            </div> <!-- end of italy card col-->
            
            
            
            
            
                    <div class="card mt-2" id="china">
           
            
            <div class="row">
            
            <div class="col text-center">
            
               <form action="BookFlight.jsp" >
           
       
         <div class="dullescontainer">
    
         
            <input type="hidden" value="Beijing-Capital PEK" name="fl" />
        
         <input type="image"  class="img-fluid" name="flys" src="china2.jpg" alt="China" style="vertical-align:bottom;"/>
         
         
         
         <div class="bottom-left">China</div>
               
               <div class="bottom-right">from $876</div>
    
         
       </div> <!-- end dullescontainer -->
       
         
    </form>
            
            </div>
            
            
            
            </div>
            
            
         
            
            
            
            </div> <!-- end of china card col-->
            
            
            
            
                    <div class="card mt-2" id="germany">
        
            
            <div class="row">
            
            <div class="col text-center">
            
               <form action="BookFlight.jsp" >
           
       
         <div class="dullescontainer">
    
         
            <input type="hidden" value="Berlin-Schonefeld SXF" name="fl" />
        
         <input type="image"  class="img-fluid" name="flys" src="germany2.jpg" alt="Germany" style="vertical-align:bottom;"/>
         
         
         <div class="bottom-left">Germany</div>
               
               <div class="bottom-right">from $631</div>
    
         
       </div> <!-- end dullescontainer -->
       
         
    </form>
            
            </div>
            
            
            
            </div>
            
            
           
            
            
            
            </div> <!-- end of germany card col-->
            
            
            
             <div class="card mt-2" id="india">
           
            
            <div class="row">
            
            <div class="col text-center">
            
               <form action="BookFlight.jsp" >
           
        <div class="dullescontainer">
    
            <input type="hidden" value="Delhi-Indira Ghandi DEL" name="fl" />
        
         <input type="image"  class="img-fluid" name="flys" src="india2.jpg" alt="India" style="vertical-align:bottom;"/>
         
         
         <div class="bottom-left">India</div>
               
               <div class="bottom-right">from $610</div>
    
         
       </div> <!-- end dullescontainer -->
         
       
         
    </form>
            
            </div>
            
            
            
            </div>
            
            
         
            
            
            
            </div> <!-- end of india card col-->
            
            
            
            
             <div class="card mt-2" id="pakistan">
            
            
            <div class="row">
            
            <div class="col text-center">
            
               <form action="BookFlight.jsp" >
           
           <div class="dullescontainer">
       
    
         
       
            <input type="hidden" value="Islamabad ISB" name="fl" />
        
         <input type="image"  class="img-fluid" name="flys" src="pakistan2.jpg" alt="Pakistan" style="vertical-align:bottom;"/>
         
         
         
         <div class="bottom-left">Pakistan</div>
               
               <div class="bottom-right">from $780</div>
    
         
       </div> <!-- end dullescontainer -->
         
    </form>
            
            </div>
            
            
            
            </div>
            
            
           
            
            
            
            </div> <!-- end of pakistan card col-->
            
            
            
            
            
            
            </div>  <!-- end of col md-3  -->
            
            
          
            
            <div class="col-lg-9 col-md-8  d-none d-lg-block"> <!--  start of col md-9-->
            
            
            
            
            
            
            
            <div class="row "> <!-- start table row -->
            
         
            
                 
     <div class=" col" >

<div id="flightsearch">

<label class="" id="myDivheadline">Searching 1000+ airlines for this route...</label>

<label class="" id="myDivheadline1">Comparing prices to find a better deal...</label>

 <img id = "myDiv" src = "goldenlogoahsan.png" /> 
  <img id = "myDiv1" src = "icons8-pinterest-72.png" /> 
   

 <img id = "myDiv2" src = "stumbl-72.png" /> 
 
  <img id = "myDiv3" src = "star-72.png" /> 
  
   <img id = "myDiv4" src = "crowns.png" /> 
   
   <img id = "myDiv5" src = "diamond.png" /> 
   
   <img id = "myDiv6" src = "travel.png" /> 
    <img id = "myDiv7" src = "bunny.png" /> 
    
    <img id = "myDiv8" src = "dolphin.png" /> 
    
     <img id = "myDiv9" src = "lion.png" />
     <img id = "myDiv10" src = "dots.png" /> 

    
</div>


 
<div class=" table-responsive-md ">  
<div id="tab1">
<table class="table table-md table-striped table-bordered  ">
 
  <tbody>
    <tr>
      <th class="text-center" scope="row"><br>All Fares    </th>
      <td     class="bo"><div id="ima" > </div> <div id="imglogo"></div> </td>
    <td    class="bo"><div id="ima1"></div> <div id="imglogo1"></div></td>
     <td   class="bo"><div id="ima2"></div> <div id="imglogo2"></div></td>
     <td   class="bo"><div id="ima3"></div> <div id="imglogo3"></div></td>
     <td  class="bo"><div id="ima4"></div> <div id="imglogo4"></div></td>
     <td  class="bo"><div id="ima5"></div> <div id="imglogo5"></div></td>
        <td   class="bo"><div id="ima6"></div> <div id="imglogo6"></div></td>
          <td    class="bo"><div id="ima7"></div> <div id="imglogo7"></div></td>
           <td    class="bo"><div id="ima8"></div> <div id="imglogo8"></div></td>
    </tr>
    <tr>
      <th scope="row">Non stop</th>
      <td class="bo1"><div id="total1"></div></td>
    <td class="bo1"><div id="total2"></div></td>
      <td class="bo1"><div id="total3"></div></td>
     <td class="bo1"><div id="total4"></div></td>
    <td class="bo1"><div id="total5"></div></td>
  <td class="bo1"><div id="total6"></div></td>
    <td class="bo1"><div id="total7"></div></td>
       <td class="bo1"><div id="total8"></div></td>
    <td class="bo1"><div id="total9"></div></td>
    </tr>
  
  </tbody>
</table>

<div class="affix"  style="background-color:gray">
<p >Prices are shown in US dollars and are per person inclusive of taxes and fees with the exception of baggage fees.
 Some flights displayed may be for alternate dates and/or airports.</p>
 </div>
</div>


 
 
</div>




</div>
     
            
          
            
            </div><!-- end of table row -->
            
            
            
            
            <!--  this is humming -->
            
         
         <div class="card " id="flightdetail">
       
            <div style="position:relative">
            <form action="FinalBookings.jsp">
            <div class="row "> <!-- humming row 1st row -->
            
            
            <div class="col"  >
            
         
            
            <div class="form-group "  >
            
           
             <input type="text" class=" form-control totalflighttime fontstyling1 text-center"  id="totaltime" name="totaltime"  style="width:4rem; height:1.8rem;" >
             
         
                 
             
             
         
      
             </div>
            
            </div>
         
            </div> <!-- end of humming 1st row -->
            
            <div class="row" > <!-- start humming row 2nd row -->
            
            
            <div class="col">
            
            
            
            
            
            
            
         
          <div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
              <input type="image"  name="flys" src="hummingbird-72.png"/>
              
                 <input type="text" id="airlinelable"  class="form-control  m-0 p-0 fontstyling"  value="Humming Airline" name="airlinename" readonly="readonly" style="width: 8.4rem;">
                 
                  <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} style="width:4rem;" >
                  
                   <input type="text" id="dayz"  class="dayz form-control fontstyling" name="depday"   value=${day}   style="width: 4.2rem;" >
        
         <input type="text"  id="time" name="deptime"  class="form-control p-0 mont12 mr-1 fontstyling"  style="width: 4.2rem;">
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
                      <input type="text"  id="time2" class=" form-control  p-0 fontstyling"  name="arrtime"  style="width: 5.5rem;">
         
           
           
           
                   <input type="text" id="dayz1"  class="form-control fontstyling dayz"  name="arrday" value=${day}   style="width: 4rem;border:none;" >
                   
                
                     
                     
           <input type="submit" class="   ml-5 pl-2 mt-3 pt-2   form-control fontstylinglink" value="Select this Departure &#8250; " style="width: 5.9rem; height:4rem;"> 
           
          
                      <div style="position:relative">
                    <div  style=" position:absolute; top:-3.3rem; width:.1rem; bottom:-7rem;   background-color:#F3F5F6"></div> 
                      </div>
                     
                     
                      
                         
                                <input type="text" id="price1" name="price"  class="  form-control text-right ml-0 p-0 mont12 fontstylingprice"  style="width: 5.4rem;font-size:15px;" >  
                    

                    
       <input type="text"  class="text-left text-top text-center ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="+" style="width: 1.5rem;" > 
                 
                   <input type="text" id="tax1"  class=" text-left  text-top p-0 form-control   mont12 fontstylingprice"  name="tax"  style="width: 3.7rem;font-size:15px;" >  
                   
         <input type="text"  class="text-left text-top  ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="(taxes) =" style="width: 3.5rem;" >       

                     	
           
                <input type="text" id="totals1"  class="form-control  p-0 pl-1 mb-1 text-left m-0 mont12 fontstylingprice" name="total" style="width: 4.6rem;font-size:16px;"  >    
          </div> <!--   -->
          </div>
            
            
  
           		 
         
          
          </div> <!-- end of 2nd form-group -->
          
       <!--    </div>    -->
            
            
            
            
         <!--   </div>   -->
            
         
            
            </div>  <!-- end of humming 2nd row -->
            
            
            
            <div class="row form-inline"> <!-- start humming row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top">
            
           
            
             <input type="text"  id="depmonth" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh"  class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
           		<input type="text"  class=" form-control text-right pt-0 text-top  pr-3  mont12 fontstyling" name="depcode" value=${dcode}   style="width: 4.2rem;" >
           		
             <label class=" form-control ml-1 text-top  text-center p-0 mont12 fontstyling1" style="width: 5.9rem;">Non Stop</label>	
             
             <input type="text"  class=" form-control   pt-0 text-top pl-2 fontstyling mont12" name="descode" value=${decode}  style="width: 4.5rem;" >
           		
           		  <input type="text" class="  form-control p-0  text-top  text-right mont12 fontstyling monthdes" name="desmonth" value=${month}   style="width: 2.5rem;" >
            
          <input type="text" id="gh"  class=" form-control p-0  text-top  text-left   mont12 fontstyling desdate" name="desdate" value=${dat}  style="width: 2rem;" >
            
       
      	
                 
               
            </div>
            
            
            
          
            
            
            
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of humming 3rd row -->
            
            <div class="row"> <!-- start humming row 4th row -->
            
            <div class="col">
            <div class="form-group float-right">
            
            	 <input type="submit" value="SELECT" class=" bt btn btn-primary  form-control  mr-5" style="width:216px;"> 
            
            
            </div>
            
            </div>
            
            
            </div> <!-- end  humming row 3rd and last row -->
            
            
            
            
            
            </form> 
            
            
             
            
            </div>   <!-- end of humming card body-->
            </div>  <!-- end of humming  card -->
            
            
            
            
              <!--  this is pinterest -->
            
            <div class="card " id="flightdetail1" >
       
            <div style="position:relative">
            <form action="FinalBookings.jsp">
            <div class="row "> <!-- humming row 1st row -->
            
            
            <div class="col"  >
            
         
            
            <div class="form-group "  >
            
           
             <input type="text" class=" form-control totalflighttime fontstyling1 text-center"  id="totaltime2" name="totaltime"  style="width:4rem; height:1.8rem;" >
             
         
                 
             
             
         
      
             </div>
            
            </div>
         
            </div> <!-- end of pinetest 1st row -->
            
            <div class="row" > <!-- start pineterest row 2nd row -->
            
            
            <div class="col">
            
            
            
            
            
            
            
         
          <div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
              <input type="image"  name="flys" src="icons8-pinterest-72.png" alt="pinterest air"/>
              
                 <input type="text" id="airlinelable"  class="form-control  m-0 p-0 fontstyling"  value="Pinterest Airline" name="airlinename" readonly="readonly" style="width: 8.4rem;">
                 
                  <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} style="width:4rem;" >
                  
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz" name="depday"   value=${day}   style="width: 4.2rem;" >
                   
                            <input type="text"  id="time3" name="deptime"  class="form-control  fontstyling text-left p-0 mont12 mr-1"  style="width: 4.2rem;">
        
        
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
                      <input type="text"  id="time4" class=" form-control  text-center fontstyling mont12 text-top p-0"  name="arrtime"  style="width: 5.5rem;">
         
           
                 
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz"  class="form-control" name="arrday" value=${day}   style="width: 4rem;" >
                   
                
                     
                     
           <input type="submit" class="   ml-5 pl-2 mt-3 pt-2   form-control fontstylinglink" value="Select this Departure &#8250; " style="width: 5.9rem; height:4rem;"> 
           
          
                      <div style="position:relative">
                    <div  style=" position:absolute; top:-3.3rem; width:.1rem; bottom:-7rem;   background-color:#F3F5F6"></div> 
                      </div>
                     
                     
                      
                         
                                <input type="text" id="price2" name="price"  class="  form-control mont12 text-right  p-0  ml-0 fontstylingprice"  style="width: 5.4rem;font-size:15px;" >  
                    
           
                    <input type="text" class="text-left  text-top ml-0  text-center pb-1 p-0 mont12 fontstyling"  value="+" style="width:1.5rem"/>
                 
                   <input type="text" id="tax2"  class="form-control    text-top p-0  text-left fontstylingprice mont12"  name="tax"  style="width: 3.7rem;font-size:15px;" >  
                   
                       
					   <input type="text" class="text-left  text-top ml-0  pb-1 p-0 text-left mont12 fontstyling"  value="(taxes) =" style="width:3.5rem;"/>	
                     	
                        
                <input type="text" id="totals2"  class="form-control  p-0 pl-1 text-left m-0 mb-1  text-top mont12 fontstylingprice" name="total" style="width: 4.6rem;font-size:16px;">    
          </div> <!--   -->
          </div>
            
            
  
           		 
         
          
          </div> <!-- end of 2nd form-group -->
          
       <!--    </div>    -->
            
            
            
            
            
            
            
            
            
            
            
         <!--   </div>   -->
            
         
            
            </div>  <!-- end of pineterst 2nd row -->
            
            
            
            <div class="row form-inline"> <!-- start pinterest row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top">
            
           
            
             <input type="text"  id="depmonth" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh"  class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
           		<input type="text"  class=" form-control text-right align-text-top pt-0  pr-3  mont12 fontstyling" name="depcode" value=${dcode}   style="width: 4.2rem;" >
           		
             <label class=" form-control ml-1 text-top  text-center p-0 mont12 fontstyling1" style="width: 5.9rem">Non Stop</label>	
             
             <input type="text"  class=" form-control mont12   align-text-top p-0 pl-2  fontstyling" name="descode" value=${decode}   style="width: 4.5rem;" >
           		
           		  <input type="text" class="  form-control align-text-top  text-right p-0 fontstyling mont12 monthdes" name="desmonth" value=${month}   style="width: 2.5rem;" >
            
          <input type="text" id="gh"  class=" form-control align-text-top  text-left p-0  ml-0 fontstyling mont12 desdate" name="desdate" value=${dat}  style="width: 2rem;" >
            
       
      	
                 
               
            </div>
            
            
            
          
            
            
            
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of pineterest 3rd row -->
            
            <div class="row"> <!-- start pineterest row 4th row -->
            
            <div class="col">
            <div class="form-group float-right">
            
            	 <input type="submit" value="SELECT" class=" bt btn btn-primary  form-control  mr-5" style="width:216px;"> 
            
            
            </div>
            
            </div>
            
            
            </div> <!-- end  pineterest row 3rd and last row -->
            
            
            
            
            
            </form> 
            
            
             
            
            </div>   <!-- end of pineterest card body-->
            </div>  <!-- end of pineterest  card -->
            
            
     
            <!--  this is stumble -->
            
            <div class="card " id="flightdetail2">
       
            <div style="position:relative">
            <form action="FinalBookings.jsp">
            <div class="row "> <!-- stumble row 1st row -->
            
            
            <div class="col"  >
            
         
            
            <div class="form-group "  >
            
           
             <input type="text" class=" form-control totalflighttime fontstyling1 text-center"  id="totaltime3" name="totaltime"  style="width:4rem; height:1.8rem;" >
             
         
                 
             
             
         
      
             </div>
            
            </div>
         
            </div> <!-- end of stumble 1st row -->
            
            <div class="row" > <!-- start stumble row 2nd row -->
            
            
            <div class="col">
            
            
            
            
            
            
            
         
          <div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
              <input type="image"  name="flys" src="stumbl-72.png" alt="stumble airline"/>
              
                 <input type="text" id="airlinelable"  class="form-control  m-0 p-0 fontstyling"  value="Stumble Airline" name="airlinename" readonly="readonly" style="width: 8.4rem;">
                 
                  <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} style="width:4rem;" >
                  
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz" name="depday"   value=${day}  style="width: 4.2rem;" >
        
         <input type="text"  id="time5" name="deptime"  class="form-control mr-1 fontstyling text-left p-0 mont12"  style="width: 4.2rem;">
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
                      <input type="text"  id="time6" class=" form-control  p-0 fontstyling mont12 text-top text-center"  name="arrtime"  style="width: 5.5rem;">
         
           
                 
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz"  class="form-control" name="arrday" value=${day}   style="width: 4rem;" >
                   
                
                     
                     
           <input type="submit" class="   ml-5 pl-2 mt-3 pt-2   form-control fontstylinglink" value="Select this Departure &#8250; " style="width: 5.9rem; height:4rem;"> 
           
          
                      <div style="position:relative">
                    <div  style=" position:absolute; top:-3.3rem; width:.1rem; bottom:-7rem;   background-color:#F3F5F6"></div> 
                      </div>
                     
                     
                      
                         
                                <input type="text" id="price3" name="price"  class="  form-control text-right ml-0 p-0 mont12 fontstylingprice"  style="width: 5.4rem;font-size:15px;" >  
                    
                        <input type="text"  class="text-left text-top text-center ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="+" style="width: 1.5rem;" > 
                 
                   <input type="text" id="tax3"  class="text-left text-top p-0 form-control  mont12 fontstylingprice"  name="tax"  style="width: 3.7rem;font-size:15px;" >  
                   
                      

                     	
    <input type="text"  class="text-left text-top  ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="(taxes) =" style="width: 3.5rem;" >  
 
                
                <input type="text" id="totals3"  class="form-control  p-0 pl-1 mb-1 text-left m-0 mont12 fontstylingprice" name="total" style="width: 4.6rem;font-size:16px;"  >
                
                   
           
          
                   
                
                
                
                
          </div> <!--   -->
          </div>
            
            
  
           		 
         
          
          </div> <!-- end of 2nd form-group -->
          
       <!--    </div>    -->
            
         <!--   </div>   -->
            
         
            
            </div>  <!-- end of stumble 2nd row -->
            
            
            
            <div class="row form-inline"> <!-- start stumnle row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top">
            
           
            
             <input type="text"  id="depmonth" class=" mont12  form-control text-right  align-text-top p-0 fontstyling"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh"  class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
           		<input type="text"  class=" form-control text-right p-0 align-text-top  pr-3  mont12 fontstyling" name="depcode" value=${dcode}   style="width: 4.2rem;" >
           		
             <label class=" form-control ml-1 text-top  text-center p-0 mont12 fontstyling1" style="width: 5.9rem;">Non Stop</label>	
             
             <input type="text"  class=" form-control mont12   align-text-top p-0 pl-2 fontstyling" name="descode" value=${decode}  style="width: 4.5rem;" >
           		
           		  <input type="text" class="  form-control align-text-top  text-right p-0  mont12 fontstyling monthdes" name="desmonth" value=${month}  style="width: 2.5rem;" >
            
          <input type="text" id="gh"  class=" form-control align-text-top  text-left p-0 mont12 fontstyling desdate" name="desdate" value=${dat}  style="width: 2rem;" >
            
       
      	
                 
               
            </div>
            
            
            
          
            
            
            
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of stumble 3rd row -->
            
            <div class="row"> <!-- start stumble row 4th row -->
            
            <div class="col">
            <div class="form-group float-right">
            
            	 <input type="submit" value="SELECT" class=" bt btn btn-primary  form-control  mr-5" style="width:216px;"> 
            
            
            </div>
            
            </div>
            
            
            </div> <!-- end  stumble row 3rd and last row -->
            
            
            
            
            
            </form> 
            
            
             
            
            </div>   <!-- end of stumble card body-->
            </div>  <!-- end of stumble  card -->
            
            
            
              <!--  this is star -->
            
            <div class="card " id="flightdetail3">
       
            <div style="position:relative">
            <form action="FinalBookings.jsp">
            <div class="row "> <!-- star row 1st row -->
            
            
            <div class="col"  >
            
         
            
            <div class="form-group "  >
            
           
             <input type="text" class=" form-control totalflighttime fontstyling1 text-center"  id="totaltime4" name="totaltime"  style="width:4rem; height:1.8rem;" >
             
         
                 
             
             
         
      
             </div>
            
            </div>
         
            </div> <!-- end of humming 1st row -->
            
            <div class="row" > <!-- start humming row 2nd row -->
            
            
            <div class="col">
            
            
            
            
            
            
            
         
          <div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
              <input type="image"  name="flys" src="star-72.png" alt="Star Airline"/>
              
                 <input type="text" id="airlinelable"  class="form-control  m-0 p-0 fontstyling"  value="Star Airline" name="airlinename" readonly="readonly" style="width: 8.4rem;">
                 
                  <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} style="width:4rem;" >
                  
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz" name="depday"   value=${day}  style="width: 4.2rem;" >
        
         <input type="text"  id="time7" name="deptime"  class="form-control mr-1 fontstyling p-0 mont12"  style="width: 4.2rem;">
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
                      <input type="text"  id="time8" class=" form-control    p-0 fontstyling text-center mont12"  name="arrtime"  style="width: 5.5rem;">
         
           
                 
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz"  class="form-control" name="arrday" value=${day}   style="width: 4rem;" >
                   
                
                     
                     
               <input type="submit" class="   ml-5 pl-2 mt-3 pt-2   form-control fontstylinglink" value="Select this Departure &#8250; " style="width: 5.9rem; height:4rem;"> 
           
          
                      <div style="position:relative">
                    <div  style=" position:absolute; top:-3.3rem; width:.1rem; bottom:-7rem;   background-color:#F3F5F6"></div> 
                      </div>
               
               
                    
               <input type="text" id="price4" name="price"  class="  form-control text-right ml-0 p-0 mont12 fontstylingprice"  style="width: 5.4rem;font-size:15px;" >  
                    
                        <input type="text"  class="text-left text-top text-center ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="+" style="width: 1.5rem;" > 
                 
               
                   
                                      <input type="text" id="tax4"  class="text-left text-top p-0 form-control  mont12 fontstylingprice"  name="tax"  style="width: 3.7rem;font-size:15px;" >  
                   
                          	
    <input type="text"  class="text-left text-top  ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="(taxes) =" style="width: 3.5rem;" >  
 
                
                 <input type="text" id="totals4"  class="form-control  p-0 pl-1 mb-1 text-left m-0 mont12 fontstylingprice" name="total" style="width: 4.6rem;font-size:16px;"  >
                
            
            
                
          </div> <!--   -->
          </div>
            
            
  
           		 
         
          
          </div> <!-- end of 2nd form-group -->
          
       <!--    </div>    -->
            
          
         <!--   </div>   -->
            
         
            
            </div>  <!-- end of humming 2nd row -->
            
            
            
            <div class="row form-inline"> <!-- start star row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top">
            
           
            
             <input type="text"  id="depmonth" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh"  class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}  style="width: 2.8rem;" >
           
           		<input type="text"  class=" form-control text-right align-text-top p-0 pr-3  mont12 fontstyling" name="depcode" value=${dcode}   style="width: 4.2rem;" >
           		
             <label class=" form-control ml-1 text-top  text-center p-0 mont12 fontstyling1" style="width: 5.9rem;">Non Stop</label>	
             
             <input type="text"  class=" form-control mont12   align-text-top p-0 pl-2 fontstyling" name="descode" value=${decode}   style="width: 4.5rem;" >
           		
           		  <input type="text" class="  form-control align-text-top  text-right p-0  mont12 fontstyling monthdes" name="desmonth" value=${month}  style="width: 2.5rem;" >
            
          <input type="text" id="gh"  class=" form-control align-text-top  text-left p-0 mont12 fontstyling desdate" name="desdate" value=${dat}  style="width: 2rem;" >
            
       
      	
                 
               
            </div>
            
            
            
          
            
            
            
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of star 3rd row -->
            
            <div class="row"> <!-- start star row 4th row -->
            
            <div class="col">
            <div class="form-group float-right">
            
            	 <input type="submit" value="SELECT" class=" bt btn btn-primary  form-control  mr-5" style="width:216px;"> 
            
            
            </div>
            
            </div>
            
            
            </div> <!-- end  star row 3rd and last row -->
            
            
            
            
            
            </form> 
            
            
             
            
            </div>   <!-- end of star card body-->
            </div>  <!-- end of star  card -->
            
            
              <!--  this is crown -->
            
            <div class="card " id="flightdetail4">
       
            <div style="position:relative">
            <form action="FinalBookings.jsp">
            <div class="row "> <!-- card row 1st row -->
            
            
            <div class="col"  >
            
         
            
            <div class="form-group "  >
            
           
             <input type="text" class=" form-control totalflighttime fontstyling1 text-center"  id="totaltime5" name="totaltime"  style="width:4rem; height:1.8rem;" >
             
         
                 
             
             
         
      
             </div>
            
            </div>
         
            </div> <!-- end of crown 1st row -->
            
            <div class="row" > <!-- start crown row 2nd row -->
            
            
            <div class="col">
            
            
            
            
            
            
            
         
          <div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
              <input type="image"  name="flys" src="crowns.png" alt="Crown Air"/>
              
                 <input type="text" id="airlinelable"  class="form-control  m-0 p-0 fontstyling"  value="Crown Airline" name="airlinename" readonly="readonly" style="width: 8.4rem;">
                 
                  <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} style="width:4rem;" >
                  
                   <input type="text" id="dayz"  class="dayz form-control fontstyling dayz" name="depday"   value=${day}   style="width: 4.2rem;" >
        
         <input type="text"  id="time9" name="deptime"  class="form-control mr-1 fontstyling p-0 text-left mont12"  style="width: 4.2rem;">
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
                      <input type="text"  id="time10" class="daya form-control    fontstyling p-0 text-center mont12"  name="arrtime"  style="width: 5.5rem;">
         
           
                 
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz"  class="form-control" name="arrday" value=${day}   style="width: 4rem;" >
                   
                
                     
                     
         <input type="submit" class="   ml-5 pl-2 mt-3 pt-2   form-control fontstylinglink" value="Select this Departure &#8250; " style="width: 5.9rem; height:4rem;"> 
           
          
                      <div style="position:relative">
                    <div  style=" position:absolute; top:-3.3rem; width:.1rem; bottom:-7rem;   background-color:#F3F5F6"></div> 
                      </div>
                     
            <input type="text" id="price5" name="price"  class="  form-control text-right ml-0 p-0 mont12 fontstylingprice"  style="width: 5.4rem;font-size:15px;" >   
                    
 <input type="text"  class="text-left text-top text-center ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="+" style="width: 1.5rem;" > 
                 
            <input type="text" id="tax5"  class="text-left text-top p-0 form-control  mont12 fontstylingprice"  name="tax"  style="width: 3.7rem;font-size:15px;" >  
                   
                          	
    <input type="text"  class="text-left text-top  ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="(taxes) =" style="width: 3.5rem;" >  
 
   <input type="text" id="totals5"  class="form-control  p-0 pl-1 mb-1 text-left m-0 mont12 fontstylingprice" name="total" style="width: 4.6rem;font-size:16px;"  >  
                
                
                
               
                    
                       
                 
               
                   
                
          </div> <!--   -->
          </div>
            
            
  
           		 
         
          
          </div> <!-- end of 2nd form-group -->
          
       <!--    </div>    -->
            
            
         <!--   </div>   -->
            
         
            
            </div>  <!-- end of humming 2nd row -->
            
            
            
            <div class="row form-inline"> <!-- start humming row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top">
            
           
            
             <input type="text"  id="depmonth" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month} style="width: 3.5rem;" >
            
           <input type="text" id="gh"  class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}  style="width: 2.8rem;" >
           
           		<input type="text"  class=" form-control text-right align-text-top p-0 pr-3  mont12 fontstyling" name="depcode" value=${dcode}   style="width: 4.2rem;" >
           		
             <label class=" form-control ml-1 text-top  text-center p-0 mont12 fontstyling1" style="width: 5.9rem;">Non Stop</label>	
             
             <input type="text"  class=" form-control mont12   text-top p-0 pl-2 fontstyling" name="descode" value=${decode}   style="width: 4.5rem;" >
           		
           		  <input type="text" class="  form-control align-text-top  text-right p-0  mont12 fontstyling monthdes" name="desmonth" value=${month}   style="width: 2.5rem;" >
            
          <input type="text" id="gh"  class=" form-control align-text-top  text-left p-0 mont12 fontstyling desdate" name="desdate" value=${dat}  style="width: 2rem;" >
            
       
      	
                 
               
            </div>
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of crown 3rd row -->
            
            <div class="row"> <!-- start crown row 4th row -->
            
            <div class="col">
            <div class="form-group float-right">
            
            	 <input type="submit" value="SELECT" class=" bt btn btn-primary  form-control  mr-5" style="width:216px;"> 
            
            
            </div>
            
            </div>
            
            
            </div> <!-- end  crown row 3rd and last row -->
            
            
            
            
            
            </form> 
            
            
             
            
            </div>   <!-- end of crown card body-->
            </div>  <!-- end of crown  card -->
            
            
              <!--  this is diamond -->
            
            <div class="card " id="flightdetail5">
       
            <div style="position:relative">
            <form action="FinalBookings.jsp">
            <div class="row "> <!-- humming row 1st row -->
            
            
            <div class="col"  >
            
         
            
            <div class="form-group "  >
            
           
             <input type="text" class=" form-control totalflighttime fontstyling1 text-center"  id="totaltime6" name="totaltime"  style="width:4rem; height:1.8rem;" >
             
         
                 
             
             
         
      
             </div>
            
            </div>
         
            </div> <!-- end of diamond 1st row -->
            
            <div class="row" > <!-- start diamond row 2nd row -->
            
            
            <div class="col">
            
          <div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
              <input type="image"  name="flys" src="diamond.png" alt="Diamond Air"/>
              
                 <input type="text" id="airlinelable"  class="form-control  m-0 p-0 fontstyling"  value="Diamond Airline" name="airlinename" readonly="readonly" style="width: 8.4rem;">
                 
                  <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} style="width:4rem;" >
                  
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz" name="depday"   value=${day}   style="width: 4.2rem;" >
        
         <input type="text"  id="time11" name="deptime"  class="form-control mr-1 fontstyling text-left p-0 mont12"  style="width: 4.2rem;">
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
                      <input type="text"  id="time12" class="daya form-control   text-center p-0 mont12 fontstyling"  name="arrtime"  style="width: 5.5rem;">
         
           
                 
                   <input type="text" id="dayz"  class="dayz form-control fontstyling"  class="form-control" name="arrday" value=${day}   style="width: 4rem;" >
                   
                
                     
                     
           <input type="submit" class="   ml-5 pl-2 mt-3 pt-2   form-control fontstylinglink" value="Select this Departure &#8250; " style="width: 5.9rem; height:4rem;"> 
          
                      <div style="position:relative">
                    <div  style=" position:absolute; top:-3.3rem; width:.1rem; bottom:-7rem;   background-color:#F3F5F6"></div> 
                      </div>
                     
                          <input type="text" id="price6" name="price"  class="  form-control text-right ml-0 p-0 mont12 fontstylingprice"  style="width: 5.4rem;font-size:15px;" >   
                    
 <input type="text"  class="text-left text-top text-center ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="+" style="width: 1.5rem;" > 
                 
                          
            <input type="text" id="tax6"  class="text-left text-top p-0 form-control  mont12 fontstylingprice"  name="tax"  style="width: 3.7rem;font-size:15px;" >  
                   
                          	
    <input type="text"  class="text-left text-top  ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="(taxes) =" style="width: 3.5rem;" >  
 
               <input type="text" id="totals6"  class="form-control  p-0 pl-1 mb-1 text-left m-0 mont12 fontstylingprice" name="total" style="width: 4.6rem;font-size:16px;"  >   
                
                
                
                
          </div> <!--   -->
          </div>
            
            
  
           		 
         
          
          </div> <!-- end of 2nd form-group -->
          
       <!--    </div>    -->
            
         <!--   </div>   -->
            
         
            
            </div>  <!-- end of diamond 2nd row -->
            
            
            
            <div class="row form-inline"> <!-- start diamond row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top">
            
           
            
             <input type="text"  id="depmonth" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh"  class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
           		<input type="text"  class=" form-control text-right p-0 text-top  pr-3  mont12 fontstyling" name="depcode" value=${dcode}   style="width: 4.2rem;" >
           		
             <label class=" form-control ml-1 text-top  text-center p-0 mont12 fontstyling1" style="width: 5.9rem;">Non Stop</label>	
             
             <input type="text"  class=" form-control mont12   p-0 text-top pl-2 fontstyling" name="descode" value=${decode}   style="width: 4.5rem;" >
           		
           		  <input type="text" class="  form-control align-text-top  text-right p-0  mont12 fontstyling monthdes" name="desmonth" value=${month}   style="width: 2.5rem;" >
            
          <input type="text" id="gh"  class=" form-control align-text-top  text-left p-0 mont12 fontstyling desdate" name="desdate" value=${dat}  style="width: 2rem;" >
            
       
      	
                 
               
            </div>
            
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of humming 3rd row -->
            
            <div class="row"> <!-- start humming row 4th row -->
            
            <div class="col">
            <div class="form-group float-right">
            
            	 <input type="submit" value="SELECT" class=" bt btn btn-primary  form-control  mr-5" style="width:216px;"> 
            
            
            </div>
            
            </div>
            
            
            </div> <!-- end  humming row 3rd and last row -->
            
            
            
            
            
            </form> 
            
            
             
            
            </div>   <!-- end of humming card body-->
            </div>  <!-- end of humming  card -->
            
            
            
              <!--  this is travel -->
            
            <div class="card " id="flightdetail6">
       
            <div style="position:relative">
            <form action="FinalBookings.jsp">
            <div class="row "> <!-- travel row 1st row -->
            
            
            <div class="col"  >
            
         
            
            <div class="form-group "  >
            
           
             <input type="text" class=" form-control totalflighttime fontstyling1 text-center"  id="totaltime7" name="totaltime"  style="width:4rem; height:1.8rem;" >
             
         
                 
             
             
         
      
             </div>
            
            </div>
         
            </div> <!-- end of travel 1st row -->
            
            <div class="row" > <!-- start travel row 2nd row -->
            
            
            <div class="col">
            
         
          <div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
              <input type="image"  name="flys" src="travel.png" alt="Travel Air"/>
              
                 <input type="text" id="airlinelable"  class="form-control  m-0 p-0 fontstyling"  value="Travel Airline" name="airlinename" readonly="readonly" style="width: 8.4rem;">
                 
                  <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} style="width:4rem;" >
                  
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz" name="depday"   value=${day}  style="width: 4.2rem;" >
        
         <input type="text"  id="time13" name="deptime"  class="form-control p-0 text-left fontstyling mont12 mr-1" style="width: 4.2rem;">
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
                      <input type="text"  id="time14" class=" form-control  p-0  text-center mont12 fontstyling"  name="arrtime"  style="width: 5.5rem;">
         
           
                 
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz"  name="arrday" value=${day}   style="width: 4rem;" >
                   
                
                     
                     
          <input type="submit" class="   ml-5 pl-2 mt-3 pt-2   form-control fontstylinglink" value="Select this Departure &#8250; " style="width: 5.9rem; height:4rem;"> 
           
          
                      <div style="position:relative">
                    <div  style=" position:absolute; top:-3.3rem; width:.1rem; bottom:-7rem;   background-color:#F3F5F6"></div> 
                      </div>
                     
                                        
                          <input type="text" id="price7" name="price"  class="  form-control text-right ml-0 p-0 mont12 fontstylingprice"  style="width: 5.4rem;font-size:15px;" >   
                    
 <input type="text"  class="text-left text-top text-center ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="+" style="width: 1.5rem;" > 
                 
                <input type="text" id="tax7"  class="text-left text-top p-0 form-control  mont12 fontstylingprice"  name="tax"  style="width: 3.7rem;font-size:15px;" >  
                   
                          	
    <input type="text"  class="text-left text-top  ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="(taxes) =" style="width: 3.5rem;" >  
              <input type="text" id="totals7"  class="form-control  p-0 pl-1 mb-1 text-left m-0 mont12 fontstylingprice" name="total" style="width: 4.6rem;font-size:16px;"  >     
                
                
                 
          </div> <!--   -->
          </div>
            
            
  
           		 
         
          
          </div> <!-- end of 2nd form-group -->
          
       <!--    </div>    -->
            
            
         <!--   </div>   -->
            
         
            
            </div>  <!-- end of travel 2nd row -->
            
            
            
            <div class="row form-inline"> <!-- start travel row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top">
            
           
            
             <input type="text"  id="depmonth" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh"  class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
           		<input type="text"  class=" form-control text-right text-top p-0 pr-3  mont12 fontstyling" name="depcode" value=${dcode}   style="width: 4.2rem;" >
           		
             <label class=" form-control ml-1 text-top  text-center p-0 mont12 fontstyling1" style="width: 5.9rem">Non Stop</label>	
             
             <input type="text"  class=" form-control mont12   align-text-top p-0 pl-2 fontstyling" name="descode" value=${decode}   style="width: 4.5rem;" >
           		
           		  <input type="text" class="  form-control align-text-top  text-right p-0  mont12 fontstyling monthdes" name="desmonth" value=${month}   style="width: 2.5rem;" >
            
          <input type="text" id="gh"  class=" form-control align-text-top  text-left p-0 mont12 fontstyling desdate" name="desdate" value=${dat}  style="width: 2rem;" >
            
       
      	
                 
               
            </div>
            
            
            
          
            
            
            
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of travel 3rd row -->
            
            <div class="row"> <!-- start travel row 4th row -->
            
            <div class="col">
            <div class="form-group float-right">
            
            	 <input type="submit" value="SELECT" class=" bt btn btn-primary  form-control  mr-5" style="width:216px;"> 
            
            
            </div>
            
            </div>
            
            
            </div> <!-- end  travel row 3rd and last row -->
            
            
            
            
            
            </form> 
            
            
             
            
            </div>   <!-- end of travel card body-->
            </div>  <!-- end of travel  card -->
            
            
            
            
              <!--  this is bunny -->
            
            <div class="card " id="flightdetail7">
       
            <div style="position:relative">
            <form action="FinalBookings.jsp">
            <div class="row "> <!-- bunny row 1st row -->
            
            
            <div class="col"  >
            
         
            
            <div class="form-group "  >
            
           
             <input type="text" class=" form-control totalflighttime fontstyling1 text-center"  id="totaltime8" name="totaltime"  style="width:4rem; height:1.8rem;" >
             
         
                 
             
             
         
      
             </div>
            
            </div>
         
            </div> <!-- end of bunny 1st row -->
            
            <div class="row" > <!-- start bunny row 2nd row -->
            
            
            <div class="col">
            
            
            
            
            
            
            
         
          <div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
              <input type="image"  name="flys" src="bunny.png" alt="Bunny air"/>
              
                 <input type="text" id="airlinelable"  class="form-control  m-0 p-0 fontstyling"  value="Bunny Airline" name="airlinename" readonly="readonly" style="width: 8.4rem;">
                 
                  <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} style="width:4rem;" >
                  
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz" name="depday"   value=${day}   style="width: 4.2rem;" >
        
         <input type="text"  id="time15" name="deptime"  class="form-control mr-1 fontstyling text-left p-0 mont12"  style="width: 4.2rem;">
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
                      <input type="text"  id="time16" class="daya form-control  mont12 pl-0 p-0 text-center  fontstyling"  name="arrtime"  style="width: 5.5rem;">
         
           
                 
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz"  class="form-control" name="arrday" value=${day}   style="width: 4rem;" >
                   
                
                     
                     
         <input type="submit" class="   ml-5 pl-2 mt-3 pt-2   form-control fontstylinglink" value="Select this Departure &#8250; " style="width: 5.9rem; height:4rem;"> 
          
                      <div style="position:relative">
                    <div  style=" position:absolute; top:-3.3rem; width:.1rem; bottom:-7rem;   background-color:#F3F5F6"></div> 
                      </div>
                     
                     
                      
                         
                                               
                          <input type="text" id="price8" name="price"  class="  form-control text-right ml-0 p-0 mont12 fontstylingprice"  style="width: 5.4rem;font-size:15px;" >   
                    
 <input type="text"  class="text-left text-top text-center ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="+" style="width: 1.5rem;" > 
                 
               <input type="text" id="tax8"  class="text-left text-top p-0 form-control  mont12 fontstylingprice"  name="tax"  style="width: 3.7rem;font-size:15px;" >  
                   
                          	
    <input type="text"  class="text-left text-top  ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="(taxes) =" style="width: 3.5rem;" >  
              <input type="text" id="totals8"  class="form-control  p-0 pl-1 mb-1 text-left m-0 mont12 fontstylingprice" name="total" style="width: 4.6rem;font-size:16px;"  >       
                
                
                         
          </div> <!--   -->
          </div>
            
            
  
           		 
         
          
          </div> <!-- end of 2nd form-group -->
          
       <!--    </div>    -->
            
            
            
            
         <!--   </div>   -->
            
         
            
            </div>  <!-- end of bunny 2nd row -->
            
            
            
            <div class="row form-inline"> <!-- start bunny row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top">
            
           
            
             <input type="text"  id="depmonth" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh"  class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
           		<input type="text"  class=" form-control text-right p-0 text-top  pr-3  mont12 fontstyling" name="depcode" value=${dcode}   style="width: 4.2rem;" >
           		
             <label class=" form-control ml-1 text-top  text-center p-0 mont12 fontstyling1" style="width: 5.9rem;">Non Stop</label>	
             
             <input type="text"  class=" form-control mont12   text-top p-0 pl-2 fontstyling" name="descode" value=${decode}   style="width: 4.5rem;" >
           		
           		  <input type="text" class="  form-control text-top  text-right p-0  mont12 fontstyling monthdes" name="desmonth" value=${month}   style="width: 2.5rem;" >
            
          <input type="text" id="gh"  class=" form-control text-top  text-left p-0 mont12 fontstyling" name="desdate desdate" value=${dat}  style="width: 2rem;" >
            
       
      	
                 
               
            </div>
            
            
            
          
            
            
            
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of bunny 3rd row -->
            
            <div class="row"> <!-- start bunny row 4th row -->
            
            <div class="col">
            <div class="form-group float-right">
            
            	 <input type="submit" value="SELECT" class=" bt btn btn-primary  form-control  mr-5" style="width:216px;"> 
            
            
            </div>
            
            </div>
            
            
            </div> <!-- end  bunny row 3rd and last row -->
            
            
            
            
            
            </form> 
            
            
             
            
            </div>   <!-- end of bunny card body-->
            </div>  <!-- end of bunny  card -->
            
            
            
            
            
              <!--  this is dolphin -->
            
            <div class="card " id="flightdetail8" >
       
            <div style="position:relative">
            <form action="FinalBookings.jsp">
            <div class="row "> <!-- dolphin row 1st row -->
            
            
            <div class="col"  >
            
         
            
            <div class="form-group "  >
            
           
             <input type="text" class=" form-control totalflighttime fontstyling1 text-center"  id="totaltime9" name="totaltime"  style="width:4rem; height:1.8rem;" >
             
         
                 
             
             
         
      
             </div>
            
            </div>
         
            </div> <!-- end of dolphin 1st row -->
            
            <div class="row" > <!-- start dolphin row 2nd row -->
            
            
            <div class="col">
            
            
            
            
            
            
            
         
          <div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
              <input type="image"  name="flys" src="dolphin.png" alt="Dolphin Airline"/>
              
                 <input type="text" id="airlinelable"  class="form-control  m-0 p-0 fontstyling"  value="Dolphin Airline" name="airlinename" readonly="readonly" style="width: 8.4rem">
                 
                  <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} style="width:4rem;" >
                  
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz" name="depday"   value=${day}  style="width: 4.2rem;" >
        
         <input type="text"  id="time17" name="deptime"  class="form-control p-0 mr-1 text-left fontstyling mont12"  style="width: 4.2rem;">
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
                      <input type="text"  id="time18" class=" form-control  text-center pl-0 p-0 mont12 fontstyling"  name="arrtime" style="width: 5.5rem;">
         
           
                 
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz"  class="form-control" name="arrday" value=${day}   style="width: 4rem;" >
                   
                
                     
                     
       <input type="submit" class="   ml-5 pl-2 mt-3 pt-2   form-control fontstylinglink" value="Select this Departure &#8250; " style="width: 5.9rem; height:4rem;"> 
          
                      <div style="position:relative">
                    <div  style=" position:absolute; top:-3.3rem; width:.1rem; bottom:-7rem;   background-color:#F3F5F6"></div> 
                      </div>
                      <input type="text" id="price9" name="price"  class="  form-control text-right ml-0 p-0 mont12 fontstylingprice"  style="width: 4.4rem;font-size:15px;" >   
                    
 <input type="text"  class="text-left text-top text-center ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="+" style="width: 1.5rem;" > 
                   <input type="text" id="tax9"  class="text-left text-top p-0 form-control  mont12 fontstylingprice"  name="tax"  style="width: 4.1rem;font-size:15px;" >  
                   
                          	
    <input type="text"  class="text-left text-top ml-1  pb-1 p-0  form-control  mont12  fontstyling"  value="(taxes) =" style="width: 3.9rem;" >  
              <input type="text" id="totals9"  class="form-control  p-0 pl-1 mb-1 text-left m-0 mont12 fontstylingprice" name="total" style="width: 4.6rem;font-size:16px;"  >        
                
               
                
          </div> <!--   -->
          </div>
            
            
  
           		 
         
          
          </div> <!-- end of 2nd form-group -->
          
       <!--    </div>    -->
            
            
            
         <!--   </div>   -->
            
         
            
            </div>  <!-- end of dolphin 2nd row -->
            
            
            
            <div class="row form-inline"> <!-- start humming row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top">
            
           
            
             <input type="text"  id="depmonth" class=" mont12  form-control text-right  text-top p-0 fontstyling month12"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh"  class=" form-control text-left text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
           		<input type="text"  class=" form-control text-right text-top p-0 pr-3  mont12 fontstyling" name="depcode" value=${dcode}  style="width: 4.2rem;" >
           		
             <label class=" form-control ml-1 text-top  text-center p-0 mont12 fontstyling1" style="width: 5.9rem;">Non Stop</label>	
             
             <input type="text"  class=" form-control mont12  text-top p-0 pl-2 fontstyling" name="descode" value=${decode}   style="width: 4.5rem;" >
           		
           		  <input type="text" class="  form-control text-top  text-right p-0  mont12 fontstyling monthdes" name="desmonth" value=${month}   style="width: 2.5rem;" >
            
          <input type="text" id="gh"  class=" form-control text-top  text-left p-0 mont12 fontstyling desdate" name="desdate " value=${dat}  style="width: 2rem;" >
            
       
      	
                 
               
            </div>
            
            
            
          
            
            
            
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of dolphin 3rd row -->
            
            <div class="row"> <!-- start dolphin row 4th row -->
            
            <div class="col">
            <div class="form-group float-right">
            
            	 <input type="submit" value="SELECT" class=" bt btn btn-primary  form-control  mr-5" style="width:216px;"> 
            
            
            </div>
            
            </div>
            
            
            </div> <!-- end  dolphin row 3rd and last row -->
            
            
            
            
            
            </form> 
            
            
             
            
            </div>   <!-- end of dolphin card body-->
            </div>  <!-- end of dolphin  card -->
            
            
            
            
            
            
              <!--  this is lion -->
            
            <div class="card " id="flightdetail9">
       
            <div style="position:relative">
            <form action="FinalBookings.jsp">
            <div class="row "> <!-- lion row 1st row -->
            
            
            <div class="col"  >
            
         
            
            <div class="form-group "  >
            
           
             <input type="text" class=" form-control totalflighttime fontstyling1 text-center"  id="totaltime10" name="totaltime"  style="width:4rem; height:1.8rem;" >
             
         
                 
             
             
         
      
             </div>
            
            </div>
         
            </div> <!-- end of lion 1st row -->
            
            <div class="row" > <!-- start lion row 2nd row -->
            
            
            <div class="col">
            
            
            
            
            
            
            
         
          <div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
              <input type="image"  name="flys" src="lion.png" alt="Lion's Airline"/>
              
                 <input type="text" id="airlinelable"  class="form-control  m-0 p-0 fontstyling"  value="Lion's Airline" name="airlinename" readonly="readonly" style="width: 8.4rem;">
                 
                  <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} style="width:4rem;" >
                  
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz" name="depday"   value=${day}  style="width: 4.2rem;" >
        
         <input type="text"  id="time19" name="deptime"  class="form-control mr-1 mont12 fontstyling p-0  text-left"  style="width: 4.2rem;">
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
                      <input type="text"  id="time20" class="daya form-control    pl-0 p-0 text-center mont12 fontstyling"  name="arrtime" style="width: 5.5rem;">
         
           
                 
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz"  class="form-control" name="arrday" value=${day}  style="width: 4rem;" >
                   
                
                     
                     
       <input type="submit" class="   ml-5 pl-2 mt-3 pt-2   form-control fontstylinglink" value="Select this Departure &#8250; " style="width: 5.9rem; height:4rem;"> 
          
          
                      <div style="position:relative">
                    <div  style=" position:absolute; top:-3.3rem; width:.1rem; bottom:-7rem;   background-color:#F3F5F6"></div> 
                      </div>
                            
                      <input type="text" id="price10" name="price"  class="  form-control text-right ml-0 p-0 mont12 fontstylingprice"  style="width: 4.4rem;font-size:15px;" >   
                    
 <input type="text"  class="text-left text-top text-center ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="+" style="width: 1.5rem;" > 
                 
             <input type="text" id="tax10"  class="text-left text-top p-0 form-control  mont12 fontstylingprice"  name="tax"  style="width: 4.1rem;font-size:15px;" >  
                   
                          	
    <input type="text"  class="text-left text-top ml-1  pb-1 p-0  form-control  mont12  fontstyling"  value="(taxes) =" style="width: 3.9rem;" >  
              <input type="text" id="totals10"  class="form-control  p-0 pl-1 mb-1 text-left m-0 mont12 fontstylingprice" name="total" style="width: 4.6rem;font-size:16px;"  >          
                
                
            
                 
                
                
                 
                     
                 
                
                
          </div> <!--   -->
          </div>
            
            
  
           		 
         
          
          </div> <!-- end of 2nd form-group -->
          
       <!--    </div>    -->
            
            
            
            
            
            
            
            
            
            
            
         <!--   </div>   -->
            
         
            
            </div>  <!-- end of lion 2nd row -->
            
            
            
            <div class="row form-inline"> <!-- start lion row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top;">
            
           
            
             <input type="text"  id="depmonth" class=" mont12  form-control text-right  text-top p-0 fontstyling month12"   name="depmonth" value=${month}  style="width: 3.5rem;" >
            
           <input type="text" id="gh"  class=" form-control text-left text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
           		<input type="text"  class=" form-control text-right text-top  pr-3 p-0 mont12 fontstyling" name="depcode" value=${dcode}   style="width: 4.2rem;" >
           		
             <label class=" form-control ml-1 text-top  text-center p-0 mont12 fontstyling1" style="width: 5.9rem;">Non Stop</label>	
             
             <input type="text"  class=" form-control mont12   text-top p-0 pl-2 fontstyling" name="descode" value=${decode}   style="width: 4.5rem;" >
           		
           		  <input type="text" class="  form-control text-top  text-right p-0  mont12 fontstyling monthdes" name="desmonth" value=${month}   style="width: 2.5rem;" >
            
          <input type="text" id="gh"  class=" form-control text-top  text-left p-0 mont12 fontstyling desdate" name="desdate" value=${dat}  style="width: 2rem;" >
            
       
      	
                 
               
            </div>
            
            
            
          
            
            
            
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of lion 3rd row -->
            
            <div class="row"> <!-- start lion row 4th row -->
            
            <div class="col">
            <div class="form-group float-right">
            
            	 <input type="submit" value="SELECT" class=" bt btn btn-primary  form-control  mr-5" style="width:216px;"> 
            
            
            </div>
            
            </div>
            
            
            </div> <!-- end  lion row 3rd and last row -->
            
            
            
            
            
            </form> 
            
            
             
            
            </div>   <!-- end of lion card body-->
            </div>  <!-- end of lion  card -->
            
            
            
           
            
              <!--  this is dots -->
            
            <div class="card " id="flightdetail10">
       
            <div style="position:relative">
            <form action="FinalBookings.jsp">
            <div class="row "> <!-- dots row 1st row -->
            
            
            <div class="col"  >
            
         
            
            <div class="form-group "  >
            
           
             <input type="text" class=" form-control totalflighttime fontstyling1 text-center"  id="totaltime11" name="totaltime"  style="width:4rem; height:1.8rem;" >
             
         
                 
             
             
         
      
             </div>
            
            </div>
         
            </div> <!-- end of dots 1st row -->
            
            <div class="row" > <!-- start dots row 2nd row -->
            
            
            <div class="col">
            
            
            
            
            
            
            
         
          <div class="form-group">
              <div class="form-inline ">
              <!--   <img src="hummingbird-72.png" alt="media air">  -->
          
              <input type="image"  name="flys" src="dots.png" alt="Dots Airline"/>
              
                 <input type="text" id="airlinelable"  class="form-control  m-0 p-0 fontstyling"  value="Dots Airline" name="airlinename" readonly="readonly" style="width: 8.4rem;">
                 
                  <input type="text"  hidden="hidden" class="hid form-control "  name="hid" value=${dateinput} style="width:4rem;" >
                  
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz" name="depday"   value=${day}   style="width: 4.2rem;" >
        
         <input type="text"  id="time21" name="deptime"  class="form-control mr-1 p-0 mont12 fontstyling" style="width: 4.2rem;">
        <!--     <input type="text" class="totaltime " id="totaltime" name="totaltime" value="yo" readonly="readonly" style="width:4.5rem"> --> 
        
      
            
               <div class="liness   mt-1" ></div>  
                 
                 
                      <input type="text"  id="time22" class="daya form-control  p-0 pl-0 fontstyling mont12"  name="arrtime"  style="width: 5.5rem;">
         
           
                 
                   <input type="text" id="dayz"  class=" form-control fontstyling dayz"  class="form-control" name="arrday" value=${day}   style="width: 4rem;" >
                   
                
                     
                     
        <input type="submit" class="   ml-5 pl-2 mt-3 pt-2   form-control fontstylinglink" value="Select this Departure &#8250; " style="width: 5.9rem; height:4rem;"> 
           
          
                      <div style="position:relative">
                    <div  style=" position:absolute; top:-3.3rem; width:.1rem; bottom:-7rem;   background-color:#F3F5F6"></div> 
                      </div>
                       <input type="text" id="price11" name="price"  class="  form-control text-right ml-0 p-0 mont12 fontstylingprice"  style="width: 4.4rem;font-size:15px;" >   
                    
 <input type="text"  class="text-left text-top text-center ml-0 pb-1 p-0  form-control   mont12 fontstyling"  value="+" style="width: 1.5rem;" > 
                   <input type="text" id="tax11"  class="text-left text-top p-0 form-control  mont12 fontstylingprice"  name="tax"  style="width: 4.1rem;font-size:15px;" >  
                   
                          	
    <input type="text"  class="text-left text-top ml-1  pb-1 p-0  form-control  mont12  fontstyling"  value="(taxes) =" style="width: 3.9rem;" >  
              <input type="text" id="totals11"  class="form-control  p-0 pl-1 mb-1 text-left m-0 mont12 fontstylingprice" name="total" style="width: 4.6rem;font-size:16px;"  >          
                
                
            
                
           
                       
          </div> <!--   -->
          </div>
            
            
  
           		 
         
          
          </div> <!-- end of 2nd form-group -->
          
       <!--    </div>    -->
            
            
            
            
            
            
            
            
            
            
            
         <!--   </div>   -->
            
         
            
            </div>  <!-- end of dots 2nd row -->
            
            
            
            <div class="row form-inline"> <!-- start dots row 3rd row -->
            
            <div class="col">
            
            <div class ="form-group hummingrow" style="vertial-align:top;">
            
           
            
             <input type="text"  id="depmonth" class=" mont12  form-control text-right  align-text-top p-0 fontstyling month12"   name="depmonth" value=${month} style="width: 3.5rem;" >
            
           <input type="text" id="gh"  class=" form-control text-left align-text-top p-0 mont12 fontstyling date1" name="depdate" value=${dat}   style="width: 2.8rem;" >
           
           		<input type="text"  class=" form-control text-right  p-0  pr-3  mont12 fontstyling" name="depcode" value=${dcode}   style="width: 4.2rem;" >
           		
             <label class=" form-control ml-1 text-top  text-center p-0 mont12 fontstyling1" style="width: 5.9rem;">Non Stop</label>	
             
             <input type="text"  class=" form-control mont12   align-text-top p-0 fontstyling" name="descode" value=${decode}   style="width: 4.5rem;" >
           		
           		  <input type="text" class="  form-control text-top  text-right p-0  mont12 fontstyling monthdes" name="desmonth" value=${month}  style="width: 2.5rem;" >
            
          <input type="text" id="gh"  class=" form-control text-top  text-left p-0 mont12 fontstyling desdate" name="desdate" value=${dat}  style="width: 2rem;" >
            
       
      	
                 
               
            </div>
            
            
            
          
            
            
            
            
            
            </div>
            
            
            
            
            
            </div>  <!--  end of dots 3rd row -->
            
            <div class="row"> <!-- start dots row 4th row -->
            
            <div class="col">
            <div class="form-group float-right">
            
            	 <input type="submit" value="SELECT" class=" bt btn btn-primary  form-control  mr-5" style="width:216px;"> 
            
            
            </div>
            
            </div>
            
            
            </div> <!-- end  dots row 3rd and last row -->
            
            
            
            
            
            </form> 
            
            
             
            
            </div>   <!-- end of dots card body-->
            </div>  <!-- end of dots  card -->
            
            
            
            
            
            
            
            
            
            
     
            
            
            </div>  <!-- end of col md-8-->
            
            
            
            
            
            
            
            
            
            </div> <!--  end of entire row -->
            
            
            
            </div>   <!-- end of entire container -->








                    </section>
                    


<script>

function randomTime1() {
	var hours, minutes,hourFormat,minutesFormat;
	var hours1, minutes1,hourFormat1,minutesFormat1;
	
	  hours = Math.round(Math.random()*12);
	   minutes = Math.round(Math.random()*29)+30;    
	   hourFormat = (hours<10 ? "0" : "");
	   minutesFormat = (minutes<10 ? "0" : "");
	//  var amPm = (hrs<12 ? "AM" : "PM");
	 
		var resultTimes = hourFormat+hours+ ":" +minutesFormat+minutes+ " " +"PM";
		console.log( resultTimes  +"wellsome");
		document.getElementById('time2').value=resultTimes;
		
		document.getElementById('timem2').value=resultTimes;
		
		
		
		
		
		
		
		
		  hours1= Math.round(Math.random()*12);
		   minutes1 = Math.round(Math.random()*30)+ 0;    
		   hourFormat1 = (hours1<10 ? "0" : "");
		   minutesFormat1 = (minutes1<10 ? "0" : "");
		//  var amPm = (hrs<12 ? "AM" : "PM");
		 
			var resultTimes1 = hourFormat1+hours1+ ":" +minutesFormat1+minutes1+ " " +"AM";
			
			document.getElementById('time').value=resultTimes1;
			document.getElementById('timem').value=resultTimes1;
			
			console.log(hours1+"hours1");
			
			var hr=(12-hours1);
			var totalhr=hr+hours;
			var totalmt=minutes-minutes1;
			console.log(totalhr+"hr");
			
			console.log(totalmt+"minu");
			
			total=totalhr+"hr"+" "+totalmt+"m";
			
			
			document.getElementById('totaltime').value=total;
			document.getElementById('totaltimem').value=total + ' (NonStop)';
		
			
			
			
	}


</script>



<script>
function initialSetup() {
	  if (document.getElementById("tab1") != null) {
	    document.getElementById("tab1").style.visibility = 'hidden';
	    setTimeout(function() {
	      document.getElementById("tab1").style.visibility = 'visible';
	    }, 10000);
	  }
	}

	
</script>





<script>

function randomTime3() {
	
	var hours1, minutes1,hourFormat1,minutesFormat1;
	var hours, minutes,hourFormat,minutesFormat;
	  hours1= Math.round(Math.random()*12);
	   minutes1 = Math.round(Math.random()*30)+ 0;    
	   hourFormat1 = (hours1<10 ? "0" : "");
	   minutesFormat1 = (minutes1<10 ? "0" : "");
	
	 
		var resultTimes1 = hourFormat1+hours1+ ":" +minutesFormat1+minutes1+ " " +"AM";
	
		document.getElementById('time3').value=resultTimes1;
		document.getElementById('timem3').value=resultTimes1;
		
		
		
		
		
		  hours = Math.round(Math.random()*12);
		   minutes = Math.round(Math.random()*29)+ 30;    
		   hourFormat = (hours<10 ? "0" : "");
		   minutesFormat = (minutes<10 ? "0" : "");
		
		 
			var resultTimes = hourFormat+hours+ ":" +minutesFormat+minutes+ " " +"PM";
			console.log( resultTimes  +"wellsome");
			document.getElementById('time4').value=resultTimes;
			document.getElementById('timem4').value=resultTimes;
			
			
			var hr=(12-hours1);
			var totalhr=hr+hours;
			var totalmt=minutes-minutes1;
		
			
			total=totalhr+"hr"+" "+totalmt+"m";
			
			
			
			document.getElementById('totaltime2').value=total;

			document.getElementById('totaltimem2').value=total + ' (NonStop)';
		
		
		
		
		
		
		
	}


</script>













<script>

function randomTime5() {
	
	var hours1, minutes1,hourFormat1,minutesFormat1;
	var hours, minutes,hourFormat,minutesFormat;
	
	  hours1= Math.round(Math.random()*12);
	   minutes1 = Math.round(Math.random()*30)+ 0;    
	   hourFormat1 = (hours1<10 ? "0" : "");
	   minutesFormat1 = (minutes1<10 ? "0" : "");

	 
		var resultTimes1 = hourFormat1+hours1+ ":" +minutesFormat1+minutes1+ " " +"AM";
	
		document.getElementById('time5').value=resultTimes1;
		document.getElementById('timem5').value=resultTimes1;
		
		
		
		
		
		  hours = Math.round(Math.random()*12);
		   minutes = Math.round(Math.random()*29)+ 30;    
		   hourFormat = (hours<10 ? "0" : "");
		   minutesFormat = (minutes<10 ? "0" : "");
	
		 
			var resultTimes = hourFormat+hours+ ":" +minutesFormat+minutes+ " " +"PM";
			console.log( resultTimes  +"wellsome");
			document.getElementById('time6').value=resultTimes;
			document.getElementById('timem6').value=resultTimes;
			
			
			
			
			var hr=(12-hours1);
			var totalhr=hr+hours;
			var totalmt=minutes-minutes1;
			
			
			total=totalhr+"hr"+" "+totalmt+"m";
			
			
		
			
			document.getElementById('totaltime3').value=total;
			document.getElementById('totaltimem3').value=total + ' (NonStop)';
	}


</script>







<script>

function randomTime7() {
	var hours1, minutes1,hourFormat1,minutesFormat1;
	var hours, minutes,hourFormat,minutesFormat;
	  hours1= Math.round(Math.random()*12);
	   minutes1 = Math.round(Math.random()*30)+ 0;    
	   hourFormat1 = (hours1<10 ? "0" : "");
	   minutesFormat1 = (minutes1<10 ? "0" : "");
	
	 
		var resultTimes1 = hourFormat1+hours1+ ":" +minutesFormat1+minutes1+ " " +"AM";

		document.getElementById('time7').value=resultTimes1;
		document.getElementById('timem7').value=resultTimes1;
		
		
		
		
		  hours = Math.round(Math.random()*12);
		   minutes = Math.round(Math.random()*29) + 30;    
		   hourFormat = (hours<10 ? "0" : "");
		   minutesFormat = (minutes<10 ? "0" : "");
	
		 
		
		
			var resultTimes = hourFormat+hours+ ":" +minutesFormat+minutes+ " " +"PM";
		
			document.getElementById('time8').value=resultTimes;
			document.getElementById('timem8').value=resultTimes;
			
			
			var hr=(12-hours1);
			var totalhr=hr+hours;
			var totalmt=minutes-minutes1;
		
			
		
			
			total=totalhr+"hr"+" "+totalmt+"m";
			
			document.getElementById('totaltime4').value=total;
			document.getElementById('totaltimem4').value=total + ' (NonStop)';
	}


</script>





<script>

function randomTime9() {
	var hours1, minutes1,hourFormat1,minutesFormat1;
	var hours, minutes,hourFormat,minutesFormat;
	
	  hours1= Math.round(Math.random()*12);
	   minutes1 = Math.round(Math.random()*30)+ 0;    
	   hourFormat1 = (hours1<10 ? "0" : "");
	   minutesFormat1 = (minutes1<10 ? "0" : "");

	 
		var resultTimes1 = hourFormat1+hours1+ ":" +minutesFormat1+minutes1+ " " +"AM";
	
		document.getElementById('time9').value=resultTimes1;
		document.getElementById('timem9').value=resultTimes1;
		
		
		
		
		  hours = Math.round(Math.random()*12);
		   minutes = Math.round(Math.random()*29)+ 30;    
		   hourFormat = (hours<10 ? "0" : "");
		   minutesFormat = (minutes<10 ? "0" : "");

		 
			var resultTimes = hourFormat+hours+ ":" +minutesFormat+minutes+ " " +"PM";
			console.log( resultTimes  +"wellsome");
			document.getElementById('time10').value=resultTimes;
			document.getElementById('timem10').value=resultTimes;
			
			
			var hr=(12-hours1);
			var totalhr=hr+hours;
			var totalmt=minutes-minutes1;
			
			
			total=totalhr+"hr"+" "+totalmt+"m";
			
			document.getElementById('totaltime5').value=total;
			document.getElementById('totaltimem5').value= total + ' (NonStop)';
	}


</script>



<script>

function randomTime11() {
	var hours1, minutes1,hourFormat1,minutesFormat1;
	var hours, minutes,hourFormat,minutesFormat;
	
	  hours1= Math.round(Math.random()*12);
	   minutes1 = Math.round(Math.random()*30)+ 0;    
	   hourFormat1 = (hours1<10 ? "0" : "");
	   minutesFormat1 = (minutes1<10 ? "0" : "");

	 
		var resultTimes1 = hourFormat1+hours1+ ":" +minutesFormat1+minutes1+ " " +"AM";

		document.getElementById('time11').value=resultTimes1;
		document.getElementById('timem11').value=resultTimes1;
		
		
		
		
		  hours = Math.round(Math.random()*12);
		   minutes = Math.round(Math.random()*29)+ 30;    
		   hourFormat = (hours<10 ? "0" : "");
		   minutesFormat = (minutes<10 ? "0" : "");
	
		 
			var resultTimes = hourFormat+hours+ ":" +minutesFormat+minutes+ " " +"PM";
			console.log( resultTimes  +"wellsome");
			document.getElementById('time12').value=resultTimes;
			document.getElementById('timem12').value=resultTimes;
			
			var hr=(12-hours1);
			var totalhr=hr+hours;
			var totalmt=minutes-minutes1;
			console.log(totalhr+"hr");
		
			total=totalhr+"hr"+" "+totalmt+"m";
			
			document.getElementById('totaltime6').value=total;
			document.getElementById('totaltimem6').value=total + ' (NonStop)';
	}


</script>















<script>

function randomTime13() {
	var hours1, minutes1,hourFormat1,minutesFormat1;
	var hours, minutes,hourFormat,minutesFormat;
	  hours1= Math.round(Math.random()*12);
	   minutes1 = Math.round(Math.random()*30)+ 0;    
	   hourFormat1 = (hours1<10 ? "0" : "");
	   minutesFormat1 = (minutes1<10 ? "0" : "");

	  
		var resultTimes1 = hourFormat1+hours1+ ":" +minutesFormat1+minutes1+ " " +"AM";

		document.getElementById('time13').value=resultTimes1;
		document.getElementById('timem13').value=resultTimes1 + ' (NonStop)';
		
		  hours = Math.round(Math.random()*12);
		   minutes = Math.round(Math.random()*29)+ 30;    
		   hourFormat = (hours<10 ? "0" : "");
		   minutesFormat = (minutes<10 ? "0" : "");
	
		 
			var resultTimes = hourFormat+hours+ ":" +minutesFormat+minutes+ " " +"PM";
		
			document.getElementById('time14').value=resultTimes;
			document.getElementById('timem14').value=resultTimes;
			
			var hr=(12-hours1);
			var totalhr=hr+hours;
			var totalmt=minutes-minutes1;
			console.log(totalhr+"hr");
			
			
			
			total=totalhr+"hr"+" "+totalmt+"m";
			
			document.getElementById('totaltime7').value=total;
			document.getElementById('totaltimem7').value=total + ' (NonStop)';
	}


</script>














<script>


function randomTime15() {
	var hours1, minutes1,hourFormat1,minutesFormat1;
	var hours, minutes,hourFormat,minutesFormat;
	
	  hours1= Math.round(Math.random()*12);
	   minutes1 = Math.round(Math.random()*30)+ 0;    
	   hourFormat1 = (hours1<10 ? "0" : "");
	   minutesFormat1 = (minutes1<10 ? "0" : "");

	 
		var resultTimes1 = hourFormat1+hours1+ ":" +minutesFormat1+minutes1+ " " +"AM";

		document.getElementById('time15').value=resultTimes1;
		document.getElementById('timem15').value=resultTimes1;
		
		
		
		
		  hours = Math.round(Math.random()*12);
		   minutes = Math.round(Math.random()*29)+ 30;    
		   hourFormat = (hours<10 ? "0" : "");
		   minutesFormat = (minutes<10 ? "0" : "");

		 
			var resultTimes = hourFormat+hours+ ":" +minutesFormat+minutes+ " " +"PM";
			console.log( resultTimes  +"wellsome");
			document.getElementById('time16').value=resultTimes;
			document.getElementById('timem16').value=resultTimes;
			
			var hr=(12-hours1);
			var totalhr=hr+hours;
			var totalmt=minutes-minutes1;
			console.log(totalhr+"hr");
			
		
			
			total=totalhr+"hr"+" "+totalmt+"m";
			
			document.getElementById('totaltime8').value=total;
			document.getElementById('totaltimem8').value=total + ' (NonStop)';
	}


</script>












<script>

function randomTime17() {
	var hours1, minutes1,hourFormat1,minutesFormat1;
	var hours, minutes,hourFormat,minutesFormat;
	
	  hours1= Math.round(Math.random()*12);
	   minutes1 = Math.round(Math.random()*30)+ 0;    
	   hourFormat1 = (hours1<10 ? "0" : "");
	   minutesFormat1 = (minutes1<10 ? "0" : "");

	 
		var resultTimes1 = hourFormat1+hours1+ ":" +minutesFormat1+minutes1+ " " +"AM";
	
		document.getElementById('time17').value=resultTimes1;
		document.getElementById('timem17').value=resultTimes1;
		
		
		
		
		
		
		  hours = Math.round(Math.random()*12);
		   minutes = Math.round(Math.random()*29) + 30;    
		   hourFormat = (hours<10 ? "0" : "");
		   minutesFormat = (minutes<10 ? "0" : "");
		
		 
			var resultTimes = hourFormat+hours+ ":" +minutesFormat+minutes+ " " +"PM";
			console.log( resultTimes  +"wellsome");
			document.getElementById('time18').value=resultTimes;
			document.getElementById('timem18').value=resultTimes;
			
			var hr=(12-hours1);
			var totalhr=hr+hours;
			var totalmt=minutes-minutes1;
			
			
			total=totalhr+"hr"+" "+totalmt+"m";
			
			document.getElementById('totaltime9').value=total;
			document.getElementById('totaltimem9').value=total + ' (NonStop)';
	}


</script>


<script>

function randomTime19() {
	var hours1, minutes1,hourFormat1,minutesFormat1;
	var hours, minutes,hourFormat,minutesFormat;
	
	  hours1= Math.round(Math.random()*12);
	   minutes1 = Math.round(Math.random()*30)+ 0;    
	   hourFormat1 = (hours1<10 ? "0" : "");
	   minutesFormat1 = (minutes1<10 ? "0" : "");

	 
		var resultTimes1 = hourFormat1+hours1+ ":" +minutesFormat1+minutes1+ " " +"AM";
	
		document.getElementById('time19').value=resultTimes1;
		document.getElementById('timem19').value=resultTimes1;
		
		
		
		
		
		  hours = Math.round(Math.random()*12);
		   minutes = Math.round(Math.random()*29)+ 30;    
		   hourFormat = (hours<10 ? "0" : "");
		   minutesFormat = (minutes<10 ? "0" : "");

		 
			var resultTimes = hourFormat+hours+ ":" +minutesFormat+minutes+ " " +"PM";
			
			document.getElementById('time20').value=resultTimes;
			document.getElementById('timem20').value=resultTimes;
			
			
			var hr=(12-hours1);
			var totalhr=hr+hours;
			var totalmt=minutes-minutes1;
			
			
			total=totalhr+"hr"+" "+totalmt+"m";
			document.getElementById('totaltime10').value=total;
			document.getElementById('totaltimem10').value=total + ' (NonStop)';
	}


</script>




<script>

function randomTime21() {
	var hours1, minutes1,hourFormat1,minutesFormat1;
	var hours, minutes,hourFormat,minutesFormat;
	
	  hours1= Math.round(Math.random()*12);
	   minutes1 = Math.round(Math.random()*30)+ 0;    
	   hourFormat1 = (hours1<10 ? "0" : "");
	   minutesFormat1 = (minutes1<10 ? "0" : "");

	 
		var resultTimes1 = hourFormat1+hours1+ ":" +minutesFormat1+minutes1+ " " +"AM";

		document.getElementById('time21').value=resultTimes1;
		document.getElementById('timem21').value=resultTimes1;
		
		
		
		
		
		  hours = Math.round(Math.random()*12);
		   minutes = Math.round(Math.random()*29)+30;    
		   hourFormat = (hours<10 ? "0" : "");
		   minutesFormat = (minutes<10 ? "0" : "");
	
		 
			var resultTimes = hourFormat+hours+ ":" +minutesFormat+minutes+ " " +"PM";
			console.log( resultTimes  +"wellsome");
			document.getElementById('time22').value=resultTimes;
			document.getElementById('timem22').value=resultTimes;
			var hr=(12-hours1);
			var totalhr=hr+hours;
			var totalmt=minutes-minutes1;
		
			
			total=totalhr+"hr"+" "+totalmt+"m";
			
			document.getElementById('totaltime11').value=total;
			document.getElementById('totaltimem11').value=total + ' (NonStop)';
	}


</script>





<script>

window.onload=randomTime1();


window.onload=randomTime3();


window.onload=randomTime5();


window.onload=randomTime7();


window.onload=randomTime9();


window.onload=randomTime11();


window.onload=randomTime13();


window.onload=randomTime15();


window.onload=randomTime17();


window.onload=randomTime19();


window.onload=randomTime21();


window.onload=initialSetup();

</script>







 
 

 
 <script>
 


 
 
 function setdetails() {

	 var price1, taxes1,totalprice1, finaltax1;
	 var price2, taxes2,totalprice2, finaltax2;
	 var price3, taxes3,totalprice3, finaltax3;
	 var price4, taxes4,totalprice4, finaltax4;
	 var price5, taxes5,totalprice5, finaltax5;
	 var price6, taxes6,totalprice6, finaltax6;
	 var price7, taxes7,totalprice7, finaltax7;
	 var price8, taxes8,totalprice8, finaltax8;
	 var price9, taxes9,totalprice9, finaltax9;
	 var price10, taxes10,totalprice10, finaltax10;
	 var price11, taxes11,totalprice11, finaltax11;
	 
	 var randomNumber;
	 randomNumber = Math.floor(Math.random()*4+1);
	
	 
      if (randomNumber == 1) {
        
   
    	  
    	  
    	  document.getElementById("flightdetailm1").style.display = "block";
    	  document.getElementById("flightdetailm2").style.display = "block";
    	  document.getElementById("flightdetailm3").style.display = "block";
    	  document.getElementById("flightdetailm4").style.display = "block";
    	  document.getElementById("flightdetailm5").style.display = "block";
    	  document.getElementById("flightdetailm6").style.display = "block";
    	  
    	  
    	  
    	 
    			var slideBox = document.getElementById('flightdetail1');
    			    setTimeout(function() {
    			        slideBox.style.display = 'block';
    			    }, 7000); 
    			  
    			

        			var slideBox1 = document.getElementById('flightdetail2');
        			    setTimeout(function() {
        			        slideBox1.style.display = 'block';
        			    }, 5000); 
        			  
        			

            			var slideBox2 = document.getElementById('flightdetail3');
            			    setTimeout(function() {
            			        slideBox2.style.display = 'block';
            			    }, 5000); 
            			  
            			

                			var slideBox3 = document.getElementById('flightdetail4');
                			    setTimeout(function() {
                			        slideBox3.style.display = 'block';
                			    }, 1000); 
                			  
                			

                    			var slideBox4 = document.getElementById('flightdetail5');
                    			    setTimeout(function() {
                    			        slideBox4.style.display = 'block';
                    			    }, 1000); 
                    			  
                    			

                        			var slideBox5 = document.getElementById('flightdetail6');
                        			    setTimeout(function() {
                        			        slideBox5.style.display = 'block';
                        			    }, 9600); 
                        			  
                        			

                            			var slideBox6 = document.getElementById('flightdetail8');
                            			    setTimeout(function() {
                            			        slideBox6.style.display = 'block';
                            			    }, 9600); 
                            			  
                            			

                                			var slideBox7 = document.getElementById('flightdetail9');
                                			    setTimeout(function() {
                                			        slideBox7.style.display = 'block';
                                			    }, 9600); 
                                			  
                                			

                                    			var slideBox8 = document.getElementById('flightdetail10');
                                    			    setTimeout(function() {
                                    			        slideBox8.style.display = 'block';
                                    			    }, 8000); 
                                    			  
                                    			
                                    	  
    	  
    	  
    	  
    	  
    	  
    	  document.getElementById("flightdetail").style.display = "none";
    	  document.getElementById("flightdetail7").style.display = "none";
    	  
    	  document.getElementById("flightdetailm").style.display = "none";
    	  document.getElementById("flightdetailm7").style.display = "none";
    	  
    
    	  
    	  document.getElementById("flightdetailm8").style.display = "block";
    	  document.getElementById("flightdetailm9").style.display = "block";
    	  document.getElementById("flightdetailm10").style.display = "block";
    	  
    	  	document.getElementById("ima").innerHTML="<img src='icons8-pinterest-72.png' >";
    	  	var abc = '#flightdetail1';
    	  	document.getElementById('imglogo').innerHTML = '<a href="' + abc + '">Pintrest Airline</a>';
    	  	
    	  	
    		document.getElementById("ima1").innerHTML="<img src='stumbl-72.png' >";
    		var abc = '#flightdetail2';
    	  	document.getElementById('imglogo1').innerHTML = '<a href="' + abc + '">Stumble Airline</a>';
    		
    		
    		document.getElementById("ima2").innerHTML="<img src='star-72.png' >";
    		var abc = '#flightdetail3';
    	  	document.getElementById('imglogo2').innerHTML = '<a href="' + abc + '">Star Airline</a>';
    	  	
    		
    		document.getElementById("ima3").innerHTML="<img src='crowns.png' >";
    		var abc = '#flightdetail4';
    	  	document.getElementById('imglogo3').innerHTML = '<a href="' + abc + '">Crown Airline</a>';
    	  	
    	  	
    		document.getElementById("ima4").innerHTML="<img src='diamond.png' >";
    		var abc = '#flightdetail5';
    	  	document.getElementById('imglogo4').innerHTML = '<a href="' + abc + '">Diamond Airline</a>';
    	  	
    	  	
    		document.getElementById("ima5").innerHTML="<img src='travel.png' >";
    		var abc = '#flightdetail6';
    	  	document.getElementById('imglogo5').innerHTML = '<a href="' + abc + '">Travel Airline</a>';
    	  	
    	  	
    		document.getElementById("ima6").innerHTML="<img src='dolphin.png' >";
    		var abc = '#flightdetail8';
    	  	document.getElementById('imglogo6').innerHTML = '<a href="' + abc + '">Dolphin Airline</a>';
    	  	
    	  	
    		document.getElementById("ima7").innerHTML="<img src='lion.png' >";
    		var abc = '#flightdetail9';
    	  	document.getElementById('imglogo7').innerHTML = '<a href="' + abc + '">Lion Airline</a>';
    	  	
    	  	
    		document.getElementById("ima8").innerHTML="<img src='dots.png' >";
    		var abc = '#flightdetail10';
    	  	document.getElementById('imglogo8').innerHTML = '<a href="' + abc + '">Dots Airline</a>';
    		
    		
    		
    		
    		
    		
    		
    		

    		
    		
    		
    		  price2= Math.floor(Math.random()*200)+500;
    		  taxes2=price2*0.2;   
    		
    		   finaltax2  =taxes2.toFixed(2);
    		  
    		   totalprice2=(price2+taxes2);
    		
    		
    			
    			document.getElementById('price2').value="$"+ price2;
    			
    			document.getElementById('tax2').value="$"+finaltax2;
    			
    			document.getElementById('totals2').value="$"+totalprice2.toFixed(2);
    			document.getElementById('totalsm2').value="$"+totalprice2.toFixed(2);
    			
    	
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		  price3= Math.floor(Math.random()*120)+702;
    		  taxes3=price3*0.2;   
    		
    		   finaltax3  =taxes3.toFixed(2);
    		  
    		   totalprice3=(price3+taxes3);
    	
    			
    			document.getElementById('price3').value="$"+price3;
    			
    			document.getElementById('tax3').value="$"+finaltax3;
    			
    			document.getElementById('totals3').value="$"+totalprice3.toFixed(2);
    			document.getElementById('totalsm3').value="$"+totalprice3.toFixed(2);
    			
   
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		  price4= Math.floor(Math.random()*502)+834;
    		  taxes4=price4*0.2;   
    		
    		   finaltax4  =taxes4.toFixed(2);
    		  
    		   totalprice4=(price4+taxes4);
    		
    			console.log( price1 + finaltax1  +"taxes" +totalprice1);
    			
    			
    			document.getElementById('price4').value="$"+price4;
    			
    			document.getElementById('tax4').value="$"+finaltax4;
    			
    			document.getElementById('totals4').value="$"+totalprice4.toFixed(2);
    			document.getElementById('totalsm4').value="$"+totalprice4.toFixed(2);
    		
    		  price5= Math.floor(Math.random()*865)+1436;
    		  taxes5=price5*0.2;   
    	
    		   finaltax5  =taxes5.toFixed(2);
    		  
    		   totalprice5=(price5+taxes5);
    		
    			console.log( price1 + finaltax1  +"taxes" +totalprice1);
    			
    	
    			
    			document.getElementById('price5').value="$"+price5;
    			
    			document.getElementById('tax5').value="$"+finaltax5;
    			
    			document.getElementById('totals5').value="$"+totalprice5.toFixed(2);
    			document.getElementById('totalsm5').value="$"+totalprice4.toFixed(2);
    			
    	
    		  price6= Math.floor(Math.random()*648)+2310;
    		  taxes6=price6*0.2;   
    	
    		   finaltax6  =taxes6.toFixed(2);
    		  
    		   totalprice6=(price6+taxes6);
    		
    			
    			document.getElementById('price6').value="$"+price6;
    			
    			document.getElementById('tax6').value="$"+finaltax6;
    			
    			document.getElementById('totals6').value="$"+totalprice6.toFixed(2);
    			document.getElementById('totalsm6').value="$"+totalprice4.toFixed(2);
    			
    		
    		  price7= Math.floor(Math.random()*712)+2958;
    		  taxes7=price7*0.2;   
    	
    		   finaltax7  =taxes7.toFixed(2);
    		  
    		   totalprice7=(price7+taxes7);
    		
    			console.log( price7 + finaltax7  +"taxes" +totalprice7);
    			
    			
    			document.getElementById('price7').value="$"+price7;
    			
    			document.getElementById('tax7').value="$"+finaltax7;
    			
    			document.getElementById('totals7').value="$"+totalprice7.toFixed(2);
    			document.getElementById('totalsm7').value="$"+totalprice4.toFixed(2);
    		
    		
    		
    		
    			
    		
    		
    	  
    		
    		
    	
    		  price9= Math.floor(Math.random()*721)+3670;
    		  taxes9=price9*0.2;   
    		
    		   finaltax9  =taxes9.toFixed(2);
    		  
    		   totalprice9=(price9+taxes9);
    		
    		
    			document.getElementById('price9').value="$"+price9;
    			
    			document.getElementById('tax9').value="$"+finaltax9;
    			
    			document.getElementById('totals9').value="$"+totalprice9.toFixed(2);
    			document.getElementById('totalsm9').value="$"+totalprice4.toFixed(2);
    		
    		
    		
    		
    		
    		
    		
    		  price10= Math.floor(Math.random()*125)+4700;
    		  taxes10=price10*0.2;   
    	
    		   finaltax10  =taxes10.toFixed(2);
    		  
    		   totalprice10=(price10+taxes10);
    		
    		
    			
    			document.getElementById('price10').value="$"+price10;
    			
    			document.getElementById('tax10').value="$"+finaltax10;
    			
    			document.getElementById('totals10').value="$"+totalprice10.toFixed(2);
    			document.getElementById('totalsm10').value="$"+totalprice4.toFixed(2);
    		
    		
    		
    		
    		
    	
    		  price11= Math.floor(Math.random()*929)+4833;
    		  taxes11=price11*0.2;   
    		
    		   finaltax11  =taxes11.toFixed(2);
    		  
    		   totalprice11=(price11+taxes11);
    		
    		
    			
    			document.getElementById('price11').value="$"+price11;
    			
    			document.getElementById('tax11').value="$"+finaltax11;
    			
    			document.getElementById('totals11').value="$"+totalprice11.toFixed(2);
    			document.getElementById('totalsm11').value="$"+totalprice4.toFixed(2);
    	
    		
    		var abc = '#flightdetail9';
    		document.getElementById('total1').innerHTML = '<a href="' + abc + '"><div id="n"></div></a>';
    		
    		
    		document.getElementById('total1').innerHTML="$"+totalprice2.toFixed(2);
    		document.getElementById('total2').innerHTML="$"+totalprice3.toFixed(2);
    		document.getElementById('total3').innerHTML="$"+totalprice4.toFixed(2);
    		document.getElementById('total4').innerHTML="$"+totalprice5.toFixed(2);
    		document.getElementById('total5').innerHTML="$"+totalprice6.toFixed(2);
    		document.getElementById('total6').innerHTML="$"+totalprice7.toFixed(2);
    		document.getElementById('total7').innerHTML="$"+totalprice9.toFixed(2);
    		document.getElementById('total8').innerHTML="$"+totalprice10.toFixed(2);
    		document.getElementById('total9').innerHTML="$"+totalprice11.toFixed(2);
    		
     
           
      }
       if (randomNumber == 2) {
           document.getElementById("flightdetail10").style.display = "none";
           document.getElementById("flightdetail8").style.display = "none";
           
           document.getElementById("flightdetailm10").style.display = "none";
           document.getElementById("flightdetailm8").style.display = "none";
           

    	  
    	  
    	  
    	  

			var slideBox = document.getElementById('flightdetail1');
			    setTimeout(function() {
			        slideBox.style.display = 'block';
			    }, 7000); 
			  
			

  			var slideBox1 = document.getElementById('flightdetail2');
  			    setTimeout(function() {
  			        slideBox1.style.display = 'block';
  			    }, 5000); 
  			  
  			

      			var slideBox2 = document.getElementById('flightdetail3');
      			    setTimeout(function() {
      			        slideBox2.style.display = 'block';
      			    }, 5000); 
      			  
      			

          			var slideBox3 = document.getElementById('flightdetail4');
          			    setTimeout(function() {
          			        slideBox3.style.display = 'block';
          			    }, 1000); 
          			  
          			

              			var slideBox4 = document.getElementById('flightdetail5');
              			    setTimeout(function() {
              			        slideBox4.style.display = 'block';
              			    }, 1000); 
              			  
              			

                  			var slideBox5 = document.getElementById('flightdetail6');
                  			    setTimeout(function() {
                  			        slideBox5.style.display = 'block';
                  			    }, 9600); 
                  			  
                  			

                      			var slideBox6 = document.getElementById('flightdetail');
                      			    setTimeout(function() {
                      			        slideBox6.style.display = 'block';
                      			    }, 9600); 
                      			  
                      			

                          			var slideBox7 = document.getElementById('flightdetail9');
                          			    setTimeout(function() {
                          			        slideBox7.style.display = 'block';
                          			    }, 9600); 
                          			  
                          			

                              			var slideBox8 = document.getElementById('flightdetail7');
                              			    setTimeout(function() {
                              			        slideBox8.style.display = 'block';
                              			    }, 8000); 
                              			  
    	  
    	  
    	  
    	  
          
          document.getElementById("flightdetailm").style.display = "block";
   	  document.getElementById("flightdetailm1").style.display = "block";
   	
   	  document.getElementById("flightdetailm2").style.display = "block";
   	  document.getElementById("flightdetailm3").style.display = "block";
   	  
   	  document.getElementById("flightdetailm4").style.display = "block";
   	  document.getElementById("flightdetailm5").style.display = "block";
   	  document.getElementById("flightdetailm6").style.display = "block";
   	  

   	  
   	  document.getElementById("flightdetailm7").style.display = "block";
   	  document.getElementById("flightdetailm9").style.display = "block";
    	 
   	  
   	  
   	  
    	  
    		document.getElementById("ima").innerHTML="<img src='hummingbird-72.png' >";
    		var abc1 = '#flightdetail';
    	  	document.getElementById('imglogo').innerHTML = '<a href="' + abc1 + '">Humming Airline</a>';

    
    		
    	  	document.getElementById("ima1").innerHTML="<img src='icons8-pinterest-72.png' >";
    	  	var abc2 = '#flightdetail1';
    	  	document.getElementById('imglogo1').innerHTML = '<a href="' + abc2 + '">Pintrest Airline</a>';

    		
    	  	
    	  	
    		document.getElementById("ima2").innerHTML="<img src='stumbl-72.png' >";
    	
    		var abc3 = '#flightdetail2';
    	  	document.getElementById('imglogo2').innerHTML = '<a href="' + abc3 + '">Stumble Airline</a>';

    	  	
    	  	
    		document.getElementById("ima3").innerHTML="<img src='star-72.png' >";
    		
    		var abc4 = '#flightdetail3';
    	  	document.getElementById('imglogo3').innerHTML = '<a href="' + abc4 + '">Star Airline</a>';

    		
    		document.getElementById("ima4").innerHTML="<img src='crowns.png' >";
    		var abc5 = '#flightdetail4';
    	  	document.getElementById('imglogo4').innerHTML = '<a href="' + abc5 + '">Crown Airline</a>';

    		
    	  	
    	  	
    		document.getElementById("ima5").innerHTML="<img src='diamond.png' >";
    		var abc6 = '#flightdetail5';
    	  	document.getElementById('imglogo5').innerHTML = '<a href="' + abc6 + '">Diamond Airline</a>';


    	
    	  	
    		document.getElementById("ima6").innerHTML="<img src='travel.png' >";
    		var abc7 = '#flightdetail6';
    	  	document.getElementById('imglogo6').innerHTML = '<a href="' + abc7 + '">Travel Airline</a>';

    	  	
    		
    		document.getElementById("ima7").innerHTML="<img src='bunny.png' >";
    		var abc8 = '#flightdetail7';
    	  	document.getElementById('imglogo7').innerHTML = '<a href="' + abc8 + '">Bunny Airline</a>';

    		
    		document.getElementById("ima8").innerHTML="<img src='lion.png' >";
    		var abc9 = '#flightdetail9';
    	  	document.getElementById('imglogo8').innerHTML = '<a href="' + abc9 + '">Lion Airline</a>';
    	
    		
    		  price1= Math.floor(Math.random()*200)+400;
    		  taxes1=price1*0.2;   
    
    		   finaltax1  =taxes1.toFixed(2);
    		  
    		   totalprice1=(price1+taxes1);
    		
    	
    			
    			document.getElementById('price1').value="$"+price1;
    			
    			document.getElementById('tax1').value="$"+finaltax1;
    			
    			document.getElementById('totals1').value="$"+totalprice1.toFixed(2);
    			
    			document.getElementById('totalsm1').value="$"+totalprice1.toFixed(2);
    			
    
    	
    	
    	
    	
    	
    	
    	
    	
 
    		  price2= Math.floor(Math.random()*250)+602;
    		  taxes2=price2*0.2;   
  
    		   finaltax2  =taxes2.toFixed(2);
    		  
    		   totalprice2=(price2+taxes2);
    		

    			
    			document.getElementById('price2').value="$"+price2;
    			
    			document.getElementById('tax2').value="$"+finaltax2;
    			
    			document.getElementById('totals2').value="$"+totalprice2.toFixed(2);
    			document.getElementById('totalsm2').value="$"+totalprice2.toFixed(2);
    	
    		  price3= Math.floor(Math.random()*300)+861;
    		  taxes3=price3*0.2;   
    	
    		   finaltax3  =taxes3.toFixed(2);
    		  
    		   totalprice3=(price3+taxes3);
    	
    			
    			document.getElementById('price3').value="$"+price3;
    			
    			document.getElementById('tax3').value="$"+finaltax3;
    			
    			document.getElementById('totals3').value="$"+totalprice3.toFixed(2);
    			document.getElementById('totalsm3').value="$"+totalprice3.toFixed(2);
    			
    		
    		
    		
    		
    		  price4= Math.floor(Math.random()*40)+1162;
    		  taxes4=price4*0.2;   
    		
    		   finaltax4  =taxes4.toFixed(2);
    		  
    		   totalprice4=(price4+taxes4);
    		
    	
    		
    			
    			document.getElementById('price4').value="$"+price4;
    			
    			document.getElementById('tax4').value="$"+finaltax4;
    			
    			document.getElementById('totals4').value="$"+totalprice4.toFixed(2);
    			document.getElementById('totalsm4').value="$"+totalprice4.toFixed(2);
    	
    		  price5= Math.floor(Math.random()*200)+1205;
    		  taxes5=price5*0.2;   
    
    		   finaltax5  =taxes5.toFixed(2);
    		  
    		   totalprice5=(price5+taxes5);
    		
    	
    			
    		
    			
    			document.getElementById('price5').value="$"+price5;
    			
    			document.getElementById('tax5').value="$"+finaltax5;
    			
    			document.getElementById('totals5').value="$"+totalprice5.toFixed(2);
    			document.getElementById('totalsm5').value="$"+totalprice5.toFixed(2);
    	
    		
    		
    		  price6= Math.floor(Math.random()*320)+1410;
    		  taxes6=price6*0.2;   
    	
    		   finaltax6  =taxes6.toFixed(2);
    		  
    		   totalprice6=(price6+taxes6);
    		
    		
    			
    			document.getElementById('price6').value="$"+price6;
    			
    			document.getElementById('tax6').value="$"+finaltax6;
    			
    			document.getElementById('totals6').value="$"+totalprice6.toFixed(2);
    			document.getElementById('totalsm6').value="$"+totalprice6.toFixed(2);
    		
  
       
    		
    		
    		
    		
    	
    		  price7= Math.floor(Math.random()*500)+1730;
    		  taxes7=price7*0.2;   
    	
    		   finaltax7  =taxes7.toFixed(2);
    		  
    		   totalprice7=(price7+taxes7);
    		
    			
    			
    		
    			
    			document.getElementById('price7').value="$"+price7;
    			
    			document.getElementById('tax7').value="$"+finaltax7;
    			
    			document.getElementById('totals7').value="$"+totalprice7.toFixed(2);
    			document.getElementById('totalsm7').value="$"+totalprice7.toFixed(2);
    		
    		  price8= Math.floor(Math.random()*700)+2235;
    		  taxes8=price8*0.2;   
    	
    		   finaltax8  =taxes8.toFixed(2);
    		  
    		   totalprice8=(price8+taxes8);
    		
    			
    		
    			
    			document.getElementById('price8').value="$"+price8;
    			
    			document.getElementById('tax8').value="$"+finaltax8;
    			
    			document.getElementById('totals8').value="$"+totalprice8.toFixed(2);
    			document.getElementById('totalsm8').value="$"+totalprice8.toFixed(2);
    	
    		
    		
    	  
    		
    		
    
    		  price10= Math.floor(Math.random()*801)+2940;
    		  taxes10=price10*0.2;   
    		
    		   finaltax10  =taxes10.toFixed(2);
    		  
    		   totalprice10=(price10+taxes10);
    		
    	
    			
    			document.getElementById('price10').value="$"+price10;
    			
    			document.getElementById('tax10').value="$"+finaltax10;
    			
    			document.getElementById('totals10').value="$"+totalprice10.toFixed(2);
    			document.getElementById('totalsm10').value="$"+totalprice10.toFixed(2);
    		
    		
    		
    		
    				document.getElementById('total1').innerHTML="$"+totalprice1.toFixed(2);
    		document.getElementById('total2').innerHTML="$"+totalprice2.toFixed(2);
    		document.getElementById('total3').innerHTML="$"+totalprice3.toFixed(2);
    		document.getElementById('total4').innerHTML="$"+totalprice4.toFixed(2);
    		document.getElementById('total5').innerHTML="$"+totalprice5.toFixed(2);
    		document.getElementById('total6').innerHTML="$"+totalprice6.toFixed(2);
    		document.getElementById('total7').innerHTML="$"+totalprice7.toFixed(2);
    		document.getElementById('total8').innerHTML="$"+totalprice8.toFixed(2);
    		document.getElementById('total9').innerHTML="$"+totalprice10.toFixed(2);
    		
    		    
           console.log(randomNumber);
          
      }
      if (randomNumber == 3) {
           document.getElementById("flightdetail2").style.display = "none";
           document.getElementById("flightdetail10").style.display = "none";

    	  
    	  
    	  
    		var slideBox = document.getElementById('flightdetail');
		    setTimeout(function() {
		        slideBox.style.display = 'block';
		    }, 7000); 
		  
		

			var slideBox1 = document.getElementById('flightdetail1');
			    setTimeout(function() {
			        slideBox1.style.display = 'block';
			    }, 5000); 
			  
			

  			var slideBox2 = document.getElementById('flightdetail3');
  			    setTimeout(function() {
  			        slideBox2.style.display = 'block';
  			    }, 5000); 
  			  
  			

      			var slideBox3 = document.getElementById('flightdetail4');
      			    setTimeout(function() {
      			        slideBox3.style.display = 'block';
      			    }, 1000); 
      			  
      			

          			var slideBox4 = document.getElementById('flightdetail5');
          			    setTimeout(function() {
          			        slideBox4.style.display = 'block';
          			    }, 1000); 
          			  
          			

              			var slideBox5 = document.getElementById('flightdetail6');
              			    setTimeout(function() {
              			        slideBox5.style.display = 'block';
              			    }, 9600); 
              			  
              			

                  			var slideBox6 = document.getElementById('flightdetail7');
                  			    setTimeout(function() {
                  			        slideBox6.style.display = 'block';
                  			    }, 9600); 
                  			  
                  			

                      			var slideBox7 = document.getElementById('flightdetail8');
                      			    setTimeout(function() {
                      			        slideBox7.style.display = 'block';
                      			    }, 9600); 
                      			  
                      			

                          			var slideBox8 = document.getElementById('flightdetail9');
                          			    setTimeout(function() {
                          			        slideBox8.style.display = 'block';
                          			    }, 8000); 
    	  
    	  
    	  
    	  
    	  
    	  
    	  
          document.getElementById("flightdetailm2").style.display = "none";
          document.getElementById("flightdetailm10").style.display = "none";
    
    	  document.getElementById("flightdetailm").style.display = "block";
   	  document.getElementById("flightdetailm1").style.display = "block";
   	  document.getElementById("flightdetailm3").style.display = "block";
   	  
   	  document.getElementById("flightdetailm4").style.display = "block";
   	  document.getElementById("flightdetailm5").style.display = "block";
   	  document.getElementById("flightdetailm6").style.display = "block";
   	  

   	  
   	  document.getElementById("flightdetailm7").style.display = "block";
   	  document.getElementById("flightdetailm8").style.display = "block";
   	  document.getElementById("flightdetailm9").style.display = "block";
    	  
    	  	document.getElementById("ima").innerHTML="<img src='hummingbird-72.png' >";
    	  	var abc9 = '#flightdetail';
    	  	document.getElementById('imglogo').innerHTML = '<a href="' + abc9 + '">Humming Airline</a>';
    	  	
    	  	
    		document.getElementById("ima1").innerHTML="<img src='icons8-pinterest-72.png' >";
    		var abc9 = '#flightdetail1';
    	  	document.getElementById('imglogo1').innerHTML = '<a href="' + abc9 + '">Pinterest Airline</a>';
    		
    		document.getElementById("ima2").innerHTML="<img src='star-72.png' >";
    		var abc9 = '#flightdetail3';
    	  	document.getElementById('imglogo2').innerHTML = '<a href="' + abc9 + '">Star Airline</a>';
    		
    		document.getElementById("ima3").innerHTML="<img src='crowns.png' >";
    		var abc9 = '#flightdetail4';
    	  	document.getElementById('imglogo3').innerHTML = '<a href="' + abc9 + '">Crown Airline</a>';
    	  	
    		document.getElementById("ima4").innerHTML="<img src='diamond.png' >";
    		var abc9 = '#flightdetail5';
    	  	document.getElementById('imglogo4').innerHTML = '<a href="' + abc9 + '">Diamond Airline</a>';
    	  	
    		document.getElementById("ima5").innerHTML="<img src='travel.png' >";
    		var abc9 = '#flightdetail6';
    	  	document.getElementById('imglogo5').innerHTML = '<a href="' + abc9 + '">Travel Airline</a>';
    	  	
    		document.getElementById("ima6").innerHTML="<img src='bunny.png' >";
    		var abc9 = '#flightdetail7';
    	  	document.getElementById('imglogo6').innerHTML = '<a href="' + abc9 + '">Bunny Airline</a>';
    	  	
    		document.getElementById("ima7").innerHTML="<img src='dolphin.png' >";
    		var abc9 = '#flightdetail8';
    	  	document.getElementById('imglogo7').innerHTML = '<a href="' + abc9 + '">Dolphin Airline</a>';
    	  	
    		
    		document.getElementById("ima8").innerHTML="<img src='lion.png' >";
    		var abc9 = '#flightdetail9';
    	  	document.getElementById('imglogo8').innerHTML = '<a href="' + abc9 + '">Lion Airline</a>';
    	  	
    	  	
    	
    		  price1= Math.floor(Math.random()*270)+500;
    		  taxes1=price1*0.2;   
   
    		   finaltax1  =taxes1.toFixed(2);
    		  
    		   totalprice1=(price1+taxes1);
    		
    	
    			
    			document.getElementById('price1').value="$"+price1;
    			
    			document.getElementById('tax1').value="$"+finaltax1;
    			
    			document.getElementById('totals1').value="$"+totalprice1.toFixed(2);
    			document.getElementById('totalsm1').value="$"+totalprice1.toFixed(2);
    			
    		
    		  price2= Math.floor(Math.random()*290)+774;
    		  taxes2=price2*0.2;   
  
    		   finaltax2  =taxes2.toFixed(2);
    		  
    		   totalprice2=(price2+taxes2);
    		
    	
    			
    			document.getElementById('price2').value="$"+price2;
    			
    			document.getElementById('tax2').value="$"+finaltax2;
    			
    			document.getElementById('totals2').value="$"+totalprice2.toFixed(2);
    			document.getElementById('totalsm2').value="$"+totalprice2.toFixed(2);

    		
    		
    	
    		  price4= Math.floor(Math.random()*350)+1070;
    		  taxes4=price4*0.2;   
    		
    		   finaltax4  =taxes4.toFixed(2);
    		  
    		   totalprice4=(price4+taxes4);
    		
    			
    		
    			
    			document.getElementById('price4').value="$"+price4;
    			
    			document.getElementById('tax4').value="$"+finaltax4;
    			
    			document.getElementById('totals4').value="$"+totalprice4.toFixed(2);
    			document.getElementById('totalsm4').value="$"+totalprice4.toFixed(2);
    	
    		
    		
    		

    		  price5= Math.floor(Math.random()*455)+1425;
    		  taxes5=price5*0.2;   
    		
    		   finaltax5  =taxes5.toFixed(2);
    		  
    		   totalprice5=(price5+taxes5);
    		
    			console.log( price1 + finaltax1  +"taxes" +totalprice1);
    			
    		
    			
    			document.getElementById('price5').value="$"+price5;
    			
    			document.getElementById('tax5').value="$"+finaltax5;
    			
    			document.getElementById('totals5').value="$"+totalprice5.toFixed(2);
    			document.getElementById('totalsm5').value="$"+totalprice5.toFixed(2);
    	
    		
    	
    		  price6= Math.floor(Math.random()*555)+1885;
    		  taxes6=price6*0.2;   
    		 
    		   finaltax6  =taxes6.toFixed(2);
    		  
    		   totalprice6=(price6+taxes6);
    		
    	
    			
    			document.getElementById('price6').value="$"+price6;
    			
    			document.getElementById('tax6').value="$"+finaltax6;
    			
    			document.getElementById('totals6').value="$"+totalprice6.toFixed(2);
    			document.getElementById('totalsm6').value="$"+totalprice6.toFixed(2);
    		
    		  price7= Math.floor(Math.random()*655)+2443;
    		  taxes7=price7*0.2;   
    	
    		   finaltax7  =taxes7.toFixed(2);
    		  
    		   totalprice7=(price7+taxes7);
    		
    	
    			
    			document.getElementById('price7').value="$"+price7;
    			
    			document.getElementById('tax7').value="$"+finaltax7;
    			
    			document.getElementById('totals7').value="$"+totalprice7.toFixed(2);
    			document.getElementById('totalsm7').value="$"+totalprice7.toFixed(2);
    		
    		  price8= Math.floor(Math.random()*700)+4001;
    		  taxes8=price8*0.2;   

    		   finaltax8  =taxes8.toFixed(2);
    		  
    		   totalprice8=(price8+taxes8);
    		
    			
    			document.getElementById('price8').value="$"+price8;
    			
    			document.getElementById('tax8').value="$"+finaltax8;
    			
    			document.getElementById('totals8').value="$"+totalprice8.toFixed(2);
    			document.getElementById('totalsm8').value="$"+totalprice8.toFixed(2);
    		
    		  price9= Math.floor(Math.random()*745)+4705;
    		  taxes9=price9*0.2;   
    	
    		   finaltax9  =taxes9.toFixed(2);
    		  
    		   totalprice9=(price9+taxes9);
    		
  
    			
    			document.getElementById('price9').value="$"+price9;
    			
    			document.getElementById('tax9').value="$"+finaltax9;
    			
    			document.getElementById('totals9').value="$"+totalprice9.toFixed(2);
    			document.getElementById('totalsm9').value="$"+totalprice9.toFixed(2);
    		
    		  price10= Math.floor(Math.random()*801)+5451;
    		  taxes10=price10*0.2;   
    		  
    		   finaltax10  =taxes10.toFixed(2);
    		  
    		   totalprice10=(price10+taxes10);
    		
    		
    			
    			document.getElementById('price10').value="$"+price10;
    			
    			document.getElementById('tax10').value="$"+finaltax10;
    			
    			document.getElementById('totals10').value="$"+totalprice10.toFixed(2);
    			document.getElementById('totalsm10').value="$"+totalprice10.toFixed(2);
    	
    		    		
    		document.getElementById('total1').innerHTML="$"+totalprice1.toFixed(2);
    		document.getElementById('total2').innerHTML="$"+totalprice2.toFixed(2);
    		document.getElementById('total3').innerHTML="$"+totalprice4.toFixed(2);
    		document.getElementById('total4').innerHTML="$"+totalprice5.toFixed(2);
    		document.getElementById('total5').innerHTML="$"+totalprice6.toFixed(2);
    		document.getElementById('total6').innerHTML="$"+totalprice7.toFixed(2);
    		document.getElementById('total7').innerHTML="$"+totalprice8.toFixed(2);
    		document.getElementById('total8').innerHTML="$"+totalprice9.toFixed(2);
    		document.getElementById('total9').innerHTML="$"+totalprice10.toFixed(2);
        

   	    
  


      }
      
      if (randomNumber == 4) {


    	  
  document.getElementById("flightdetail7").style.display = "none";
  document.getElementById("flightdetail9").style.display = "none";
    	  
   
    	
    	  
    	  
    		var slideBox = document.getElementById('flightdetail');
		    setTimeout(function() {
		        slideBox.style.display = 'block';
		    }, 7000); 
		  
		

			var slideBox1 = document.getElementById('flightdetail1');
			    setTimeout(function() {
			        slideBox1.style.display = 'block';
			    }, 5000); 
			  
			

  			var slideBox2 = document.getElementById('flightdetail2');
  			    setTimeout(function() {
  			        slideBox2.style.display = 'block';
  			    }, 5000); 
  			  
  			

      			var slideBox3 = document.getElementById('flightdetail3');
      			    setTimeout(function() {
      			        slideBox3.style.display = 'block';
      			    }, 1000); 
      			  
      			

          			var slideBox4 = document.getElementById('flightdetail4');
          			    setTimeout(function() {
          			        slideBox4.style.display = 'block';
          			    }, 1000); 
          			  
          			

              			var slideBox5 = document.getElementById('flightdetail5');
              			    setTimeout(function() {
              			        slideBox5.style.display = 'block';
              			    }, 9600); 
              			  
              			

                  			var slideBox6 = document.getElementById('flightdetail6');
                  			    setTimeout(function() {
                  			        slideBox6.style.display = 'block';
                  			    }, 9600); 
                  			  
                  			

                      			var slideBox7 = document.getElementById('flightdetail8');
                      			    setTimeout(function() {
                      			        slideBox7.style.display = 'block';
                      			    }, 9600); 
                      			  
                      			

                          			var slideBox8 = document.getElementById('flightdetail10');
                          			    setTimeout(function() {
                          			        slideBox8.style.display = 'block';
                          			    }, 8000); 
    	  
    	  
    	  
    	  
    	  
    	  
    	  document.getElementById("flightdetailm").style.display = "block";
    	  document.getElementById("flightdetailm1").style.display = "block";
    	  document.getElementById("flightdetailm2").style.display = "block";
    	  
    	  
    	  document.getElementById("flightdetailm3").style.display = "block";
    	  
    	  document.getElementById("flightdetailm10").style.display = "block";
    	  
    	  document.getElementById("flightdetailm4").style.display = "block";
    	  document.getElementById("flightdetailm5").style.display = "block";
    	  document.getElementById("flightdetailm6").style.display = "block";
    	  
  document.getElementById("flightdetailm7").style.display = "none";
  document.getElementById("flightdetailm9").style.display = "none";
    	  
    	  document.getElementById("flightdetailm8").style.display = "block";
    	  
    	  document.getElementById("flightdetailm10").style.display = "block";
    	  
    	  
    	  
    		document.getElementById("ima").innerHTML="<img src='hummingbird-72.png' >" ;
    		var abc9 = '#flightdetail';
    	  	document.getElementById('imglogo').innerHTML = '<a href="' + abc9 + '">Humming Airline</a>';
    		
    		
  
    		document.getElementById("ima1").innerHTML="<img src='icons8-pinterest-72.png' >";
    		
    		var abc9 = '#flightdetail1';
    	  	document.getElementById('imglogo1').innerHTML = '<a href="' + abc9 + '">Pinterest Airline</a>';
    	  	
    	  	
    		document.getElementById("ima2").innerHTML="<img src='stumbl-72.png'>";
    		var abc9 = '#flightdetail2';
    	  	document.getElementById('imglogo2').innerHTML = '<a href="' + abc9 + '">Stumble Airline</a>';
    		

    		
    		
    		
    		
    		
    		
    		document.getElementById("ima3").innerHTML="<img src='star-72.png' >";
    		var abc9 = '#flightdetail3';
    	  	document.getElementById('imglogo3').innerHTML = '<a href="' + abc9 + '">Star Airline</a>';
    		
    		
    		
    		document.getElementById("ima4").innerHTML="<img src='crowns.png' >";
    		var abc9 = '#flightdetail4';
    	  	document.getElementById('imglogo4').innerHTML = '<a href="' + abc9 + '">Crown Airline</a>';
    	  	
    	  	
    		document.getElementById("ima5").innerHTML="<img src='diamond.png' >";
    		var abc9 = '#flightdetail5';
    	  	document.getElementById('imglogo5').innerHTML = '<a href="' + abc9 + '">Diamond Airline</a>';
    	  	
    	  	
    		document.getElementById("ima6").innerHTML="<img src='travel.png' >";
    		var abc9 = '#flightdetail6';
    	  	document.getElementById('imglogo6').innerHTML = '<a href="' + abc9 + '">Travel Airline</a>';
    	  	
    	  	
    		document.getElementById("ima7").innerHTML="<img src='dolphin.png' >";
    		var abc9 = '#flightdetail8';
    	  	document.getElementById('imglogo7').innerHTML = '<a href="' + abc9 + '">Dolphin Airline</a>';
    	  	
    	  	
    		document.getElementById("ima8").innerHTML="<img src='dots.png' >";
    		var abc9 = '#flightdetail10';
    	  	document.getElementById('imglogo8').innerHTML = '<a href="' + abc9 + '">Dots Airline</a>';

    	 
    	 
    	 
    	
    		  price1= Math.floor(Math.random()*290)+300;
    		  taxes1=price1*0.2;   
    
    		   finaltax1  =taxes1.toFixed(2);
    		  
    		   totalprice1=(price1+taxes1);
    		
    
    			
    			document.getElementById('price1').value="$"+price1;
    			
    			document.getElementById('tax1').value="$"+finaltax1;
    			
    			document.getElementById('totals1').value="$"+totalprice1.toFixed(2);
    			document.getElementById('totalsm1').value="$"+totalprice1.toFixed(2);
    		
    	    		
    		
    		  price2= Math.floor(Math.random()*320)+594;
    		  taxes2=price2*0.2;   
    	
    		   finaltax2  =taxes2.toFixed(2);
    		  
    		   totalprice2=(price2+taxes2);
    		
    	
    			
    			document.getElementById('price2').value="$"+price2;
    			
    			document.getElementById('tax2').value="$"+finaltax2;
    			
    			document.getElementById('totals2').value="$"+totalprice2.toFixed(2);
    			document.getElementById('totalsm2').value="$"+totalprice2.toFixed(2);
    	
    		
    		
    		
    		
    		
    		
    		    
    		  price3= Math.floor(Math.random()*350)+920;
    		  taxes3=price3*0.2;   
    		 
    		   finaltax3  =taxes3.toFixed(2);
    		  
    		   totalprice3=(price3+taxes3);
    		
    			
    			document.getElementById('price3').value="$"+price3;
    			
    			document.getElementById('tax3').value="$"+finaltax3;
    			
    			document.getElementById('totals3').value="$"+totalprice3.toFixed(2);
    			document.getElementById('totalsm3').value="$"+totalprice3.toFixed(2);
    	
    		
    		  price4= Math.floor(Math.random()*403)+1273;
    		  taxes4=price4*0.2;   
    	
    		   finaltax4  =taxes4.toFixed(2);
    		  
    		   totalprice4=(price4+taxes4);
    		
    	
    			
    			document.getElementById('price4').value="$"+price4;
    			
    			document.getElementById('tax4').value="$"+finaltax4;
    			
    			document.getElementById('totals4').value="$"+totalprice4.toFixed(2);
    			document.getElementById('totalsm4').value="$"+totalprice4.toFixed(2);
    	
    		  price5= Math.floor(Math.random()*455)+1680;
    		  taxes5=price5*0.2;   
    	
    		   finaltax5  =taxes5.toFixed(2);
    		  
    		   totalprice5=(price5+taxes5);
    		
    
    			
    			document.getElementById('price5').value="$"+price5;
    			
    			document.getElementById('tax5').value="$"+finaltax5;
    			
    			document.getElementById('totals5').value="$"+totalprice5.toFixed(2);
    			document.getElementById('totalsm5').value="$"+totalprice5.toFixed(2);
    	
    		  price6= Math.floor(Math.random()*580)+2135;
    		  taxes6=price6*0.2;   
    	
    		   finaltax6  =taxes6.toFixed(2);
    		  
    		   totalprice6=(price6+taxes6);
    		
    		
    			
    			document.getElementById('price6').value="$"+price6;
    			
    			document.getElementById('tax6').value="$"+finaltax6;
    			
    			document.getElementById('totals6').value="$"+totalprice6.toFixed(2);
    			document.getElementById('totalsm6').value="$"+totalprice6.toFixed(2);
    	
    		  price7= Math.floor(Math.random()*645)+2730;
    		  taxes7=price7*0.2;   
    	
    		   finaltax7  =taxes7.toFixed(2);
    		  
    		   totalprice7=(price7+taxes7);
    		
   
    			
    			document.getElementById('price7').value="$"+price7;
    			
    			document.getElementById('tax7').value="$"+finaltax7;
    			
    			document.getElementById('totals7').value="$"+totalprice7.toFixed(2);
    			document.getElementById('totalsm7').value="$"+totalprice7.toFixed(2);
    		
    		  price9= Math.floor(Math.random()*740)+3375;
    		  taxes9=price9*0.2;   
    		
    		   finaltax9  =taxes9.toFixed(2);
    		  
    		   totalprice9=(price9+taxes9);
    		
    	
    			
    			document.getElementById('price9').value="$"+price9;
    			
    			document.getElementById('tax9').value="$"+finaltax9;
    			
    			document.getElementById('totals9').value="$"+totalprice9.toFixed(2);
    			document.getElementById('totalsm9').value="$"+totalprice9.toFixed(2);
    		
    		  price10= Math.floor(Math.random()*20)+4115;
    		  taxes10=price10*0.2;   
    		 
    		   finaltax10  =taxes10.toFixed(2);
    		  
    		   totalprice10=(price10+taxes10);
    		
    	
    			
    			document.getElementById('price10').value="$"+price10;
    			
    			document.getElementById('tax10').value="$"+finaltax10;
    			
    			document.getElementById('totals10').value="$"+totalprice10.toFixed(2);
    			document.getElementById('totalsm10').value="$"+totalprice10.toFixed(2);
    	
    		
    		
    		
    		  price11= Math.floor(Math.random()*5)+4140;
    		  taxes11=price11*0.2;   
    
    		   finaltax11  =taxes11.toFixed(2);
    		  
    		   totalprice11=(price11+taxes11);
    		
    		
    			
    			document.getElementById('price11').value="$"+price11;
    			
    			document.getElementById('tax11').value="$"+finaltax11;
    			
    			document.getElementById('totals11').value="$"+totalprice11.toFixed(2);
    			document.getElementById('totalsm11').value="$"+totalprice11.toFixed(2);
  
    		
        
    		
    		
    				document.getElementById('total1').innerHTML="$"+totalprice1.toFixed(2);
    		document.getElementById('total2').innerHTML="$"+totalprice2.toFixed(2);
    		document.getElementById('total3').innerHTML="$"+totalprice3.toFixed(2);
    		document.getElementById('total4').innerHTML="$"+totalprice4.toFixed(2);
    		document.getElementById('total5').innerHTML="$"+totalprice5.toFixed(2);
    		document.getElementById('total6').innerHTML="$"+totalprice6.toFixed(2);
    		document.getElementById('total7').innerHTML="$"+totalprice7.toFixed(2);
    		document.getElementById('total8').innerHTML="$"+totalprice9.toFixed(2);
    		document.getElementById('total9').innerHTML="$"+totalprice11.toFixed(2);
         
          console.log(randomNumber);

     }
      

      
 
 
      
     
      
 }
 </script>
 
 
 <script>
 
 window.onload=setdetails();
 </script>
 
 
 
 <script>
function initialSetup() {
	var slideBox = document.getElementById('myDivheadline');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 4000); 
	  
	}







 
</script>
 <script>
function initialSetup1() {
	var slideBox = document.getElementById('myDivheadline1');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 10000); 
	  
	}







 
</script>

 
 

<script>
function initialSetup2() {
	var slideBox = document.getElementById('myDiv');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 1400); 
	  
	}


</script>


<script>
function initialSetup3() {
	var slideBox = document.getElementById('myDiv1');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 3500); 
	  
	}


 
</script>



<script>
function initialSetup4() {
	var slideBox = document.getElementById('myDiv2');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 4100); 
	  
	}


 
</script>


<script>
function initialSetup5() {
	var slideBox = document.getElementById('myDiv3');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 5100); 
	  
	}


 
</script>


<script>
function initialSetup6() {
	var slideBox = document.getElementById('myDiv4');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 5700); 
	  
	}


 
</script>


<script>
function initialSetup7() {
	var slideBox = document.getElementById('myDiv5');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 6700); 
	  
	}


 
</script>


<script>
function initialSetup8() {
	var slideBox = document.getElementById('myDiv6');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 7700); 
	  
	}


 
</script>


<script>
function initialSetup9() {
	var slideBox = document.getElementById('myDiv7');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 8700); 
	  
	}


 
</script>


<script>
function initialSetup10() {
	var slideBox = document.getElementById('myDiv8');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 9700); 
	  
	}


 
</script>


<script>
function initialSetup11() {
	var slideBox = document.getElementById('myDiv9');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 9700); 
	  
	}


 
</script>



<script>
function initialSetup12() {
	var slideBox = document.getElementById('myDiv10');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 9000); 
	  
	}


 
</script>

<script>
function initialSetup13() {
	var slideBox = document.getElementById('flightsearch');
	    setTimeout(function() {
	        slideBox.style.display = 'none';
	    }, 10000); 
	  
	}


 
</script>








<script>

window.onload=initialSetup();
window.onload=initialSetup1();
window.onload=initialSetup2();
window.onload=initialSetup3();
window.onload=initialSetup4();
window.onload=initialSetup5();
window.onload=initialSetup6();
window.onload=initialSetup7();
window.onload=initialSetup8();
window.onload=initialSetup9();
window.onload=initialSetup10();
window.onload=initialSetup11();
window.onload=initialSetup12();
window.onload=initialSetup13();

 

</script>

      <script>

function sedate(){
var x = document.getElementById('da').value; 

document.getElementById('dates').value= x; 
document.getElementById('dates1').value=x;
document.getElementById('dates2').value=x;
document.getElementById('dates3').value=x;

}
</script>



<script>
function day(){
var k=document.getElementById('da').value;




var utcDate = new Date(k); //Date object a day behind
var g= new Date(utcDate.getTime() + utcDate.getTimezoneOffset() * 60000) ;
var dayName11= g.toString().split(' ')[0];


var dayName112= g.toString().split(' ')[1];
var dayName113= g.toString().split(' ')[2];
console.log(dayName112+"ggg");
var elements=document.getElementsByClassName('dayz');

for(var i=0; i<elements.length; i++){
	
	elements[i].value=dayName11;
}



var depdate=document.getElementsByClassName('date1');

for(var i=0; i<depdate.length; i++){
	depdate[i].value=dayName113;
}

var desdate=document.getElementsByClassName('desdate');
for(var i=0; i<desdate.length; i++){
	desdate[i].value=dayName113;
}




var month12=document.getElementsByClassName('month12');

for(var i=0; i<month12.length; i++){
	month12[i].value=dayName112;
}


var monthdes=document.getElementsByClassName('monthdes');

for(var i=0; i<monthdes.length; i++){
	monthdes[i].value=dayName112;
}




var hiddendate=document.getElementById('da').value;


var hid=document.getElementsByClassName('hid');

for(var i=0; i<hid.length; i++){
	
	hid[i].value=hiddendate;
}




}
</script>



<script>


function dayofweek(){
	
	var date= new Date();
	
	var today=date.getDay();
	
	if(today=="0"){
		
		  document.getElementById("dc").style.display = "block";
		  document.getElementById("paris").style.display = "block";
		  document.getElementById("peru").style.display = "block";
		  document.getElementById("canada").style.display = "block";
		  document.getElementById("egypt").style.display = "none";
		  
		  document.getElementById("uae").style.display = "none";
		  
		  document.getElementById("italy").style.display = "none";
		  document.getElementById("china").style.display = "none";
		  
		  document.getElementById("germany").style.display = "none";
		  document.getElementById("india").style.display = "none";
		  document.getElementById("pakistan").style.display = "none";
		
		
	}
	
	if(today=="1"){
		
		  document.getElementById("dc").style.display = "none";
		  document.getElementById("paris").style.display = "none";
		  document.getElementById("peru").style.display = "none";
		  document.getElementById("canada").style.display = "none";
		  document.getElementById("egypt").style.display = "block";
		  
		  document.getElementById("uae").style.display = "block";
		  
		  document.getElementById("italy").style.display = "block";
		  document.getElementById("china").style.display = "block";
		  
		  document.getElementById("germany").style.display = "none";
		  document.getElementById("india").style.display = "none";
		  document.getElementById("pakistan").style.display = "none";
		
		
	}
	
	
if(today=="2"){
	  document.getElementById("dc").style.display = "block";
	  document.getElementById("paris").style.display = "none";
	  document.getElementById("peru").style.display = "none";
	  document.getElementById("canada").style.display = "none";
	  document.getElementById("egypt").style.display = "none";
	  
	  document.getElementById("uae").style.display = "none";
	  
	  document.getElementById("italy").style.display = "none";
	  document.getElementById("china").style.display = "none";
	  
	  document.getElementById("germany").style.display = "block";
	  document.getElementById("india").style.display = "block";
	  document.getElementById("pakistan").style.display = "block";
	
		

	}
	
	
if(today=="3"){
	  document.getElementById("dc").style.display = "block";
	  document.getElementById("paris").style.display = "none";
	  document.getElementById("peru").style.display = "block";
	  document.getElementById("canada").style.display = "none";
	  document.getElementById("egypt").style.display = "block";
	  
	  document.getElementById("uae").style.display = "none";
	  
	  document.getElementById("italy").style.display = "block";
	  document.getElementById("china").style.display = "none";
	  
	  document.getElementById("germany").style.display = "block";
	  document.getElementById("india").style.display = "none";
	  document.getElementById("pakistan").style.display = "none";
	
		

	}
	
	
if(today=="4"){
	  document.getElementById("dc").style.display = "none";
	  document.getElementById("paris").style.display = "block";
	  document.getElementById("peru").style.display = "block";
	  document.getElementById("canada").style.display = "none";
	  document.getElementById("egypt").style.display = "none";
	  
	  document.getElementById("uae").style.display = "block";
	  
	  document.getElementById("italy").style.display = "block";
	  document.getElementById("china").style.display = "none";
	  
	  document.getElementById("germany").style.display = "none";
	  document.getElementById("india").style.display = "none";
	  document.getElementById("pakistan").style.display = "none";
	
		

	}
	
if(today=="5"){
	  document.getElementById("dc").style.display = "none";
	  document.getElementById("paris").style.display = "none";
	  document.getElementById("peru").style.display = "none";
	  document.getElementById("canada").style.display = "block";
	  document.getElementById("egypt").style.display = "block";
	  
	  document.getElementById("uae").style.display = "none";
	  
	  document.getElementById("italy").style.display = "none";
	  document.getElementById("china").style.display = "none";
	  
	  document.getElementById("germany").style.display = "block";
	  document.getElementById("india").style.display = "block";
	  document.getElementById("pakistan").style.display = "none";
	
		

	}
	
	
if(today=="6"){
	  document.getElementById("dc").style.display = "none";
	  document.getElementById("paris").style.display = "none";
	  document.getElementById("peru").style.display = "none";
	  document.getElementById("canada").style.display = "none";
	  document.getElementById("egypt").style.display = "block";
	  
	  document.getElementById("uae").style.display = "block";
	  
	  document.getElementById("italy").style.display = "none";
	  document.getElementById("china").style.display = "none";
	  
	  document.getElementById("germany").style.display = "none";
	  document.getElementById("india").style.display = "block";
	  document.getElementById("pakistan").style.display = "block";
	
		

	}
	
	
	
}



</script>


<script>

window.onload=dayofweek();

</script>




 <script>
            
            var request;
            var n;
            function sendInfo()
            {
           
           
  			var datas=document.getElementById('subscribe').value;
                
                var url="data2.jsp?val="+datas;
                if(window.XMLHttpRequest){
                    request=new XMLHttpRequest();
                }
                else if(window.ActiveXObject){
                    request=new ActiveXObject("Microsoft.XMLHTTP");
                }
                try{
                    request.onreadystatechange=getInfo;
                    request.open("GET",url,true);
                    request.send();
                    
                }catch(e){alert("unable to connect to server");}
                
                
            }
            

            function getInfo(){
            	
                if(request.readyState==4){
                    var val=request.responseText;
                    
                 
               
                   document.getElementById('amit').innerHTML=val;
              
              
              
             
                }
                
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

