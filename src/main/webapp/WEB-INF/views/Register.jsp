<%@ include file="template/Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
  <c:url var="addAction" value="/person/add"> </c:url>
  
  <h2><font color="#708090"> Create an Account </font></h2>
  <div class="container">
  <form:form action="${addAction}" modelAttribute="person" method="POST" enctype="multipart/form-data">
    <table>
      <tr>
          <td colspan="4">
            <form:label path="name">
              <spring:message text="Name:" />
            </form:label>
	      </td>
	      <td colspan="6">
	        <form:input path="name" placeholder="Enter Name" />
	        <form:errors path="name" />  
          </td>  
	  </tr>
	  <tr>
	    <td colspan="4">
	      <form:label path="gender"> 
	        <spring:message text="Gender:" /> 
	      </form:label>
	    </td>  
	    <td colspan="3">
	      <form:input type="radio" path="gender" />
	        <spring:message text="Male" />
	    </td>
	    <td colspan="3">      	  
	      <form:input type="radio" path="gender" />
	        <spring:message text="Female" />
	    </td>
	    <td>
	      <form:errors path="gender" />
	    </td>  
	  </tr>
	  <tr>  
	    <td colspan="4">
	      <form:label path="email">
	        <spring:message text="Email:" />
	      </form:label>
	      </td> 
	      <td colspan="6"> 
            <form:input type="email" path="email" placeholder="Enter Email" />
   	        <form:errors path="email" />
   	      </td> 
	  </tr>
	  <tr>
          <td colspan="4">
            <form:label path="pwd">
              <spring:message text="Password:" />
            </form:label>
	      </td>
	      <td colspan="6">
            <form:input type="password" path="pwd" placeholder="Enter password" />
	        <form:errors path="pwd"/>
	      </td>	
      </tr>
      <tr>  
        <td colspan="4">
            <form:label path="cpwd">
              <spring:message text="Confirm Password:" />
            </form:label>
          </td>
          <td colspan="6">
	        <form:input type="password" path="cpwd" placeholder="Re-Enter Password" />
            <form:errors path="cpwd" />
          </td>
	  </tr>  
	  <tr>
	    <td colspan="4">
	      <form:label path="contact">
	        <spring:message text="Contact:" />
	      </form:label>
	    </td>
	    <td colspan="6">
	      <form:input path="contact" placeholder="Enter Contact Number" />
	      <form:errors path="contact" /> 
	    </td>    
	  </tr>
	  <tr>  
	    <td colspan="4">
          <form:label path="dob">
            <spring:message text="Date of Birth:" />
          </form:label>
          </td>
          <td colspan="6"> 
	        <form:input type="date" path="dob" placeholder="Enter Date of Birth" />
            <form:errors path="dob" />
          </td>  
 	    </tr>
 	    <tr>
          <td colspan="4">
            <form:label path="image">
              <spring:message text="Upload a Profile Picture (optional):" /> 
            </form:label>
          </td>
          <td colspan="6">
	        <form:input path="image" type="file"  />
            <form:errors path="image" />
	      </td>
	    </tr>  
        
        <br>
        
        <a href="<c:url value='/person/add' />" >
          <form:button class="btn btn-primary btn-lg">
            <spring:message text="Register" />
          </form:button>
        </a>  
    </table>
  </form:form>
  </div>
  <br> 
  <p>
    <font color="#191970"> Already registered User??? </font>
    <a href="#"><font color="#DAA520"> Click here to Login </font></a>
  </p>
  </center>
  

<%@ include file="template/Footer.jsp" %>