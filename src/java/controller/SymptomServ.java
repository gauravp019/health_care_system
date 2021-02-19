/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import database.DbConn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Asus
 */
public class SymptomServ extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
resp.sendRedirect("Welcome.jsp");
    }

    @Override
     protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        
        String sym =req.getParameter("checkbox");
         if(sym==null)
         {resp.sendRedirect("UserHomePage.jsp");}

        
        
try{ 
        Statement st=DbConn.getStatement();

        String q="Select disease from symptoms where symptom ='"+sym+"' ";
        
        ResultSet rs= st.executeQuery(q);
      
         
      if(rs.next())
        {
              HttpSession session=req.getSession(true);
              session.setAttribute("dis1",rs.getString(1));
              System.out.print(rs.getString(1));
              
       resp.sendRedirect("symptoms.jsp");
           }
        
       
            } 
catch (Exception ex)
            { System.out.print(ex);}
   
    
        
    }

}