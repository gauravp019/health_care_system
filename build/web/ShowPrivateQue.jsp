<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" database.DbConn"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Private Que</title>
		        <link href="cssmf.css" rel="stylesheet" type="text/css" />

    </head>
   <body bgcolor="#DEF2F1">
        <%String username=(String)session.getAttribute("docname");
        String special=(String)session.getAttribute("special");
     
    if (username==null) 
    {
    response.sendRedirect("WelcomeDoc.jsp");
    }
    System.out.print(special);
        %><h1>HELLO Dr.<%=username%></h1><br>
        <%
try{
        Statement st=DbConn.getStatement();

        String q="Select * from privateque where TOPIC='"+special+"' ";
 
        ResultSet rs= st.executeQuery(q);
        
        while(rs.next())
        {
        %>
        Patient:<%=rs.getString(1)%><br>
        <% session.setAttribute("patientprivate",rs.getString(1)); %>
        Question:<%=rs.getString(2)%><br>
        <form action="AnsPrivateQue.jsp" method="post">
       <input type="submit" class="button" value="Answer Question">
       </form>
        <br>
       <%
        }
        
        
            } 
catch (Exception ex)
            { System.out.print(ex);}
   
    
       %>
               <form action="DocHome.jsp"><input type="submit" class="button" value="HOME">
               </form>

</body>
</html>
