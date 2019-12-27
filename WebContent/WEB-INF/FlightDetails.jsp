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


 <section>

  <div class="container">

    <div class="row">
      <div class="col-12">

        <p>
          We are always here to help. If you have any requirements/queries about our services; fill up
          the contact form below and we'll do our best to reply within 24 hours Alternatively simply
          pickup the phone and give us a call. </p>
          <hr/>
        </p>
      </div>


    </div>
  </div>
 </section>

 <section class="form-section">

    <div class="container">
  
      <div class="row">
        <div class="col-md-6">
  
          <form class='card p-3'>
            <!-- this is not regular row like we have above this is
            form-row. inside that form u have to spicfy how many columns
          u want so i did that by writing col-md-6 twice inside div-->
            <div class="form-row">
            <div class="form-group col-md-6">
              <input type="text" class="form-control" placeholder="Full name">

            </div>
<!--the reason  y it is form-group class bc in 1 div u can have multiple
input tags also. without from-group class our forum will not look niece-->
           
            </div>


            <div class="form-row">
              <div class="form-group col-md-6">
                <input type="number" class="form-control" placeholder="Contact Number">
  
              </div>
  <!--the reason  y it is form-group class bc in 1 div u can have multiple
  input tags also. without from-group class our forum will not look niece-->
             
                
              </div>

              <div class="form-row">
                  <div class="form-group col-md-">
                    <input type="text" class="form-control" placeholder="Subject">
      
                  </div>
     
                  </div>

               
<!--text-center bc u want button tobe in center btn is bootstrap class
that give us button styling and btn-primary give it a blue color-->
                      <div class="form-row">
                          <div class="form-group col-md-12 text-center">
                            <button type="submit" class="btn btn-primary "><i class="fas fa-paper-plane">

                            </i>Send Message</button>
              
                          </div>
             
                          </div>

                  

          </form>
        </div>

        


 

  
  
      </div>
    </div>
   </section>

</body>
</html>