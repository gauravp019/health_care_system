<%-- 
    Document   : PrivateQueSubmit
    Created on : Mar 11, 2020, 12:44:19 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.DbConn"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="cssmf.css" rel="stylesheet" type="text/css" />

    </head>
    <body style="background-color: #DEF2F1">
        <%String username=(String)session.getAttribute("username");
        
        String topic=(String)session.getAttribute("topic");
     
    if (username==null) 
    {
    response.sendRedirect("Welcome.jsp");   
    }
    session.setAttribute("userr",username); 
    
     String question=request.getParameter("prique");
     
Statement st=DbConn.getStatement();

String q="Insert into privateque values ('"+username+"','"+question+"','"+topic+"','','')";
    int t=0;
   
        try {
            
             t= st.executeUpdate(q);
            
            } 
        catch (Exception ex) {
            System.out.print(ex);
        }
    if(t==1)
    {
       %>
   
        <h1>YOUR QUESTION IS SUBMITTED </h1>
        <form action="UserHomePage.jsp" method="post">
       <input type="submit" value="HOME PAGE" class="button">
       <% 
        }
    else{
    System.out.println("NHI HORA");
    }
       %>
       
       
</form>   
    </body>
</html>