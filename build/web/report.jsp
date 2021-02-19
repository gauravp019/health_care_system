<%-- 
    Document   : medicine
    Created on : Apr 17, 2020, 11:34:41 PM
    Author     : Asus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.DbConn"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REPORT</title>
        <link href="cssmf.css" rel="stylesheet" type="text/css" />

        <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-family: Geneva, Arial, Helvetica, sans-serif;
}
.style2 {
	font-family: Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;
	font-size: 18px;
}
.style7 {
	font-family: "Courier New", Courier, monospace;
	font-size: 24px;
}
-->
        </style>
</head>
<% 
    String username=(String)session.getAttribute("username");
      if (username==null) 
    {
    response.sendRedirect("Welcome.jsp");   
    }
Statement st=DbConn.getStatement();
String q= "Select report from report where user ='"+username+"' ";
    int t=0;
   
        try {
            ResultSet rs= st.executeQuery(q);
            if(rs.next()){
            
                    %>


<body style="background-color: #DEF2F1">
        <div class="topmain">
		  <div align="center"><span class="style1">Report</span><br>
                      <br><span class="style2">We heal. “You know you want to make an impact, but you don't know how.</span><br/>
                      <br/>
		    <br/>
	          </div>
		
        </div>
		<br/>
	    
	<br/>
        <div align="center" class="style7 textup"><strong>Your Report </strong></div>
		
        <div align="center" >
            <%=rs.getBlob(1) %>
        </div>
          <% }
}
        catch (Exception ex)
{
            System.out.print(ex);
        }
           %>
    </div>
  
	<br/>
        


  
</body>
</html>
