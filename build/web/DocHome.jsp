<%-- 
    Document   : DocHome
    Created on : Mar 15, 2020, 4:57:05 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doc's Home Page</title>
        <link href="cssmf.css" rel="stylesheet" type="text/css" />

        <style type="text/css">
<!--
.style1 {font-size: x-large}
-->
        </style>
</head>
      <%String drname=(String)session.getAttribute("drname");
     
    if (drname==null) 
    {
    response.sendRedirect("WelcomeDoc.jsp");   
    }
    session.setAttribute("docname",drname);
    
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    
        %>
    <body bgcolor="#DEF2F1">
	 <div align="center" class="topmain style1">Don’t you find it strange that doctors call what they do “practice”?		  </div>
		<br/>
	  <h1>Hello Dr. <%=drname%>! 
              <form action="usrlgout.jsp" method="post">
              <input name="submit" type="submit" class="button" style="float: right;" value="LOGOUT">
              </form> <br/>
    </h1>
	  <br/><br/>      
		 
        
        <!--public answer---------------------------->
        
         <form action="ShowPublicQue.jsp" method="post">
            <input type="submit" class="button" value="SHOW PUBLIC QUESTIONS">
        </form>
        
        
	 <!--public answer--------------------------->
         
        <form action="ShowPrivateQue.jsp" method="post">
            <input type="submit" class="button" value="SHOW MY TOPIC QUESTIONS">
        </form>
	 <!--show my bookings--------------------------->
         
        <form action="ShowBookings.jsp" method="post">
            <input type="submit" class="button" value="SHOW MY APPOINTMENTS">
        </form>
	 <!--edit bookings--------------------------->
         
        <form action="EditBookings.jsp" method="post">
            <input type="submit" class="button" value="Edit Bookings">
        </form>
         
         
    </body>
</html>
