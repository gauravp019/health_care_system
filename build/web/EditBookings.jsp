<%-- 
    Document   : EditBookings
    Created on : Mar 16, 2020, 10:53:35 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%String username=(String)session.getAttribute("docname");
      
     
    if (username==null) 
    {
    response.sendRedirect("WelcomeDoc.jsp");
    }
    
        %>
        <form action="TimingsUpdate.jsp">
        <input type="text" placeholder="Timings 1" name="timing1" ><br>
        <input type="text" placeholder="Timings 2" name="timing2" ><br>
        <input type="text" placeholder="Timings 3" name="timing3" ><br>
        <input type="text" placeholder="Timings 4" name="timing4" ><br>
        <input type="text" placeholder="Alternate Timings" name="Alternate" ><br>       
<button name="Edit" type="submit" >EDIT</button>
        </form>

    </body>
</html>
