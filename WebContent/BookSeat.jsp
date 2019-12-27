<!--  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      	<script src="JS/jquery-1.3.2.js"></script>
	 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
	        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
	        
	        	<link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div> 
            <form name="chooseSeat">
                <table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
                                            <tbody>
                        <tr>
                            <td>
                                <input type="button" value="seat00F"  class="bg" name="submit" id="seat00F" onclick="changecolor()" /></td>
                            <td>
                                <input type="button" value="seat03F" class="bg" name="submit" id="seat03F"onclick="changecolor1()" /></td>
                            <td>
                                <input type="button" value="seat06F" class="bg" name="submit" id="seat06F" onclick="changecolor2()"/></td>
                            <td>
                                <input type="button" value="seat09F" class="bg" name="submit" id="seat09F" onclick="changecolor3()"/></td>
                            <td>
                                <input type="button" value="seat12E" class="bg" name="submit" id="seat12E" onclick="changecolor4()"/></td>
                            <td>
                                <input type="button" value="seat15E" class="bg" name="submit" id="seat15E" onclick="changecolor5()"/></td>
                            <td>
                                <input type="button" value="seat18E" class="bg" name="submit" id="seat18E" onclick="changecolor6()"/></td>
                            <td>
                                <input type="button" value="seat21E" class="bg" name="submit" id="seat21E" onclick="changecolor7()"/></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" value="seat01F" name="submit" id="seat01F"/></td>
                            <td>
                                <input type="submit" value="seat04F" name="submit" id="seat04F"/></td>
                            <td>
                                <input type="submit" value="seat07F" name="submit" id="seat07F"/></td>
                            <td>
                                <input type="submit" value="seat10F" name="submit" id="seat10F"/></td>
                            <td>
                                <input type="submit" value="seat13E" name="submit" id="seat13E"/></td>
                            <td>
                                <input type="submit" value="seat16E" name="submit" id="seat16E"/></td>
                            <td>
                                <input type="submit" value="seat19E" name="submit" id="seat19E"/></td>
                            <td>
                                <input type="submit" value="seat22E" name="submit" id="seat22E"/></td>
                        </tr>
                        <tr>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" value="seat02F" name="seat02f" id="seat02F"/></td>
                            <td>
                                <input type="submit" value="seat05F" name="submit" id="seat05F"/></td>
                            <td>
                                <input type="submit" value="seat08F" name="submit" id="seat08F"/></td>
                            <td>
                                <input type="submit" value="seat11F" name="submit" id="seat11F"/></td>
                            <td>
                                <input type="submit" value="seat14E" name="submit" id="seat14E"/></td>
                            <td>
                                <input type="submit" value="seat17E" name="submit" id="seat17E"/></td>
                            <td>
                                <input type="submit" value="seat20E" name="submit" id="seat20E"/></td>
                            <td>
                                <input type="submit" value="seat23E" name="submit" id="seat23E"/></td>
                        </tr>
                    </tbody>

                </table><br />
                <input type="radio" value="ADULT" name="Passenger" checked="checked"/><p>Adult</p>
                <input type="radio" value="CHILD" name="Passenger" /><p>Child</p>
                <input type="radio" value="INFANT" name="Passenger" /><p>Infant</p>
                <input type="text"  name="seatno" id="kkl"/>
                
                   <input type="text"  name="seatno" id="kkl"/>
                    
                    <input type="text"  value ="ja" name="one" />
                    
                            <input type="text"  name="two"/>
                            <input type="text"  name="three"/>
            </form>

            <h3><%= request.getAttribute("seats")%></h3>
        </div>
        
        
         
           	
        
        
        <script>
 
        	function changecolor(){
        		var col=document.getElementById('seat00F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat00F').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat00F').style.backgroundColor='green';
        		}
        	}
    
        </script>
              <script>
 
        	function changecolor1(){
        		var col=document.getElementById('seat03F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat03F').style.backgroundColor='red';
        			
        		
            		
            		var x="";
            		document.getElementById('kk').value=x;
            		var sa=document.getElementById('seat00F');
        			sa.disabled=true;
        		
        	
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat03F').style.backgroundColor='green';
        			var x="seat03f";
            		document.getElementById('kk').value=x;
            		var sa=document.getElementById('seat00F');
        			sa.disabled=false;
        		
        		}
        	}
    
        </script>  
        
        
        
         <script>
 
        	function changecolo11(){
        		
        			var x="seat03f";
            		document.getElementById('kk').value=x;
        		}
        	
    
        </script>  
        
        <form>
        <input type='button' value='but' onclick="sea(), sendInfo()">
        
        </form>
        
        
        
            <script>
 
        	function changecolor2(){
        		var col=document.getElementById('seat06F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat06F').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat06F').style.backgroundColor='green';
        		}
        	}
    
        </script> 
        
             <script>
 
        	function changecolor3(){
        		var col=document.getElementById('seat09F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat09F').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat09F').style.backgroundColor='green';
        		}
        	}
    
        </script>
        <script>
        var k;
        var g;
        function sea(){

        var k=document.getElementById('seat06F');
        
        var g=document.getElementById('kk');
        if(k.value=g.value){
        	k.disabled=true;
        	console.log(g.value);
        }
        
        }
        </script>
        
              <script>
 
        	function changecolor4(){
        		var col=document.getElementById('seat12E').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat12E').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat12E').style.backgroundColor='green';
        		}
        	}
    
        </script>
     
        
            <script>
 
        	function changecolor5(){
        		var col=document.getElementById('seat15E').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat15E').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat15E').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
        
        
        
        <script>
            
            var request;
            var n;
            function sendInfo()
            {
            //	var a="19";
            	var v=[];
            	
            	v.push(document.chooseSeat.one.value);
            	v.push(document.chooseSeat.two.value);
            	v.push(document.chooseSeat.three.value);
           
            //    var a="19";
                
               // var url="data.jsp?val="+v.toString();
                
                var url="data.jsp?val=" + v.toString();
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
            	var k;
            	var g;
            	var z;
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
            
               var d=document.getElementById('seat03F');
               var gh=document.getElementById('seat12E').value;
              var k=document.getElementById('seat06F').value;
              
              var g=document.getElementById('kk').value;
              z=document.getElementById('seat06F');
              
              v=document.getElementById('seat12E');
              if(k=g){
              	z.disabled=true;
              	console.log(g.value);
              }
            
              
              if(gh=g){
                	v.disabled=true;
                	console.log(z.value+"z");
                }
              
                
                
              
              
              
              
              
              
              if(n.includes(d.value)){
              	
              	d.disabled=true;
              	console.log(d.value);
              }
              
              
              
              if(n.includes(gh.value)){
              	
              	gh.disabled=true;
              	console.log(d.value);
              }

              
              
              
            
            
            
       
             
                }
            }
            
            
           
          
           
            
        </script>
        
        

        
        
          <form>
        Enter id: <input type="text"  id="kk" name="t1" >
        </form>
        <span id="ahsan"></span>
        
         <span id="ahsan1"></span>
        
        
            
        
        <script>
        window.onload=sendInfo;
     
     
      
 		
        </script>
        
   
        
     
                </body>
        
</html>    



-->

















<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      	<script src="JS/jquery-1.3.2.js"></script>
	 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
	        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
	        
	        	<link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div> 
            <form name="chooseSeat">
                <table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
                                            <tbody>
                        <tr>
                            <td>
                                <input type="button" value="seat00F"  class="bg" name="submit" id="seat00F" onclick="changecolor()" /></td>
                            <td>
                                <input type="button" value="seat03F" class="bg" name="submit" id="seat03F"onclick="changecolor1()" /></td>
                            <td>
                                <input type="button" value="seat06F" class="bg" name="submit" id="seat06F" onclick="changecolor2()"/></td>
                            <td>
                                <input type="button" value="seat09F" class="bg" name="submit" id="seat09F" onclick="changecolor3()"/></td>
                            <td>
                                <input type="button" value="seat12F" class="bg" name="submit" id="seat12F" onclick="changecolor4()"/></td>
                            <td>
                                <input type="button" value="seat15F" class="bg" name="submit" id="seat15F" onclick="changecolor5()"/></td>
                            <td>
                                <input type="button" value="seat18F" class="bg" name="submit" id="seat18F" onclick="changecolor6()"/></td>
                            <td>
                                <input type="button" value="seat21F" class="bg" name="submit" id="seat21F" onclick="changecolor7()"/></td>
                        </tr>
                  
                  
                   <tr>
                            <td>
                                <input type="button" value="seat00G"  class="bg" name="submit" id="seat00G" onclick="changecolors()" /></td>
                            <td>
                                <input type="button" value="seat03G" class="bg" name="submit" id="seat03G"onclick="changecolors1()" /></td>
                            <td>
                                <input type="button" value="seat06G" class="bg" name="submit" id="seat06G" onclick="changecolors2()"/></td>
                            <td>
                                <input type="button" value="seat09G" class="bg" name="submit" id="seat09G" onclick="changecolors3()"/></td>
                            <td>
                                <input type="button" value="seat12G" class="bg" name="submit" id="seat12G" onclick="changecolors4()"/></td>
                            <td>
                                <input type="button" value="seat15G" class="bg" name="submit" id="seat15G" onclick="changecolors5()"/></td>
                            <td>
                                <input type="button" value="seat18G" class="bg" name="submit" id="seat18G" onclick="changecolors6()"/></td>
                            <td>
                                <input type="button" value="seat21G" class="bg" name="submit" id="seat21G" onclick="changecolors7()"/></td>
                        </tr>
                        
                        
                        
                             <tr>
                            <td>
                                <input type="button" value="seat00H"  class="bg" name="submit" id="seat00H" onclick="changecolorss()" /></td>
                            <td>
                                <input type="button" value="seat03H" class="bg" name="submit" id="seat03H"onclick="changecolorss1()" /></td>
                            <td>
                                <input type="button" value="seat06H" class="bg" name="submit" id="seat06H" onclick="changecolorss2()"/></td>
                            <td>
                                <input type="button" value="seat09H" class="bg" name="submit" id="seat09H" onclick="changecolorss3()"/></td>
                            <td>
                                <input type="button" value="seat12H" class="bg" name="submit" id="seat12H" onclick="changecolorss4()"/></td>
                            <td>
                                <input type="button" value="seat15H" class="bg" name="submit" id="seat15H" onclick="changecolorss5()"/></td>
                            <td>
                                <input type="button" value="seat18H" class="bg" name="submit" id="seat18H" onclick="changecolorss6()"/></td>
                            <td>
                                <input type="button" value="seat21H" class="bg" name="submit" id="seat21H" onclick="changecolorss7()"/></td>
                        </tr>
                  
                  
                  
                  
                  
                          <tr>
                            <td>
                                <input type="button" value="seat00J"  class="bg" name="submit" id="seat00J" onclick="changecolorsss()" /></td>
                            <td>
                                <input type="button" value="seat03J" class="bg" name="submit" id="seat03J"onclick="changecolorsss1()" /></td>
                            <td>
                                <input type="button" value="seat06J" class="bg" name="submit" id="seat06J" onclick="changecolorsss2()"/></td>
                            <td>
                                <input type="button" value="seat09J" class="bg" name="submit" id="seat09J" onclick="changecolorsss3()"/></td>
                            <td>
                                <input type="button" value="seat12J" class="bg" name="submit" id="seat12J" onclick="changecolorsss4()"/></td>
                            <td>
                                <input type="button" value="seat15J" class="bg" name="submit" id="seat15J" onclick="changecolorsss5()"/></td>
                            <td>
                                <input type="button" value="seat18J" class="bg" name="submit" id="seat18J" onclick="changecolorsss6()"/></td>
                            <td>
                                <input type="button" value="seat21J" class="bg" name="submit" id="seat21J" onclick="changecolorsss7()"/></td>
                        </tr>
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                        <tr>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                            <th><h3></h3></th>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" value="seat02F" name="seat02f" id="seat02F"/></td>
                            <td>
                                <input type="submit" value="seat05F" name="submit" id="seat05F"/></td>
                            <td>
                                <input type="submit" value="seat08F" name="submit" id="seat08F"/></td>
                            <td>
                                <input type="submit" value="seat11F" name="submit" id="seat11F"/></td>
                            <td>
                                <input type="submit" value="seat14E" name="submit" id="seat14E"/></td>
                            <td>
                                <input type="submit" value="seat17E" name="submit" id="seat17E"/></td>
                            <td>
                                <input type="submit" value="seat20E" name="submit" id="seat20E"/></td>
                            <td>
                                <input type="submit" value="seat23E" name="submit" id="seat23E"/></td>
                        </tr>
                    </tbody>

                </table><br />
                <input type="radio" value="ADULT" name="Passenger" checked="checked"/><p>Adult</p>
                <input type="radio" value="CHILD" name="Passenger" /><p>Child</p>
                <input type="radio" value="INFANT" name="Passenger" /><p>Infant</p>
                <input type="text"  name="seatno" id="kkl"/>
            </form>

            <h3><%= request.getAttribute("seats")%></h3>
        </div>
        <script>
 
        	function changecolor(){
        		var col=document.getElementById('seat00F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat00F').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat00F').style.backgroundColor='green';
        		}
        	}
    
        </script>
              <script>
 
        	function changecolor1(){
        		var col=document.getElementById('seat03F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat03F').style.backgroundColor='red';
        			
        		
            		
            		var x="";
            		document.getElementById('kk').value=x;
            		var sa=document.getElementById('seat00F');
        			sa.disabled=true;
        		
        	
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat03F').style.backgroundColor='green';
        			var x="seat03f";
            		document.getElementById('kk').value=x;
            		var sa=document.getElementById('seat00F');
        			sa.disabled=false;
        		
        		}
        	}
    
        </script>  
        
        
        
         <script>
 
        	function changecolo11(){
        		
        			var x="seat03f";
            		document.getElementById('kk').value=x;
        		}
        	
    
        </script>  
        
        <form>
        <input type='button' value='but' onclick="sendInfo()">
        
        </form>
        
        
        
            <script>
 
        	function changecolor2(){
        		var col=document.getElementById('seat06F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat06F').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat06F').style.backgroundColor='green';
        		}
        	}
    
        </script>      <script>
 
        	function changecolor3(){
        		var col=document.getElementById('seat09F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat09F').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat09F').style.backgroundColor='green';
        		}
        	}
    
        </script>
        <!--  
        <script>
        var k;
        var g;
        function sea(){

        var k=document.getElementById('seat06F');
        
        var g=document.getElementById('kk');
        if(k.value=g.value){
        	k.disabled=true;
        	console.log(g.value);
        }
        
        }
        </script>
        -->
              <script>
 
        	function changecolor4(){
        		var col=document.getElementById('seat12F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat12F').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat12F').style.backgroundColor='green';
        		}
        	}
    
        </script>
     
        
            <script>
 
        	function changecolor5(){
        		var col=document.getElementById('seat15F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat15F').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat15F').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
          <script>
 
        	function changecolor6(){
        		var col=document.getElementById('seat18F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat18F').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat18F').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
         <script>
 
        	function changecolor7(){
        		var col=document.getElementById('seat21F').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat21F').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat21F').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
         <script>
 
        	function changecolors(){
        		var col=document.getElementById('seat00G').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat00G').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat00G').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
         <script>
 
        	function changecolors1(){
        		var col=document.getElementById('seat03G').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat03G').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat03G').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
         <script>
 
        	function changecolors2(){
        		var col=document.getElementById('seat06G').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat06G').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat06G').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
         <script>
 
        	function changecolors3(){
        		var col=document.getElementById('seat09G').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat09G').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat09G').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
         <script>
 
        	function changecolors4(){
        		var col=document.getElementById('seat12G').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat12G').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat12G').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
         <script>
 
        	function changecolors5(){
        		var col=document.getElementById('seat15G').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat15G').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat15G').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
         <script>
 
        	function changecolors6(){
        		var col=document.getElementById('seat18G').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat18G').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat18G').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
         <script>
 
        	function changecolors7(){
        		var col=document.getElementById('seat21G').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat21G').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat21G').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss(){
        		var col=document.getElementById('seat00H').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat00H').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat00H').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss1(){
        		var col=document.getElementById('seat03H').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat03H').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat03H').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss2(){
        		var col=document.getElementById('seat06H').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat06H').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat06H').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss3(){
        		var col=document.getElementById('seat09H').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat09H').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat09H').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss4(){
        		var col=document.getElementById('seat12H').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat12H').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat12H').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss5(){
        		var col=document.getElementById('seat15H').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat15H').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat15H').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
           <script>
 
        	function changecolorss6(){
        		var col=document.getElementById('seat18H').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat18H').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat18H').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorss7(){
        		var col=document.getElementById('seat21H').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat21H').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat21H').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
           <script>
 
        	function changecolorsss(){
        		var col=document.getElementById('seat00I').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat00I').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat00I').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
           <script>
 
        	function changecolorsss1(){
        		var col=document.getElementById('seat03I').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat03I').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat03I').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
        
        <script>
 
        	function changecolorsss2(){
        		var col=document.getElementById('seat06I').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat06I').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat06I').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        <script>
 
        	function changecolorsss3(){
        		var col=document.getElementById('seat09I').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat09I').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat09I').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
    
    
    <script>
 
        	function changecolorsss4(){
        		var col=document.getElementById('seat12I').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat12I').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat12I').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        <script>
 
        	function changecolorsss5(){
        		var col=document.getElementById('seat15I').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat15I').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat15I').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
        <script>
 
        	function changecolorsss6(){
        		var col=document.getElementById('seat18I').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat18I').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat18I').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        
        
        <script>
 
        	function changecolorsss7(){
        		var col=document.getElementById('seat21I').style.backgroundColor;
        		
        		if(col=='green'){
        			document.getElementById('seat21I').style.backgroundColor='red';
        		}
        		
        		else if (col !== 'green') {
        			document.getElementById('seat21I').style.backgroundColor='green';
        		}
        	}
    
        </script>
        
        
        <script>
            
            var request;
            var n;
            function sendInfo()
            {
           
                var a="11";
             
                
                var url="data.jsp?val="+a;
                
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
            
            
              
         //     v=document.getElementById('seat12E');
              
              
        //   var z=document.getElementById('seat21E');
           
          // var td=document.getElementById('seat15E');     
           //var b=document.getElementById('seat18E');
           //   if(k=td){
             // 	p.disabled=true;
              	//console.log(g.value);
              //}
            
              
           //   if(gh=g){
             //   	v.disabled=true;
               // 	console.log(z.value+"z");
                //}
              
                
                
              
              
              
              
              
              
           //   if(n.includes(d.value)){
            	  
           //	 $("#seat03F").p('disabled', true);
         //	document.getElementById("#seat03F").disabled = true; 
         

       //  document.getElementById("seat03F").setAttribute("disabled", "disabled");
             // 	d.disabled=true;
            //  	console.log(d.value);
            
            
      //   console.log(n.includes(d.value));
        //      }
              
           
           
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
              //	console.log(d.value);
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
        
        
          <form>
        Enter id: <input type="text"  id="kk" name="t1" >
        </form>
        <span id="ahsan"></span>
        
         <span id="ahsan1"></span>
        
        
            
        
        <script>
        window.onload=sendInfo();
     
     
      
 		
        </script>
        
   
        
     
                </body>
        
</html>        

