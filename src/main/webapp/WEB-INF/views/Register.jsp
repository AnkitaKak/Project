<%@ include file="template/Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>

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
  
  <div class="container central">
 
  <c:url var="addAction" value="/user/register"> </c:url>
  
  <h2><font color="#708090"> Create an Account </font></h2>
 
  <div class="row">
  
    <div class="col-md-8">
    
    <form:form action="${addAction}" commandName="user" method="POST"> 
      <br /><br />
      <table>
        <tr>
          <td><form:label path="name">Enter Name: </form:label></td>
          <td><form:input class="form-control col-xs-6" type="text" id="name" path="name" name="name"></form:input></td>
          <td><form:errors path="name" cssClass="error" /></td>
        </tr>
        <tr> 
         <td></td>
        </tr>
        <tr>
	      <td><form:label path="uname">Enter Username: </form:label></td>
	      <td><form:input type="text" class="form-control col-xs-6" path="uname" id="uname" name="uname"/>
	      <td><form:errors path="uname" cssClass="error" /></td>  
	    </tr>
	    <tr>
	      <td></td>
	    </tr>
	    <tr>
	      <td><form:label path="email">Enter Email:</form:label></td>
	      <td><form:input type="email" class="form-control col-xs-6" id="email" path="email" name="email" />
	      <td><form:errors path="email" cssClass="error" /></td>
	    </tr>
	    <tr>
	      <td></td>
	    </tr>
	    <tr>
	      <td><form:label path="pwd">Enter Password:</form:label></td>
	      <td><form:input type="password" class="form-control col-xs-6" id="pwd" path="pwd" name="pwd" />
	      <td><form:errors path="pwd" cssClass="error" /></td>
	    </tr>
	    <tr>
	      <td></td>
	    </tr>
	    <tr>
	      <td><form:label path="dob">Enter Date of Birth:</form:label></td>
	      <td><form:input type="date" class="form-control col-xs-6" id="dob" path="dob" name="dob" />
	      <td><form:errors path="dob" cssClass="error" /></td>
	    </tr> 
      </table>
    </div>
    
  </div>
  <div class="row">
    <button type="submit" class="btn btn-primary btn-lg">Register</button>
  </div> 
   
  </form:form>
    
  <!--<form class="form-horizontal" role="form" action="${addAction}" ModelAttribute="person" method="POST" enctype="multipart/form-data">
    <div class="form-group">
      <label for="name" class="col-md-4 control-label">Name: </label>
	  <div class="col-md-6">
	    <input type="text" class="form-control" name="name" placeholder="Enter Name" id="name">
	    <span class="help-block">eg.: Harry Smith</span>
      </div>
	</div>
	<div class="form-group">
	  <label class="col-md-4 control-label" for="gender">Gender: </label>
	  <div class="col-md-3">
	    <input type="radio" name="gender" id="gender">Male
      </div>
	  <div class="col-md-3">	  
	    <input type="radio" name="gender" id="gender">Female
	  </div>
	</div>
	<div class="form-group">
	  <label for="email" class="col-md-4 control-label">Email:</label>
	  <div class="col-md-6">
	    <input type="email" class="form-control" name="email" placeholder="Enter Email" id="email">
	    <span class="help-block">example@example.com</span>
	  </div>
	</div>
	<div class="form-group">
      <label for="pwd" class="col-md-4 control-label">Password:</label>
	  <div class="col-md-6">
        <input type="password" class="form-control" name="pwd" placeholder="Enter password" id="pwd">
	  </div>	
    </div>
	<div class="form-group">
      <label for="cpwd" class="col-md-4 control-label">Confirm Password:</label>
      <div class="col-md-6"> 
	    <input type="password" class="form-control" name="cpwd" placeholder="Re-Enter Password" id="cpwd">
		<span class="help-block">Passwords must match.</span>
      </div>
	</div>
	<div class="form-group">
	  <label for="contact" class="col-md-4 control-label">Contact:</label>
	  <div class="col-md-6">
	    <input type="text" class="form-control" name="contact" placeholder="Enter Contact Number" id="contact">
	  </div>
	</div>
	<div class="form-group">
      <label for="dob" class="col-md-4 control-label">Date of Birth:</label>
      <div class="col-md-6"> 
	    <input type="date" class="form-control" name="dob" placeholder="Enter Date of Birth" id="dob">
      </div>
	</div>
	<div class="form-group">
      <label for="image" class="col-md-4 control-label">Upload a Profile Picture (optional): </label>
      <div class="col-md-6">
	    <input type="file" class="form-control-file" name="image" id="image">
      </div>
	</div>
    <br>
    <a href="<c:url value='/person/add' />" >
      <button type="submit" class="btn btn-primary btn-lg">Register</button>
    </a>
  </form>-->
 
  </div>
 
  <br> <br>
  <p>
    <font color="#191970"> Already registered User??? </font>
    <a href="#"><font color="#DAA520"> Click here to Login </font></a>
  </p>
 
 <br /><br /><br /><br />
  
<%@ include file="template/Footer.jsp" %>