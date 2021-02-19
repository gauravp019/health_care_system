/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DocCheck;


public class DocLogin extends HttpServlet {
    
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     resp.sendRedirect("WelcomeDoc.jsp");
    }

    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
  String drname=req.getParameter("dname");
  String drpass=req.getParameter("dpass");
  
    DocCheck l=new DocCheck();
    if(l.dlogin(drname, drpass)) 
          {
               String special=l.spc(drname);
               
              HttpSession session=req.getSession(true);
              session.setAttribute("drname",drname);
              session.setAttribute("special",special);
          
              resp.sendRedirect("DocHome.jsp");
          
          
          }
  
    else 
          {resp.sendRedirect("WelcomeDoc.jsp");}
  
    }
    
    
}


