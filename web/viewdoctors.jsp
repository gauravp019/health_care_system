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
        <title>VIEW DOCTOR</title>
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

        String q="Select * from doct ";
      ResultSet rs,ra;
         rs= st.executeQuery(q);
        
        
      while(rs.next())
        {
        %>
        <br>
        <div class="foot">
        <b>Dr.<%=rs.getString(1)%></b>
            <% session.setAttribute("bookdoc",rs.getString(1));%>
        <b>Contact</b>:<%=rs.getString(4)%><br>
        <b>Email</b>:<%=rs.getString(3)%><br>
        <b>Work Experience</b>:<%=rs.getInt(8)%><br>
        <b> Specialist</b>:<%=rs.getString(9)%><br>
        <br/>        
        
          <%
                String a="Select booked from booked where user='"+username+"' ";

                 ra= st.executeQuery(a);
                  
          String check="No";
          
          if(ra.next())
          {
if(ra.getString(1).equals(check))
{
%> 
<form action="BookSlot.jsp">
    
    <input type="submit" value="Book Slot" class="button">
      
</form>
      <br>
      </div>

<%
        }
        
           }
        
}
            } 
catch (Exception ex)
            { System.out.print(ex);}
   
    
        %>
        
        
    </body>
</html>
