
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserReg;


public class RegUser extends HttpServlet {

      protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     resp.sendRedirect("Welcome.jsp");
    }

    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {         
 
            
            String username=req.getParameter("username");
            String password=req.getParameter("pass");
            String cnfpass=req.getParameter("cnfpass");                       
            String email=req.getParameter("email");
            long pno=Long.parseLong(req.getParameter("pno"));
            int age=Integer.parseInt(req.getParameter("age"));
            String gender=req.getParameter("gen");
            String add=req.getParameter("add");
         
            if (password.equals(cnfpass))
        {
            UserReg r=new UserReg();
            if(r.Regestered(username, password, email, pno, age,gender,add))
                    
            { 
            HttpSession session=req.getSession(true);
            session.setAttribute("username",username);
            
            resp.sendRedirect("UserHomePage.jsp");
            }
        }
        else 
        {
        resp.sendRedirect("Welcome.jsp");
        }
    }      

}