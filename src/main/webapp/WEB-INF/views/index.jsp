<%@ include file="template/Header.jsp" %>

  <br>
  <div class="cover">
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
        <a href="#"><img src="resources/img/welcome.jpeg" class="img-responsive" alt="Welcome" style="width:100%"></a>
      </div>

      <div class="item">
        <a href="#"><img src="resources/img/img2.jpg" class="img-responsive" alt="Collections" style="width:100%"></a>
      </div>

      <div class="item">
        <a href="#"><img src="resources/img/img3.jpg" class="img-responsive" alt="For Men" style="width:100%"></a>
      </div>
	  
	  <div class="item">
        <a href="#"><img src="resources/img/img4.jpg" class="img-responsive" alt="For Men" style="width:100%"></a>
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
    <div class="col-md-6"><br><b><u><p style="padding-left: 20px;"><font color="#191970">Accessories Maniac </b></u></font>
	<br><font color="#008080"> It is a platform for everyone who's completely into latest fashion and the one's who love to have it all. 
	<br> Check out all our latest collections and stay tuned for more offers coming soon!!! </font>
	<br><br>
	<font color="#DAA520">To read more About Us-->><a href="home">Click Here..!!!</font></a>
	</p>
	</div>	  
    <div class="col-md-6"> 
	  <div class="embed-responsive embed-responsive-16by9">
        <iframe class="embed-responsive-item" width="350" height="200" src="https://www.youtube.com/embed/N1oejB_l2jw" frameborder="0"></iframe>
      </div>
    </div>
    </div>
  </div>
  
  <div class="container">
    <table class="table"> 
	  <tr> 
	    <td><a href="<c:url value='/Product/Handbags' />">
	    <div class="col-md-3">
		  <button class="btn btn-default">
		  <figure>
		    <img class="img-circle" src="resources/img/img5.jpg" style="width:200px;height:200px">
              <figcaption>Handbags & Purses</figcaption>
		  </figure>
		  </button>
		</div></a></td>  
		<td><a href="<c:url value='/Product/Jewellery' />">
		<div class="col-md-3">
		  <button class="btn btn-default">
		  <figure>
		    <img class="img-circle" src="resources/img/img6.png" style="width:200px;height:200px">
			  <figcaption>Jewellery</figcaption>
		  </figure>
		  </button>
		</div></a></td>
		<td><a href="<c:url value='/Product/Hair' />">
		<div class="col-md-3">
		  <button class="btn btn-default">
		  <figure>  
			<img class="img-circle" src="resources/img/img7.jpg" style="width:200px;height:200px">
			  <figcaption>Hair Accessories</figcaption>
		  </figure>
		  </button>
		</div></a></td>
		<td><a href="<c:url value='/Product/Hats' />">
		<div class="col-md-3">
		  <button class="btn btn-default">
		  <figure>		  
			<img class="img-circle" src="resources/img/img8.jpg" style="width:200px;height:200px">
			  <figcaption>Hats</figcaption>
		  </figure>
		  </button>
		</div></a></td> 
	  </tr>
    </caption></table> 	 
  </div>
  
<%@ include file="template/Footer.jsp" %>
