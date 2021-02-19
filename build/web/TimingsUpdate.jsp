<%-- 
    Document   : TimingsUpdate
    Created on : Mar 16, 2020, 11:07:28 PM
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
        <title>Slots Update</title>
    </head>
      <%String docname=(String)session.getAttribute("docname");
     
    if (docname==null) 
    {
    response.sendRedirect("WelcomeDoc.jsp");   
    }
    session.setAttribute("userr",docname);
%>
  <body><h1>Hello Dr <%=docname%>!</h1>
       <div> 
           <form action="DocHome.jsp" method="post">
       <input type="submit" value="HOME">
       </form>
        </div>
      <%

            String one=request.getParameter("timing1");
            String two=request.getParameter("timing2");
            String three=request.getParameter("timing3");
            String four=request.getParameter("timing4");
            String alt=request.getParameter("Alternate");

          
            Statement st=DbConn.getStatement();
          String q= "UPDATE slot SET timing1 = '"+one+"',timing2 = '"+two+"',timing3 = '"+three+"',timing4= '"+four+"',Alternate= '"+alt+"'  where doctor='"+docname+"' ";
    int t=0;
   
        try {
            
             t= st.executeUpdate(q);
            
            } 
        catch (Exception ex) {
            System.out.print(ex);
        }
           
        %>
<%         if(t==1){
    response.sendRedirect("DocHome.jsp");
  }
                else   {
            %>
                      <h2> Sorry Your Slot cant Update</h2>
            <%
                        }
            %>
        
    </body>
</html>
