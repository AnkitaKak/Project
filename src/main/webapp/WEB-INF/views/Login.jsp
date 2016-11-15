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
  
  <center>
  <div class="container">
  <br><br><br><br><br><br><br><br>
  <form class="form-horizontal" role="form">
	<div class="form-group">
	  <label for="email" class="col-md-4 control-label">Username:</label>
	  <div class="col-md-6">
	    <input type="email" class="form-control" id="email" placeholder="Enter Username">
	    <span class="help-block">example@example.com</span>
	  </div>
	</div>
	<div class="form-group">
      <label for="pwd" class="col-md-4 control-label">Password:</label>
	  <div class="col-md-6">
        <input type="password" class="form-control" id="pwd" placeholder="Enter password">
	  </div>
     <br>	
     <div class="checkbox">
        <label class="col-md-7 control-label"><input type="checkbox"> Remember me</label>
     </div>
    <br><br><br>
    <button type="submit" class="btn btn-info btn-lg">Login</button>
  </form>
  <br><br> 
  <p>
    <font color="#191970"> Not a Registered User??? </font>
    <a href="#"><font color="#DAA520"> Click here to Sign Up </font></a>
  </p>
  </center>
  </div> 
  
  <br><br><br><br><br><br><br>

<%@ include file="template/Footer.jsp" %>
