<%@ include file="template/Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<br><br><br><br><br><br><br><br>

<div class="container">
  
  <p> Welcome to Admin Page!!! </p>  
  <a href="<c:url value="/logout" />" style="align:right;">Logout</a> 
  <p>Persons List</p>
    <!--<c:if test="${!empty listPersons}"> -->
	<table class="table">
	    <tr>
		  <th width="80">Person ID</th>
		  <th width="120">Person Name</th>
		  <th width="120">Person EMAIL</th>
		  <th width="120">Person CONTACT</th>
		  <th width="120">Person DATE OF BIRTH</th>
		  <th width="60">Edit Persons</th>
		  <th width="60">Delete Persons</th>
	    </tr>
	    <c:forEach items="${listPersons}" var="persons">
		  <tr>
			<td>${persons.personId}</td>
			<td>${persons.name}</td>
			<td>${persons.email}</td>
			<td>${persons.contact}</td>
			<td>${persons.dob}</td>
			<td><a href="<c:url value='/edit/${persons.personId}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${persons.personId}' />" >Delete</a></td>
		  </tr>
	    </c:forEach>
	  </table>
    </c:if>

</div>

<br><br><br><br><br><br><br>

<%@ include file="template/Footer.jsp" %>