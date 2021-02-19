<%-- 
    Document   : AskPrivateQue
    Created on : Mar 11, 2020, 12:42:39 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ask Private Que</title>
        <link href="cssmf.css" rel="stylesheet" type="text/css" />

    </head>
    <body  style="background-color: #DEF2F1">
        <%String username=(String)session.getAttribute("username");
     
    if (username==null) 
    {
    response.sendRedirect("Welcome.jsp");   
    }
    session.setAttribute("userr",username);
    
     String topic =request.getParameter("topic"); 
     
       session.setAttribute("topic", topic);
        %>
        <h1>Hello User <%=username%> </h1>
       <div>
        <form action="PrivateQueSubmit.jsp" method="post">
        
        <div class="textfield textfield--outlined">
  <input class="textfield__input" id="tf-two"  type="text" name="prique">
  <label class="textfield__label" for="tf-two">Ask Question Here</label>
  <div class="textfield__ripple" aria-hidden="true"></div>
</div>
        <input type="submit" value="ASK" class="button">
        </form>
       </div>
       <div  align="right"><form action="UserHomePage.jsp" method="post">
       <input type="submit" value="HOME PAGE" class="button">
        </form>
    </div>
       </body>
</html>
