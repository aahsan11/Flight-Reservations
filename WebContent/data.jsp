<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<%
response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");//http 1.1
response.setHeader("Pragma", "no-cache"); //http 1.0
response.setHeader("Expires", "0"); //proxy


if(session.getAttribute("ids")==null){
	
	response.sendRedirect("LogIn.jsp");
}

%>

<%
    
String s=request.getParameter("val");

String d=request.getParameter("des");

String time=request.getParameter("time");

String routeNames=request.getParameter("val");

String date=request.getParameter("date");

String airlinename=request.getParameter("airline");

System.out.println(routeNames+ "dn");

if(s==null || s.trim().equals("")){
    out.print("please enter id");
}
else{
   // int id=Integer.parseInt(s);
    //out.print(id);
    try{
        Class.forName("com.mysql.jdbc.Driver");
         Connection connection=DriverManager.getConnection("jdbc:mysql://den1.mysql6.gear.host:3306/khamdu", "khamdu", "Sq1HK_2S_fn0");
     //   PreparedStatement statement=connection.prepareStatement("select Type from newuser where Email=? and Password=? and AccountType=?");
        
        PreparedStatement statement=connection.prepareStatement("select SeatNumber from travel where Depairport=? and ArrAirport=? and DepTime=? and DepDate=? and Airline=?");
        statement.setString(1,s);
       statement.setString(2,d);
       statement.setString(3,time);
       statement.setString(4,date);
       statement.setString(5,airlinename);
        ResultSet rs= statement.executeQuery();
        while(rs.next()){
            out.print(rs.getString(1));
        }
        connection.close();
    }
    catch(Exception e){e.printStackTrace();}
}

String a=(String)session.getAttribute("no");
System.out.println(a +"l");


    %>