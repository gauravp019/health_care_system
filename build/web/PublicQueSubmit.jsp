<%-- 
    Document   : PublicQueSubmit
    Created on : Mar 11, 2020, 12:22:19 AM
    Author     : Asus
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.DbConn"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Public Question Submit</title>  
        <link href="cssmf.css" rel="stylesheet" type="text/css" />

    </head>
   <body>
        <%String username=(String)session.getAttribute("username");
     
    if (username==null) 
    {
    response.sendRedirect("Welcome.jsp");   
    }
    
    session.setAttribute("userr",username);  
    
     String question=request.getParameter("pubque");
     
Statement st=DbConn.getStatement();
String q="Insert into publicque values ('"+username+"','"+question+"','','')";
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
  <h1 align="center">YOUR QUESTION IS SUBMITTED </h1>
  <div align="right">
       
        <form action="UserHomePage.jsp" method="post">
            <input type="submit" value="HOME PAGE" class="button"></form>
   </div>
   <br/>
   <div>
        Another Question ?
        <form action="AskPublicQue.jsp" method="post">
            <input type="submit" value="Ask"class="button"> </form>
   </div>
       <% 
        }
    else{
    System.out.println("NHI HORA");
    }
       %>
       
       

    </body>
</html>
