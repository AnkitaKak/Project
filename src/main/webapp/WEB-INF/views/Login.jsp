<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Accessorize | Login</title>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
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
          <li><a class="active" href="Home.html"><span class="glyphicon glyphicon-home"></span>  Home</a></li>
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

  <nav class="navbar navbar-inverse navbar-bottom" style="margin-bottom: 0px;">
    <div class="container-fluid">
      <br><span class="glyphicon glyphicon-copyright-mark" style="color: white; text-decoration: bold; font-size: 15px;"><text style="color: white; text-decoration: bold; font-size: 

15px;"> Accessorize Inc.<br>
	   &nbsp; New Delhi, India </span> </text> </style>
	     <ul class="nav navbar-nav navbar-right">
	       <text style="color: white; text-decoration: bold; font-size: 15px; font-family: Baskerville"> Follow Us on: </text><br>
           <li><a href="https://twitter.com/"><i class="fa fa-twitter-square" aria-hidden="true" style="color: white; text-decoration: bold; font-size: 25px;"></i></a></li>
           <li><a href="https://www.facebook.com/login/"><i class="fa fa-facebook" aria-hidden="true" style="color: white; text-decoration: bold; font-size: 25px;"></i></a></li>
           <li><a href="https://accounts.google.com/"><i class="fa fa-google-plus" aria-hidden="true" style="color: white; text-decoration: bold; font-size: 25px;"></i></a></li> 
         </ul>  
    </div>
  </nav>

<body>

</body>
</html>