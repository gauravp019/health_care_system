
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	
<head>
	<link href="cssmf.css" rel="stylesheet">
	<link href="modal.css" rel="stylesheet" type="text/css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900&amp;subset=latin,latin-ext'><link rel="stylesheet" href="logstyle.css">
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="logscript.js"></script>

 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 
	

<meta charset="utf-8">
<title>Welcome Doc</title>
</head>


<body style="background-color: #fff">
    	<div class="topdiv">
		<marquee>At ASKDoc we are there for you at any time any place </marquee>
	
		
	</div>
	
    <div class="my" align="center" style="margin-top:  0.5%">

  <p><img src="images/logo1.png" width="240" height="240"></p>
  <table width="100%" border="0" align="center">
    <tbody>
      <tr>
        <th width="33%" height="156" scope="col">&nbsp;
            
            
         <!--LOGIN BUTTON-->    
            <a href="#modal" class="modal-open">
                <input type="submit" value="LOGIN" class="button" ></a>
	    </th>
        <th width="33%" scope="col">&nbsp;
            
            
    <!--SIGN UP BUTTON-->
    <div align="center">
            <!--SIGN UP BUTTON-->
                  
            <form action="SignUpDoc.jsp">  
                          <input type="submit" value="SIGNUP" class="button">
                      </form> 
          </div>
        </th>
        
      </tr>
    </tbody>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp; </p>
	<div style="black">
	  
    </div>
</div>
	
    <div class="modal" id="modal">
    <div class="modal__content">
      <a href="#" class="modal__close">&times;</a>
      
      <p class="modal_content">
<form action="DocLogin" method="post" >
        <div class="materialContainer">


   <div class="box"> 
 <a href="#" class="modal__close">&times;</a>

      <div class="title">LOGIN</div>

      <div class="input">
         <label for="name">Drname</label>
         <input type="text" name="dname" id="name">
         <span class="spin"></span>
      </div>

      <div class="input">
         <label for="pass">Password</label>
         <input type="password" name="dpass" id="pass">
         <span class="spin"></span>
      </div>

      <div >
         <button class="button">GO</button> 

      </div>
      <a href="" class="pass-forgot">Forgot your password?</a>

   </div>


   </div>

</div>
        
     
   
</body>
</html>