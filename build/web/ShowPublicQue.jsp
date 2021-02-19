
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.DbConn"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Public Questions</title>
		        <link href="cssmf.css" rel="stylesheet" type="text/css" />

                <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-family: Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;
}
-->
                </style>
</head>
   <body bgcolor="#DEF2F1">
        <%String docname=(String)session.getAttribute("docname");
     
    if (docname==null) 
    {
    response.sendRedirect("WelcomeDoc.jsp");
    }
    
        %><h1>HELLO Dr.<%=docname%></h1><br>
        <form action="DocHome.jsp"><input type="submit" class="button" value="HOME">
        </form>
        <%
try{
        Statement st=DbConn.getStatement();

        String q="Select * from publicque ";
 
        ResultSet rs= st.executeQuery(q);
        
      while(rs.next())
        {
        %>
        <span class="style1">Patient:</span><%=rs.getString(1)%>
        <% session.setAttribute("patient",rs.getString(1)); %>
        <br>
        <span class="style1">Question:</span><%=rs.getString(2)%>
        
        <form action="AnsPublicQue.jsp" method="post">
       <input type="submit" class="button" value="Answer Question">
       
       </form><br>
       <%
           }
        
       
            } 
catch (Exception ex)
            { System.out.print(ex);}
   
    
       %>
</body>
</html>
