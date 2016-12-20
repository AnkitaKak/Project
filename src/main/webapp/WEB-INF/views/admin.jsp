<%@ include file="template/Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<br><br><br><br><br><br><br><br>

<div class="container">
  
  <p> Welcome Admin!!! </p>  
  <a href="<c:url value="/logout" />" style="align:right;">Logout</a> 
  
  <br /><br />
  
  <p>Select one: </p>
   
  <a href="/viewProduct">View All Products </a> 
  <a href="/viewUser">View All Users </a>

</div>

<br /><br /><br /><br /><br /><br /><br />

<%@ include file="template/Footer.jsp" %>