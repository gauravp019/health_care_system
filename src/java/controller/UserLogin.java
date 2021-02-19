
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.UserCheck;

public class UserLogin extends HttpServlet
{     

    
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     resp.sendRedirect("Welcome.jsp");
    }

    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
  String username=req.getParameter("uname");
  String password=req.getParameter("upass");
  
    UserCheck l=new UserCheck();
    if(l.login(username, password)) 
          {
              HttpSession session=req.getSession(true);
              session.setAttribute("username",username);
          
              resp.sendRedirect("UserHomePage.jsp");
          
          
          }
  
    else 
          {resp.sendRedirect("Welcome.jsp");}
  
    }
    
    
}
