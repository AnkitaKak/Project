<!DOCTYPE html>
<html lang="en">
<head>
  <title>Accessorize | Sign Up</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
  <link rel="stylesheet" href="style2.css">
  <style>
    .dropdown {
           position: relative;
		   display: inline-block;
    }

	.dropdown-content {
		   display: none;
		   position: absolute;
		   background-color: black;
		   min-width: 160px;
		   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		   font-color: white;
	}

	.dropdown-content a {
		   color: white;
		   padding: 12px 16px;
		   text-decoration: none;
		   display: block;
	}

	.dropdown:hover .dropdown-content {
		   display: block;
	}
	
	h2 {
	       font-family: "Times New Roman", Times, serif;
    }
	
	p {
	       font-family: "Times New Roman", Times, serif;
		   font-size: 20px;
    }
  </style>
</head>
<body>
  <nav class="navbar navbar-inverse navbar-fixed-top" style="color: white;">
   <div class="container-fluid">
      <div class="navbar-header"> 
   	    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		  <span class="sr-only">Click to open Menu</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span> 
        </button>
	  <a class="navbar-brand" href="#"><img src="1.jpg" width="180px" height=300%></a>	
	  </div>
	  <div class="collapse navbar-collapse" id="myNavbar">
	  <br>
	    <form class="navbar-form navbar-right" role="search">
          <div class="input-group">
             <input type="text" class="form-control" placeholder="Search this site">
                <span class="input-group-btn">
                   <button type="submit" class="btn btn-default">
                      <span class="glyphicon glyphicon-search"></span>
                   </button>
                </span>
          </div>
        </form>
        <ul class="nav navbar-nav nav-default">
          <li><a class="active" href="index.jsp"><span class="glyphicon glyphicon-home"></span>  Home</a></li>
          <li class="dropdown">
            <a class="dropbtn" data-toggle="dropdown" href="#">Products
              <span class="caret"></span>
		    </a>
            <div class="dropdown-content">
              <a href="#">Jewellery</a>
			  <a href="#" >Handbags & Purses</a>
			  <a href="#" >Hair Accessories</a>
			  <a href="#" >Bracelets & Rings</a>
			  <a href="#" >Hats</a>
		    </div> 
          </li>
          <li><a href="#">About Us</a></li> 
          <li><a href="#">Contact Us</a></li>
          <li><a href="#">Offers</a></li>	  
        </ul>
	    <ul class="nav navbar-nav navbar-right">
          <li><a href="Register.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
      </div>
   </div>	
  </nav>
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
  <br> 
  <p>
    <font color="#191970"> Already registered User??? </font>
    <a href="#"><font color="#DAA520"> Click here to Login </font></a>
  </p>
  </center>
  </div>  
  
  <nav class="navbar navbar-inverse navbar-bottom" style="margin-bottom: 0px;">
    <div class="container-fluid">
      <br><span class="glyphicon glyphicon-copyright-mark" style="color: white; text-decoration: bold; font-size: 15px;"><text style="color: white; text-decoration: bold; font-size: 15px;"> Accessorize Inc.<br>
	   &nbsp; New Delhi, India </span> </text> </style>
	     <ul class="nav navbar-nav navbar-right">
	       <text style="color: white; text-decoration: bold; font-size: 15px; font-family: Baskerville"> Follow Us on: </text><br>
           <li><a href="https://twitter.com/"><i class="fa fa-twitter-square" aria-hidden="true" style="color: white; text-decoration: bold; font-size: 25px;"></i></a></li>
           <li><a href="https://www.facebook.com/login/"><i class="fa fa-facebook" aria-hidden="true" style="color: white; text-decoration: bold; font-size: 25px;"></i></a></li>
           <li><a href="https://accounts.google.com/"><i class="fa fa-google-plus" aria-hidden="true" style="color: white; text-decoration: bold; font-size: 25px;"></i></a></li> 
         </ul>  
    </div>
  </nav>

</body>
</html>  