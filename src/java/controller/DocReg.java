/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DoctRegst;

/**
 *
 * @author Asus
 */
public class DocReg extends HttpServlet  {

      protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     resp.sendRedirect("Welcome.jsp");
    }

    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {         
 
            
            String username=req.getParameter("docname");
            String password=req.getParameter("dpass");
            String cnfpass=req.getParameter("dcnfpass");                       
            String email=req.getParameter("demail");
            String wrk=req.getParameter("wrk");
            String spc=req.getParameter("spc");
            String quali=req.getParameter("dquali");
            long pno=Long.parseLong(req.getParameter("dpno"));
            int age=Integer.parseInt(req.getParameter("dage"));
            String gender=req.getParameter("dgen");
            String add=req.getParameter("dadd");
         
            if (password.equals(cnfpass))
        {
            DoctRegst r=new DoctRegst();
            if(r.DocRegester(username, password, email, pno,quali, age,wrk,spc,gender,add))
                    
            { 
            HttpSession session=req.getSession(true);
            session.setAttribute("username",username);
            
            resp.sendRedirect("AppliWait.jsp");
            }
        }
        else 
        {
        resp.sendRedirect("Welcome.jsp");
        }
    }      

}