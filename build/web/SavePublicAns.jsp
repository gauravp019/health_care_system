<%-- 
    Document   : SavePublicAns
    Created on : Mar 15, 2020, 6:35:08 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import=" database.DbConn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Public Ans Saving</title>
                <link href="cssmf.css" rel="stylesheet" type="text/css" />

    </head>
   <body bgcolor="#DEF">
        <%String username=(String)session.getAttribute("docname");
     
    if (username==null) 
    {
    response.sendRedirect("WelcomeDoc.jsp");
    }
           
            String ans=request.getParameter("drreply");
            String patient=(String)session.getAttribute("patient");
            
Statement st=DbConn.getStatement();
String q= "UPDATE publicque SET DOCTOR='"+username+"' , ANSWER='"+ans+"' where PATIENT='"+patient+"' ";
    int t=0;
   
        try {
            
             t= st.executeUpdate(q);
            
            } 
        catch (Exception ex) {
            System.out.print(ex);
        }
           
        %>
        <h2>THANK YOU DOCTOR !<br>
         <form action="DocHome.jsp" method="post">
             <input type="submit" value="HOME PAGE" class="button"></form>
        </h2>
    </body>
</html>
