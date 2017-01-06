<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Accessorize </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
  <style>
    .carousel-inner> .item > img,
	.carousel-inner> .item > a> img {
	      background-width: 100%;
		  height: 500px;
		  margin: auto;
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
		   font-color: white;
	}
	
	.embed-responsive-item {
	       height: 300px;
		   width: 300px
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
	  <a class="navbar-brand" href="<c:url value='/' />"><img src="<c:url value='resources/img/logo.jpg' />" width="180px" height=300% ></a>	
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
          <li><a class="active" href="<c:url value='/' />"><span class="glyphicon glyphicon-home"></span>  Home</a></li>
          <li class="dropdown">
            <a class="dropbtn" data-toggle="dropdown" href="#">Products
              <span class="caret"></span>
		    </a>
            <div class="dropdown-content">
              <a href="<c:url value='/Product/Jewellery' />">Jewellery</a>
			  <a href="<c:url value='/Product/Handbags' />">Handbags & Purses</a>
			  <a href="<c:url value='/Product/Hair' />">Hair Accessories</a>
			  <a href="<c:url value='/Product/Bracelets' />">Bracelets & Rings</a>
			  <a href="<c:url value='/Product/Hats' />">Hats</a>
		    </div> 
          </li>
          <li><a href="#">About Us</a></li> 
          <li><a href="#">Contact Us</a></li>
          <!-- <li><a href="#">Offers</a></li> -->	  
        </ul>
        
        <sec:authorize access="hasRole('ADMIN')">
           <ul class="nav navbar-nav navbar-right">
              <li>
                 <a href="">Welcome <b><sec:authentication property="principal.username" /></b></a>
              </li>
              <li>
                 <a href="<c:url value='/ProductAdmin' />">Product Admin</a>
              </li>
              <li>
                 <a href="<c:url value='/logout' />">Sign Out</a>
              </li>
           </ul>
        </sec:authorize>
        
        <sec:authorize access="hasRole('USER')">
           <ul class="nav navbar-nav navbar-right">
              <li>
                 <a href="">Welcome <b><sec:authentication property="principal.username" /></b></a>
              </li>
              <li>
                 <a href="<c:url value='/ShowCart' />"><i class="fa fa-2x fa-shopping-cart" aria-hidden="true"></i></a>
              </li>
              <li>
                 <a href="<c:url value='/logout' />">Sign Out</a>
              </li>
           </ul>
        </sec:authorize>
        
        <sec:authorize access="isAnonymous()">
	      <ul class="nav navbar-nav navbar-right">
            <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="<c:url value='/Login' />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
          </ul>
        </sec:authorize>
      </div>
   </div>	
  </nav>