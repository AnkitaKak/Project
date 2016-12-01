<%@ include file="template/Header.jsp" %>

  <style>
	h2 {
	       font-family: "Times New Roman", Times, serif;
    }
	
	p {
	       font-family: "Times New Roman", Times, serif;
		   font-size: 20px;
    }
  </style>
  
  <br><br><br>
  <center>
  <h2><font color="#708090"> Create an Account </font></h2>
  <div class="container">
  <form class="form-horizontal" role="form">
    <div class="form-group">
      <label for="name" class="col-md-4 control-label">Name: </label>
	  <div class="col-md-6">
	    <input type="text" class="form-control" id="name" placeholder="Enter Name">
	    <span class="help-block">eg.: Harry Smith</span>
      </div>
	</div>
	<div class="form-group">
	  <label class="col-md-4 control-label" for="gender">Gender: </label>
	  <div class="col-md-3">
	    <input type="radio" name="gender">Male
      </div>
	  <div class="col-md-3">	  
	    <input type="radio" name="gender">Female
	  </div>
	</div>
	<div class="form-group">
	  <label for="email" class="col-md-4 control-label">Email:</label>
	  <div class="col-md-6">
	    <input type="email" class="form-control" id="email" placeholder="Enter Email">
	    <span class="help-block">example@example.com</span>
	  </div>
	</div>
	<div class="form-group">
      <label for="pwd" class="col-md-4 control-label">Password:</label>
	  <div class="col-md-6">
        <input type="password" class="form-control" id="pwd" placeholder="Enter password">
	  </div>	
    </div>
	<div class="form-group">
      <label for="pwdr" class="col-md-4 control-label">Confirm Password:</label>
      <div class="col-md-6"> 
	    <input type="password" class="form-control" id="pwdr" placeholder="Re-Enter Password">
		<span class="help-block">Passwords must match. Type Again.</span>
      </div>
	</div>
	<div class="form-group">
	  <label for="contact" class="col-md-4 control-label">Contact:</label>
	  <div class="col-md-6">
	    <input type="tel" class="form-control" id="contact" placeholder="Enter Contact Number">
	  </div>
	</div>
	<div class="form-group">
      <label for="dob" class="col-md-4 control-label">Date of Birth:</label>
      <div class="col-md-6"> 
	    <input type="date" class="form-control" id="dob" placeholder="Enter Date of Birth">
      </div>
	</div>
	<div class="form-group">
      <label for="file" class="col-md-4 control-label">Upload a Profile Picture (optional): </label>
      <div class="col-md-6">
	    <input type="file" class="form-control-file" id="file">
      </div>
	</div>
    <br>
    <button type="submit" class="btn btn-primary btn-lg">Register</button>
  </form>
  </div>
  <br> 
  <p>
    <font color="#191970"> Already registered User??? </font>
    <a href="#"><font color="#DAA520"> Click here to Login </font></a>
  </p>
  </center>
  

<%@ include file="template/Footer.jsp" %>