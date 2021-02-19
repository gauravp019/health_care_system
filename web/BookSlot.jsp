<%-- 
    Document   : BookSlot
    Created on : Mar 15, 2020, 9:34:52 PM
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
        <title>Book Doctor</title>
                <link href="cssmf.css" rel="stylesheet" type="text/css" />

    </head>
    <body style="background-color: #DEF2F1;">
             <%String username=(String)session.getAttribute("username");
             String bookdoc=(String)session.getAttribute("bookdoc");
     
    if (username==null) 
    {
    response.sendRedirect("Welcome.jsp");   
    }
    session.setAttribute("userr",username);
    
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    
      

try{ 
    int i=0;
        Statement st=DbConn.getStatement();

        String q="Select * from slot ";
 
        ResultSet rs= st.executeQuery(q);
         
      while(rs.next())
        {
        %>
        <br>
        <form action="BookDoc.jsp">
            
        <b>Dr.<%=rs.getString(1)%></b>
        <b>Timings</b>:<br/>
        <%=rs.getString(2)%><button class="button" name="Book" id="" type="submit" value="timing1">Book</button><br>
        <%=rs.getString(3)%><button class="button" name="Book" type="submit" value="timing2">Book</button><br>
        <%=rs.getString(4)%><button name="Book" class="button" type="submit" value="timing3">Book</button><br>
        <%=rs.getString(5)%><button name="Book" type="submit" class="button" value="timing4">Book</button><br>
        <%=rs.getString(6)%><button name="Book" class="button" type="submit" value="Alternate">Book</button><br>
        
        </form>
      <br>
        <div align ="right">
            <form action="UserHomePage.jsp"><input type="submit" value="HOME" class="button">
           </form>
           </div>
       <%
           }
        
    String qu="UPDATE booked SET booked='yes' WHERE user='"+username+"'; ";
 int t=st.executeUpdate(qu);
            } 
catch (Exception ex)
            { System.out.print(ex);}
   
    
        %>
    </body>
</html>
