package test1;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author pak1p
 */
@WebServlet(name="login", urlPatterns = {"/login"})
public class login extends HttpServlet {

	String ids;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        String username=request.getParameter("uname");
        
        String password=request.getParameter("upassword");
        
        LoginDao dao=new LoginDao();
        
        
        try {
            if(dao.check(username,password)&& dao.ra.equals("customer")){
            	 ids=LoginDao.id;
                 System.out.println("that is id"+ids);
                 
                 HttpSession session=request.getSession();
                 session.setAttribute("ids", ids);
                 
                response.sendRedirect("BookFlight.jsp");
               
                
            }
            
            else if(dao.check(username,password)&& dao.ra.equals("admin")){
            	
            	 ids=LoginDao.id;
               //  System.out.println("that is id"+ids);
                 
                 HttpSession session=request.getSession();
                 session.setAttribute("ids", ids);
                response.sendRedirect("PendingBookings.jsp");
            }
            
            
            else{
            	
            	String message = "Invalid Username or Password";
            	request.setAttribute("message", message);
            	request.getRequestDispatcher("LogIn.jsp").forward(request, response);
            	
            	
             //   response.sendRedirect("LogIn.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }



 
}
