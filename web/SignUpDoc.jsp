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
    
    <form action="DocReg" method="post" >

<div class="container">
  <form>
    <div class="row">
      <h4>Account</h4>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Full Name" name="dname"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="email" placeholder="Email Adress" name="demail"/>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="password" placeholder="Password" name="dpass"/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
 <div class="input-group input-group-icon">
        <input type="password" placeholder="Repeat Password" name="dcnfpass"/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
    </div> 
    <div class="row">
      <div class="col-half">
        <div class="input-group input-group-icon">
            <input type="text" placeholder="Qualification" name="dquali" >
          <div class="input-icon"><i class="fa fa-user"></i></div>
        </div>
      </div>
	  <div class="col-half">
<div class="input-group input-group-icon">
    <input type="text" placeholder="Work Experience" name="wrk" >
          <div class="input-icon" "><i class="fa fa-user"></i></div>
        </div>
      </div>
      <div class="col-half">
        
        <div class="input-group">
          <input type="radio" name="dgen" value="male" id="gender-male"/>
          <label for="gender-male">Male</label>
          <input type="radio" name="dgen" value="female" id="gender-female"/>
          <label for="gender-female">Female</label>
        </div>
      </div>
        <div class="input-group">
          <select name="spc">
                    
              <option>SPECIALIZATION</option> 
                    <option value="Ear, Nose and Throat">EAR,NOSE,EYE</option> 
                    <option value="General Surgery">General Surgery</option>
                    <option value="Ophthalmology">Opthalmology</option>
                    <option value="Orthopedics">Orthopedics</option>
                    <option value="Family Medicine">Family Medicine</option> 
                    <option value="Pathology">Pathology</option>
                    <option value="Physiology">Physilogy</option>
                    <option value="Skin and Vereral diseases">Skin and Vereral diseases                    </option>
                  </select>
        </div>
    </div>
    <div class="row">  
      <div class="col-half">
        <div class="input-group input-group-icon">
            <input type="text" placeholder="Phone" name="dpno" maxlength="10">
          <div class="input-icon"><i class="fa fa-user"></i></div>
        </div>
      </div>
	  <div class="col-half">
<div class="input-group input-group-icon">
    <input type="text" placeholder="Age" name="dage" maxlength="3">
          <div class="input-icon" ><i class="fa fa-user"></i></div>
        </div>
      </div>
	  
	  
      <div class="col-half">
        <div class="input-group">
       <select name="dadd">
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
    <br/>
       </div>
</form>
</body>
</html>

