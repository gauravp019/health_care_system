<%-- 
    Document   : viewdoctors
    Created on : Oct 11, 2019, 5:27:44 PM
    Author     : Asus
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.DbConn" %>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW PUBLIC ANSWERS</title>
        <link href="cssmf.css" rel="stylesheet" type="text/css" />
    </head>
      <%String username=(String)session.getAttribute("username");
     
    if (username==null) 
    {
    response.sendRedirect("Welcome.jsp");   
    }
    session.setAttribute("userr",username);
%>
<body style="background-color: cadetblue"><h1>Hello User <%=username%>!</h1>
       <div> 
           <form action="UserHomePage.jsp" method="post">
       <input type="submit" value="HOME" class="button">
       </form>
        </div>
      <%

try{
        Statement st=DbConn.getStatement();

        String q="Select * from publicque ";
      ResultSet rs= st.executeQuery(q);
        
      while(rs.next())
        {
        %>
        <br>
        <div class="foot">
        <b>Question:</b><%=rs.getString(2)%><br/>
        <b>Answer</b>:<%=rs.getString(4)%><br>
        <b>Asked By:</b><%=rs.getString(1)%><br>
        <b> Answered By: </b>Dr.<%=rs.getString(3)%><br>
        <br/>        
      <br>
      </div>

<%
        }
        
           }
        

catch (Exception ex)
            { System.out.print(ex);}
   
    
        %>
        
        
    </body>
</html>
