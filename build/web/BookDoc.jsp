<%-- 
    Document   : BookDoc
    Created on : Mar 15, 2020, 11:02:33 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import=" database.DbConn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Slot Booked</title>
    </head>
   <body>
        <%String username=(String)session.getAttribute("userr");
        String doc=(String)session.getAttribute("bookdoc");
     
    if (username==null) 
    {
    response.sendRedirect("Welcome.jsp");
    }
           
            
            String booking=request.getParameter("Book");
            
            System.out.println(booking);
            
            Statement st=DbConn.getStatement();
          String q= "UPDATE slot SET "+booking+" = '"+username+"'  where doctor='"+doc+"' ";
    int t=0;
   
        try {
            
             t= st.executeUpdate(q);
            
            } 
        catch (Exception ex) {
            System.out.print(ex);
        }
           
        %>
<%         if(t==1){
    response.sendRedirect("BookSlot.jsp");
  }
                else   {
            %>
                      <h2> Sorry Your Slot cant Booked</h2>
            <%
                        }
            %>
            <form action="UserHomePage.jsp" method="post">
            <input type="submit" value="HOME PAGE"></form>
        </h2>
    </body>
</html>
