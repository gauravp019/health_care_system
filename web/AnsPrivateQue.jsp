<%-- 
    Document   : AnsPrivateQue
    Created on : Mar 15, 2020, 8:05:17 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ans Private Ques</title>
        <link href="cssmf.css" rel="stylesheet" type="text/css" />

    </head>
    <body bgcolor="#DEF"> <%String username=(String)session.getAttribute("docname");
     
    if (username==null) 
    {
    response.sendRedirect("WelcomeDoc.jsp");
    }
    
        %><form action="SavePrivateAns.jsp" method="post">
        <h1>HELLO Dr.<%=username%></h1><br>
		
		 <div class="textfield textfield--outlined">
  <input class="textfield__input" id="tf-two"  type="text" name=drprivatereply>
  <label class="textfield__label" for="tf-two">Ans Question Here</label>
  <div class="textfield__ripple" aria-hidden="true"></div>
</div>
		
       
      
       <input type="submit" value="Answer Question">
       </form>     
    </body>
    
</html>
