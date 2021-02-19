<%-- 
    Document   : UserHomePage
    Created on : Mar 3, 2020, 5:27:51 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en" >
<head>
    <title>User Home Page</title>
            	<meta charset="utf-8">
                <link rel="stylesheet" href="homepg.css">
                <link href="cssmf.css" rel="stylesheet" type="text/css" />
                <link rel="stylesheet" href="homeiconslide.css">
		<script src="https://kit.fontawesome.com/c49ac828a9.js" crossorigin="anonymous"></script>
        <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style4 {font-family: Montserrat, sans-serif}
.style11 {font-size: 21px}
.style15 {background-color: #2B7B78; border-color: darkgreen; border-radius: 20px; color: white; padding:10px 30px; text-align: center; text-decoration:none; display: inline-block; font-family:Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, "sans-serif"; transition: 0.4s; margin-top: 40px;}
.style16 {
	font-size: 18px;
	font-family: Georgia, "Times New Roman", Times, serif;
}
-->
        </style>
</head>
    <body style="background-color: #DEF2F1;">
             <%String username=(String)session.getAttribute("username");
     
    if (username==null) 
    {
    response.sendRedirect("Welcome.jsp");   
    }
    session.setAttribute("userr",username);
    
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    
        %>
	     <!--LOGOUT BUTTON-->
             <form action="usrlgout.jsp" method="post"> 
                 <input name="submit" type="submit" class="button" style="float: right;" value="LOGOUT">
    </form>

        <h1>Hello User <%=username%>!</h1>
	 
	
        
        
       
            
        <!--SEARCH BUTTON--> 
        <div class="search-box">
		<input class="search-txt" type="text" placeholder="type to search">
		<a class="search-btn" href="#">
			<i class="fas fa-search"></i>
		
		</a>
	</div>
        
         <!------------------------SLIDING MENU---------------------------> 
	<div>
            <p>&nbsp;</p>
<ul class="menu">
  <li><a href="#" class="active">Home</a></li>
  <li><a href="footer.html">About</a></li>
  <li><a href="contactus.html">Contact</a></li>
  <li><a href="">Help</a></li>
  <li class="slider"></li>
</ul>
	</div>
	<!------------------------SLIDING BUTTON----------------------------> 
		<div>
		<table width="100%" border="0">
  <tr>
      
    <td width="25%" height="213" align="center" >
       
<div class="main">
      <div class="effects" id="effects">
       <div class="demo">
          <figure class="imghvr-push-up">
              <a href="medicine.jsp" target="_blank">
              <div align="right">
                  <img src="images/homeicon/aayurved.png" width="150" height="150">
                </div>
              
                  <figcaption>
              <h3 align="center">MEDICINES</h3>
            </figcaption>
                </a>

            <div> 
                <a href="javascript:;"></a> </div>
          </figure>
            
        </div>
      </div>
    
 </div>
             
    </td>
    <td width="25%" height="213" align="center" >
<div class="main">
      <div class="effects" id="effects">
      
        <div class="demo">
          <figure class="imghvr-push-up">
              <a href="dietsupp.jsp" target="_blank">
              <div align="right"><img src="images/homeicon/hea.png" width="150" height="150">
                </div>
              <figcaption>
              <h3 align="center">HEALTH AND SUPPLIMENT</h3>
              </figcaption></a>
            <div> <a href="javascript:;"></a> </div>
          </figure>
        </div>
      </div>
 </div>
    </td>
    <td width="25%" height="213" align="center" >
<div class="main">
      <div class="effects" id="effects">
      
        <div class="demo">
          <figure class="imghvr-push-up">
              <a href="devices.jsp" target="_blank">
              <div align="right"><img src="images/homeicon/devices.png" width="150" height="150">
                </div>
              <figcaption>
              <h3 align="center">FITNESS DEVIES</h3>
              </figcaption></a>
            <div> <a href="javascript:;"></a> </div>
          </figure>
        </div>
      </div>
 </div>
    </td>
        
  </tr>

     <p>&nbsp;</p>
     <tr>
      
    <td width="25%" height="215" align="center" >
<div class="main">
      <div class="effects" id="effects">
      
        <div class="demo">
          <figure class="imghvr-push-up">
              <a href="exercise.jsp" target="_blank">
              <div align="right"><img src="images/homeicon/exer.png" width="150" height="150">
                </div>
              <figcaption>
              <h3 align="center">EXERCISE</h3>
            </figcaption>
                </a>
            <div> <a href="javascript:;"></a> </div>
          </figure>
        </div>
      </div>
 </div>
    </td>
    <td width="25%" height="215" align="center" >
<div class="main">
      <div class="effects" id="effects">
      
        <div class="demo">
          <figure class="imghvr-push-up">
              <a href="report.jsp" target="_blank">
              <div align="right"><img src="images/homeicon/repr.png" width="150" height="150">
                </div>
              <figcaption>
              <h3 align="center">TEST AND REPORTS</h3>
            </figcaption>
              </a>
                  <div> <a href="javascript:;"></a> </div>
          </figure>
        </div>
      </div>
 </div>
    </td>
    <td width="25%" height="215" align="center" >
<div class="main">
      <div class="effects" id="effects">
      
        <div class="demo">
          <figure class="imghvr-push-up">
                <a href="medicine.jsp" target="_blank">
              <div align="right"><img src="images/homeicon/dise.png" width="150" height="150">
                </div>
              <figcaption>
              <h3 align="center">DISEASE</h3>
            </figcaption>
                </a>
                    <div> <a href="javascript:;"></a> </div>
          </figure>
        </div>
      </div>
 </div>
    </td>
        
  </tr>

    
  
    <p>&nbsp;</p>
</table>

</div>
	
     <!------------------------consult doctor---------------> 

     
          
<BR>
        
           <div align="center"class="div2">
               
               <form action="viewdoctors.jsp" class="style4">
			   <span class="style1">THE BEST DOCTOR GIVES THE LEAST MEDICINE			   </span><br>
                   <input type="submit" class="helo" value="VIEW DOCTORS">
               </form>
           </div>
          
		  <BR><BR>
		  <BR>
                  <div class="foot">
	<table width="100%" border="0" >
  <tr>
  <th width="50" scope="col">
	   <!--------ask private question-------------------->
        <div>
             <form action="AskPublicQue.jsp" method="post">
                <div align="center">Ask Your Quries Here Freely
            </span>
	     
              <br>
                <input name="submit2" type="submit" class="style15" value="ASK PUBLIC QUESTION">
          </form>
    </div>	</th>
	
    <th width="50" scope="col">
	   <!--------ask private question-------------------->
        <div>
            <form action="AskPrivateQue.jsp" method="post">
                <div align="center">HAVE SOME PRIVATE QUERIES ? NOT BIG DEAL Ask A Question Related to:<br>
                  <select name="topic">
                    <option value="Ear, Nose and Throat">WEIGHT MANAGEMENT</option> 
                    <option value="Ear, Nose and Throat">HAIR CARE</option> 
                    <option value="Ear, Nose and Throat">HOME CARE</option> 
                    <option value="Ear, Nose and Throat">DIABETIC</option> 
                    <option value="Ear, Nose and Throat">BODY CARE</option> 
                    <option value="Ear, Nose and Throat">PAIN RELIEF</option> 
                    <option value="Ear, Nose and Throat">EAR,NOSE,EYE</option> 
                    <option value="General Surgery">General Surgery</option>
                    <option value="Ophthalmology">Opthalmology</option>
                    <option value="Orthopedics">Orthopedics</option>
                    <option value="Family Medicine">Family Medicine</option> 
                    <option value="Pathology">Pathology</option>
                    <option value="Physiology">Physilogy</option>
                    <option value="Skin and Vereral diseases">Skin and Vereral diseases                    </option>
                  </select>
                  <input type="submit" value="ASK THE EXPERT" class="itb">
                </div>
            </form>
        </div>	</th>
  </tr>
</table>
             </div>
     <br>
	 <br>
	 
	   <div align="center"> <form action="ViewPublicAns.jsp" method="post">
	 <input type="submit" value="See Public Que/Ans" class="button">
	 <br>
	   </form>
	 </div>
	 
	 <div align="center"> <form action="ViewPvtAns.jsp" method="post">
	 <input type="submit" value="See My Ans" class="button">
	 </form>
	 </div>
	 <br>
     <br>
       
        <div>
		  <div align="center">
		  
		    <form action="SymptomServ" method="post">
               <div class="topmain1">
                 <p class="style16"><br>
		      <strong>		DISEASE CHECKER</strong></p>
		    <p class="style16"> The Symptoms You Are Feeling		    </p>
              </div>
		    <table width="100%" border="0">
  <tr>
    <th height="24" scope="col"> 
      
          <div align="justify">
		  <input type="checkbox" name="checkbox" class="toggle toggle__light" value="Eye irritation,Runny nose">
		  Eye irritation,Runny nose</div></th>
    <th scope="col">
      
          <div align="justify">
            <input type="checkbox" class="toggle toggle__light" name="checkbox" value="Stuffy nose,Puffy">
          Stuffy nose,Puffy</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="watery eyes,Sneezing">watery eyes,Sneezing</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="Itchiness">Itchiness</div></th>
  </tr>
   <tr>
    <th height="30" scope="col"> 
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="headache">headache</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="more intense pain and fatigue">more intense pain and fatigue</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="sore through ,fever">sore through ,fever</div></th>
  <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="shortness of breath diarrhea or abdominal pain">
              shortness of breath diarrhea or </div></th>
  </tr>
   <tr>
    <th height="31" scope="col"> 
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="frequent bowel movements">frequent bowel movements</div></th>
    <th scope="col">
      
          <div align="justify">
            <input type="checkbox" class="toggle toggle__light" name="checkbox"  value="cramping or pain in the abdomen">
          cramping or pain in the abdomen</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="redness, itching, tearing">
              redness, itching, tearing</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="burning sensation, pus-like discharge">
              burning sensation, pus-like discharge</div></th>
  </tr> <tr>
    <th height="31" scope="col"> 
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="extreme fatigue, forcing the infected person to nap frequently">
               forcing infected person nap frequently</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="fever, cough and difficulty breathing">
              fever, cough and difficulty breathing</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="fear of water, confusion">
              fear of water, confusion</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="violent movement and loss of consciousness">
              violent movement </div></th>
  </tr> <tr>
    <th height="36" scope="col"> 
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="fever, headache, jaundice, muscle pain">
              fever, jaundice, muscle pain</div></th>
    <th scope="col">
      
          <div align="justify"> <input type="checkbox" class="toggle toggle__light" name="checkbox" value="yellowing of the skin and eyes">
              yellowing of the skin and eyes</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="fever, body aches, and diarrhea">
              body aches, diarrhea</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="rash, muscle pain, fever and sever joint pain">
              rash, muscle pain, joint pain</div></th>
  </tr>
   <tr>
    <th height="30" scope="col"> 
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="skin irritation, vomiting, nausea, join pain, and mouth blister">
              skin irritation,join pain,  mouth blister</div></th>
    <th scope="col">
      
          <div align="justify"><input type="checkbox" class="toggle toggle__light" name="checkbox" value="skin sores to shock to vomiting, chest pain">
             shock to vomiting, chest pain </div></th>
    
    <th scope="col">
      
          <div align="justify"></div></th>
    <th scope="col">
      
          <div align="justify"></div></th>
  </tr>
 
</table>

  
      <input type="submit" value="CHECK" class="itb">
 
  </form>
  </div>
  
</div>
                  
<!------------------------chat box---------------> 
        <div class="topmain1">
           <div align="center">
               <span class="style11">Satisfaction is a rating. Loyalty is a brand.<br>
		   CHAT WITH US               </span>
               <Form action="chatbox.jsp" method="post" target="_blank">
   
                  
                    <input type="Submit" value="Chat" class="itb">
                    
                         
          </Form>   
          </div>
    </div>
		  
		  
       
    </body>
</html>
