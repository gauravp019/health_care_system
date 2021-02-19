<%-- 
    Document   : symptoms
    Created on : Apr 13, 2020, 8:17:47 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Symptoms Checker</title>
        <link href="cssmf.css" rel="stylesheet" type="text/css" />

        <style type="text/css">
<!--
.style2 {font-size: 36px}
-->
        </style>
</head>
<body style="background-color: #DEF2F1">
  <%
      String username=(String)session.getAttribute("username");
      String dis1=(String)session.getAttribute("dis1");
     
         
    if (username==null) 
    {
    response.sendRedirect("Welcome.jsp");   
    }
    session.setAttribute("userr",username);
    
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    
        %>
        <br/>
        <br/>
        <br/>
        <br/>
        <div align="center" class="topmain style2">
        Hello <%=username %> According Symptoms you Give You may have :
        <br><%=dis1%>        </div>
		<form action="UserHomePage.jsp" method="post">
       <input type="submit" value="HOME PAGE" class="button">
        <br>
    </body>
</html>
