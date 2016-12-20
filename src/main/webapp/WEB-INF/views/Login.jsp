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
 
   <form:form action="Login" method="POST">
    
     <br /><br />
	 <div class="form-group">
	   <label for="uname" class="col-md-4 control-label">Username:</label>
	   <div class="col-md-6">
	     <input type="text" class="form-control" id="uname" name="uname" path="uname">
	   </div>
	 </div>
	 <br />
	 <div class="form-group">
       <label for="pwd" class="col-md-4 control-label">Password:</label>
	   <div class="col-md-6">
         <input type="password" class="form-control" id="pwd" name="pwd" path="pwd">
	   </div>
	 </div>  
     
     <br />
     <br />	
     <div class="row">
       <button type="submit" class="btn btn-info btn-lg" value="Login">Login
         <!--<c:if test="${user.uname}=='admin' && ${user.pwd}=='admin'" > 
           <a href="<c:url value='/admin' />"></a>
         </c:if> -->
       </button>
     </div>
     
    </form:form>
  <br><br> 
  <p>
    <font color="#191970"> Not a Registered User??? </font>
    <a href="#"><font color="#DAA520"> Click here to Sign Up </font></a>
  </p>
  
  </div> 
  
  </center>
  
  <br><br><br><br><br><br><br>

<%@ include file="template/Footer.jsp" %>
