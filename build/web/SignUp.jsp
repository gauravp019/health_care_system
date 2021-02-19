<%-- 
    Document   : SignUp
    Created on : May 16, 2020, 5:16:49 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<head>
  <meta charset="UTF-8">
  <title>Sign Up Form</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link href="signup.css" rel="stylesheet" type="text/css" />

</head>
<body style="background-color: #16a085">
    
    <form action="RegUser" method="post" >

<div class="container">
  <form>
    <div class="row">
      <h4>Account</h4>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Full Name" name="username"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="email" placeholder="Email Adress" name="email"/>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="password" placeholder="Password" name="pass"/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
 <div class="input-group input-group-icon">
        <input type="password" placeholder="Repeat Password" name="cnfpass"/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
    </div> 
    <div class="row">
      <div class="col-half">
        <h4>Date of Birth</h4>
        <div class="input-group">
          <div class="col-third">
            <input type="text" placeholder="DD"/>
          </div>
          <div class="col-third">
            <input type="text" placeholder="MM"/>
          </div>
          <div class="col-third">
            <input type="text" placeholder="YYYY"/>
          </div>
        </div>
      </div>
      <div class="col-half">
        <h4>Gender</h4>
        <div class="input-group">
          <input type="radio" name="gen" value="male" id="gender-male"/>
          <label for="gender-male">Male</label>
          <input type="radio" name="gen" value="female" id="gender-female"/>
          <label for="gender-female">Female</label>
        </div>
      </div>
    </div>
    <div class="row">  
      <div class="col-half">
        <div class="input-group input-group-icon">
            <input type="text" placeholder="Phone" name="pno" maxlength="10">
          <div class="input-icon"><i class="fa fa-user"></i></div>
        </div>
      </div>
	  <div class="col-half">
<div class="input-group input-group-icon">
    <input type="text" placeholder="Age" name="age" maxlength="3">
          <div class="input-icon" "><i class="fa fa-user"></i></div>
        </div>
      </div>
	  
	  
      <div class="col-half">
        <div class="input-group">
       <select name="add">
        <option>State</option>
	<option>Andhra Pradesh</option>
        <option>Arunachal Pradesh</option>
        <option>Assam</option>
        <option>Bihar</option>
        <option>Chhattisgarh</option>
        <option>Goa</option>
        <option>Gujarat</option>
        <option>Haryana</option>
        <option>Himachal Pradesh</option>
        <option>Jammu and Kashmir</option>
<option>Jharkhand</option>
<option>Karnataka</option>
<option>Kerala</option>
<option>Madya Pradesh</option>
<option>Maharashtra</option>
<option>Manipur</option>
<option>Meghalaya</option>
<option>Mizoram</option>
<option>Nagaland</option>
<option>Orissa</option>
<option>Punjab</option>
<option>Rajasthan</option>
<option>Sikkim</option>
<option>Telagana</option>
<option>Tripura</option>
<option>Uttaranchal</option>
<option>Uttar Pradesh</option>
<option>West Bengal</option>
<option>Andaman and Nicobar Islands</option>
<option>Chandigarh</option>
<option>Dadar and Nagar Haveli</option>
<option>Tamil Nadu</option>
<option>Daman and Diu</option>
<option>Delhi</option>
<option>Lakshadeep</option>
<option>Pondicherry</option>
                            </select>
          </div>
      </div>
    </div>
    <div class="row">
      <h4>Terms and Conditions</h4>
      <div class="input-group">
        <input type="checkbox" id="terms"/>
        <label for="terms">I accept the terms and conditions for signing up to this service, and hereby confirm I have read the privacy policy.</label>
      </div>
    </div>

</div>
        <br/>
        <br/>
       <div align="center"> 
    <input type="submit" value="Sign Up" style="width: 40% ">
    <br/>
    <br/></div>
</form>
</body>
</html>

