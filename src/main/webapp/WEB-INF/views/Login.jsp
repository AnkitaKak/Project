<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
 
   <form class="form-horizontal" method="POST" action="<c:url value='/Login' />" >
    
     <br /><br />
	 <div class="form-group">
	   <label class="col-md-4 control-label">Username:</label>
	   <div class="col-md-6">
	     <input type="text" class="form-control" id="username" name="username" path="username">
	   </div>
	 </div>
	 <br />
	 <div class="form-group">
       <label class="col-md-4 control-label">Password:</label>
	   <div class="col-md-6">
         <input type="password" class="form-control" id="password" name="password" path="password">
	   </div>
	 </div>  
     
     <br />
     <br />	
     <div class="col-sm-offset-2 col-sm-10">
       <button type="submit" class="btn btn-info btn-lg">Login
       </button>
     </div>
     
    </form>
  <br><br> 
  <p>
    <font color="#191970"> Not a Registered User??? </font>
    <a href="<c:url value='/Register' />"><font color="#DAA520"> Click here to Sign Up </font></a>
  </p>
  
  </div> 
  
  </center>
  
  <br><br><br><br><br><br><br>

<%@ include file="template/Footer.jsp" %>
