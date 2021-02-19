
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


public class Chat extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
     
       
        Statement st=DbConn.getStatement();
        
        ResultSet rs=null;
       

    String que="";
       try {
                que=req.getParameter("search");;
    
        
        String q="select Answer from chatbox where Question like '%"+que+"%'   ";
        
        rs=st.executeQuery(q);
        
       if(rs.next())
       {
           HttpSession session=req.getSession(true);
            session.setAttribute("chat",rs.getString(1));
            resp.sendRedirect("chatbox.jsp");
       }
        else{
           System.out.println("Search valid");
        }
     
    }
    catch (Exception ex) {
        System.out.println(ex); 
    }
    
    }
      
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    resp.sendRedirect("Welcome.jsp");
    }
}



   