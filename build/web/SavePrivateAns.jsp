<%-- 
    Document   : SavePrivateAns
    Created on : Mar 15, 2020, 8:08:29 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.Statement"%>
<%@page import=" database.DbConn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Saving Private Ans</title>
         <link href="cssmf.css" rel="stylesheet" type="text/css" />

    </head>
    <body bgcolor="#DEF">
        <%String username=(String)session.getAttribute("docname");
     
    if (username==null) 
    {
    response.sendRedirect("WelcomeDoc.jsp");
    }
           
            String ans=request.getParameter("drprivatereply");
            String patient=(String)session.getAttribute("patientprivate");
            
Statement st=DbConn.getStatement();
String q= "UPDATE privateque SET DOCTOR='"+username+"' , ANSWER='"+ans+"' where PATIENT='"+patient+"' ";
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