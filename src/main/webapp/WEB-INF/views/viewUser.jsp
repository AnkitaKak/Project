<%@ include file="template/Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>

<!-- <script>
     var prod3=${allUsers};
     angular.module("userApp", [])
     
     .controller("userController", function ($scope) {
    	 
    	 $scope.userData=prod3;
    	 
     });
     
</script>  -->

<br><br><br><br><br><br><br><br>

<div class="container central">


<h1>
    Registered Users
</h1>
 
<div class="container central">

<c:url var="addAction2" value="/user/add"> </c:url>

<div class="col-md-8">
<form:form action="${addAction2}" commandName="user" modelAttribute="user" method="POST">

  <table>
     <c:if test="${!empty user.name}">
        <tr>
           <td>
              <form:label path="userId">User Id: </form:label>
           </td>
           <td>
              <form:input path="userId" readonly="true" disabled="true" class="form-control"></form:input>
              <form:hidden path="userId" />
           </td>
        </tr>
     </c:if>
     
     <tr>
        <td>
           <form:label path="name">Name of User: </form:label>
        </td>
        <td>
           <form:input path="name" type="text" id="name" name="name" class="form-control col-xs-6"></form:input>
        </td>
     </tr>  
    
     <tr>
        <td>
           <form:label path="uname">Username: </form:label>
        </td>
        <td>
           <form:input path="uname" type="text" id="uname" name="uname" class="form-control col-xs-6"></form:input>
        </td>
     </tr>
     
     <tr>
        <td>
           <form:label path="email">Email Id: </form:label>
        </td>
        <td>
           <form:input path="email" type="email" id="email" name="email" class="form-control col-xs-6"></form:input>
        </td>
     </tr>
     
     <tr>
        <td>
           <form:label path="pwd">Password: </form:label>
        </td>
        <td>
           <form:input path="pwd" type="password" id="pwd" name="pwd" class="form-control col-xs-6"></form:input>
        </td>
     </tr>          
    
     <tr>
        <td>
           <form:label path="dob">Date of Birth: </form:label>
        </td>
        <td>
           <form:input path="dob" type="date" id="dob" name="dob" class="form-control col-xs-6"></form:input>
        </td>
     </tr>
     
     <tr>
        <td>
           <div class="row">
           <c:if test="${!empty user.name}">  
              <!--  <input type="submit" value="Edit Product" class="form-control" />-->
              <button type="submit" class="btn btn-info btn-lg">Edit User</button>
           </c:if>
           </div>
           <div class="row">
           <c:if test="${empty user.name}">  
              <!-- <input type="submit" value="Add Product" class="form-control" />-->
              <button type="submit" class="btn btn-info btn-lg">Add User</button>
           </c:if>
           </div>
        </td>
     </tr>     
    
  </table>
  
</form:form> 
</div>  

<!-- <div class="section" style="padding-top: 100px" ng-app="userApp"> -->
<br /><br />
  <!-- <div class="row">
    <div class="col-sm-4">
      <input type="text" class="form-control" ng-model="search" style="padding-left:20px;" placeholder="Filter Products">
    </div>
    <div class="col-sm-8">
    
    </div>  
  </div> -->
  
  <!-- <div class="row" ng-app="userApp" ng-controller="userController" style="padding-left:100px; padding-top:100px; padding-right:100px; padding-bottom:100px;"> -->
  <div class="row">     
    <table class="table table-striped">
      <thead>
        <tr>
          <th>User Id</th>
          <th>Name</th>
          <th>Username</th>
          <th>Email</th>
          <th>Password</th>
          <th>Date of Birth</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>  
      </thead>
      
      <!--  <tbody>-->
      <c:forEach items="${listUsers}" var="user"> 
        <!-- <tr ng-repeat="user in userData"> --> 
       <tr>
          <td>${user.userId}</td>
          <td>${user.name}</td>
          <td>${user.uname}</td>
          <td>${user.email}</td>
          <td>${user.pwd}</td>
          <td>${user.dob}</td>
          <td><a href="<c:url value='/editUser/${user.userId}' />">Edit</a></td>
          <td><a href="<c:url value='/removeUser/${user.userId}' />">Delete</a></td>
        </tr>  
     </c:forEach>
      
      <!-- </tbody> -->   
    </table>
  </div>  


</div>

</div>

<%@ include file="template/Footer.jsp" %>