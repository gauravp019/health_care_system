<%-- 
    Document   : AnsPublicQue
    Created on : Mar 15, 2020, 6:33:18 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ans Public Question</title>
		                        <link href="cssmf.css" rel="stylesheet" type="text/css" />

                                <style type="text/css">
<!--
.style1 {font-family: Geneva, Arial, Helvetica, sans-serif}
-->
                                </style>
</head>
    <body bgcolor="#DEF"> <%String username=(String)session.getAttribute("docname");
     
    if (username==null) 
    {
    response.sendRedirect("WelcomeDoc.jsp");
    }
    
        %><form action="SavePublicAns.jsp" method="post">
        <h1>HELLO <span class="style1">Dr</span>.<%=username%></h1><br>
         <div class="textfield textfield--outlined">
  <input class="textfield__input" id="tf-two"  type="text" name=drreply>
  <label class="textfield__label" for="tf-two">Ask Question Here</label>
  <div class="textfield__ripple" aria-hidden="true"></div>
</div>
       <input type="submit" value="Answer Question">
       </form>     
    </body>
    
</html>