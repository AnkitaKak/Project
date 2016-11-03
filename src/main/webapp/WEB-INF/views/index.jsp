<!DOCTYPE html>
<html lang="en">
<head>
  <title>Accessorize | Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
  <style>
    .carousel-inner> .item > img,
	.carousel-inner> .item > a> img {
	      width: 1000px;
		  height: 500px;
		  margin: auto;
	}
	
	.embed-responsive-item {
	       height: 300px;
		   width: 300px
    }

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
     
	figcaption {
	       display: block;
	       text-align: center;
	       color: black;
	} 
	
	.btn {
		   border:0px solid transparent;
	}

	p {
	       font-family: "Comic Sans MS", cursive, sans-serif;
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
	  <a class="navbar-brand" href="#"><img src="/images/1.jpg" width="180px" height=300%></a>	
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
          <li><a class="active" href="#"><span class="glyphicon glyphicon-home"></span>  Home</a></li>
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
          <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
      </div>
   </div>	
  </nav>
  <br>
  <div class="container-fluid">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="4000">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" >
      <div class="item active">
        <img src="/images/6.jpeg" alt="Welcome">
      </div>

      <div class="item">
        <img src="/images/8_1.jpg" alt="Collections">
      </div>

      <div class="item">
        <img src="/images/9_1.jpg" alt="For Men">
      </div>
	  
	  <div class="item">
        <img src="/images/10_1.jpg" alt="For Men">
      </div>
	</div> 

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    </div>	
    <br> 
  <div class="row">
    <div class="col-md-6"><br><b><u><p><font color="#191970">Accessories Maniac </b></u></font>
	<br><font color="#008080"> It is a platform for everyone who's completely into latest fashion and the one's who love to have it all. 
	<br> Check out all our latest collections and stay tuned for more offers coming soon!!! </font>
	<br><br>
	<font color="#DAA520">To read more About Us-->><a href="About.html">Click Here..!!!</font></a></p>
	</div>	  
    <div class="col-md-6"> 
	  <div class="embed-responsive embed-responsive-16by9">
        <iframe class="embed-responsive-item" width="560" height="315" src="https://www.youtube.com/embed/lfom1ILjd14" frameborder="0"></iframe>
      </div>
    </div>
    </div>
  </div>
  
  <div class="container">
    <table class="table"> 
	  <tr> 
	    <td><a href="#"><div class="col-md-3">
		  <button class="btn btn-default">
		  <figure>
		    <img class="img-circle" src="/images/16.jpg" style="width:200px;height:200px">
              <figcaption>Handbags & Purses</figcaption>
		  </figure>
		  </button>
		</div></a></td>  
		<td><a href="#"><div class="col-md-3">
		  <button class="btn btn-default">
		  <figure>
		    <img class="img-circle" src="/images/17.png" style="width:200px;height:200px">
			  <figcaption>Jewellery</figcaption>
		  </figure>
		  </button>
		</div></a></td>
		<td><a href="#"><div class="col-md-3">
		  <button class="btn btn-default">
		  <figure>  
			<img class="img-circle" src="/images/18.jpg" style="width:200px;height:200px">
			  <figcaption>Hair Accessories</figcaption>
		  </figure>
		  </button>
		</div></a></td>
		<td><a href="#"><div class="col-md-3">
		  <button class="btn btn-default">
		  <figure>		  
			<img class="img-circle" src="/images/19.jpg" style="width:200px;height:200px">
			  <figcaption>Hats</figcaption>
		  </figure>
		  </button>
		</div></a></td> 
	  </tr>
    </caption></table> 	 
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
