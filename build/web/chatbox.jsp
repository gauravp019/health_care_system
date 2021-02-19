<%-- 
    Document   : chatbox
    Created on : Mar 6, 2020, 6:00:44 PM
    Author     : Asus
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.DbConn" %>
<!DOCTYPE html>
<html lang="en" >
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.3/jquery.mCustomScrollbar.min.css'>
<link rel="stylesheet" href="chatboxstyle.css">
 <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-family: Geneva, Arial, Helvetica, sans-serif;
}
-->
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat With US</title>
    </head>
     <body style="background-color: #DEF2F1;">
         <div class="chat">
  <div class="chat-title">
    <h1>CHAT WITH US</h1>
    <h2>AskDoc</h2>
    <figure class="avatar">
        <img src="images/logo1.png"/></figure>
    
  </div>
              <%
        String chat=(String)session.getAttribute("chat");
     System.out.print(chat);
    
    %>
   <div class="messages">
       <div class="messages-content">
           <div align="center" style="font-size: large;">
               <br/>
               <span class="style1"><%= chat %></span>
           </div>
       </div>
       
  </div>
  <div class="message-box">
      <form action="Chat" method="post"> 
        <textarea type="text" class="message-input" placeholder="Type message..." name="search"></textarea>
    <button type="submit" class="message-submit">Send</button>
   
    
    
    </form>
  </div>
             </div>
         <div class="bg"></div>
              
         
    </body>
</html>
