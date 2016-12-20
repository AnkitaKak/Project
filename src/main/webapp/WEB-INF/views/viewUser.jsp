<%@ include file="template/Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<script>
     var prod3=${allUsers};
     angular.module("userApp", [])
     
     .controller("userController", function ($scope) {
    	 
    	 $scope.userData=prod3;
    	 
     });
     
</script>

<br><br><br><br><br><br><br><br>

<div class="container">


<h1>
    Registered Users
</h1>
 
<!--<c:url var="addAction" value="/user/add" ></c:url>-->
 
<!--<form:form action="${addAction}" commandName="user">
  <table>
  <c:if test="${!empty user.name}">
    <tr>
      <td>
        <form:label path="userId">
          <spring:message text="ID: "/>
        </form:label>
      </td>
      <td>
        <form:input path="userId" readonly="true" size="8"  disabled="true" />
        <form:hidden path="userId" />
      </td> 
    </tr>
  </c:if>
    
    <tr>
      <td>
        <form:label path="name">
          <spring:message text="Name: "/>
        </form:label>
      </td>
      <td>
        <form:input path="name" type="text" />
      </td>
      <td><form:errors path="name"/></td> 
    </tr>
    
    <tr>
      <td>
        <form:label path="uname">
          <spring:message text="Username: "/>
        </form:label>
      </td>
      <td>
        <form:input path="uname" type="text" />
      </td>
      <td><form:errors path="uname" /></td> 
    </tr>
   
    <tr>
      <td>
        <form:label path="email">
          <spring:message text="Email: "/>
        </form:label>
      </td>
      <td>
        <form:input path="email" type="email" />
      </td>
      <td><form:errors path="email" /></td> 
    </tr>
    
    <tr>
      <td>
        <form:label path="pwd">
          <spring:message text="Password: "/>
        </form:label>
      </td>
      <td>
        <form:input path="pwd" type="password" />
      </td> 
      <td><form:errors path="pwd" /></td>
    </tr>
    
    <tr>
      <td>
        <form:label path="dob">
          <spring:message text="Date of Birth: "/>
        </form:label>
      </td>
      <td>
        <form:input path="dob" type="date" />
      </td> 
      <td><form:errors path="dob" /></td>
    </tr>

    <tr>
      <td colspan="4">
        <c:if test="${!empty user.name}">
          <input type="submit"
              value="<spring:message text="Edit User"/>" />
        </c:if>
        <c:if test="${empty user.name}">
          <input type="submit"
              value="<spring:message text="Add User"/>" />
        </c:if>
      </td>
    </tr>
  </table>
</form:form>-->

<div class="section" style="padding-top: 100px" ng-app="userApp">
<br /><br />
  <div class="row">
    <div class="col-sm-1">
    </div>
    <!-- <div class="col-sm-4">
      <input type="text" class="form-control" ng-model="search" style="padding-left:20px;" placeholder="Filter Products">
    </div>
    <div class="col-sm-8">
    
    </div>   -->
  </div>
  
  <div class="row" ng-app="userApp" ng-controller="userController" style="padding-left:100px; padding-top:100px; padding-right:100px; padding-bottom:100px;">
    <table class="table table-striped">
      <thead>
        <tr>
          <th>User Id
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
        <tr ng-repeat="user in userData">
          <td>{{user.userId}}</td>
          <td>{{user.name}}</td>
          <td>{{user.uname}}</td>
          <td>{{user.email}}</td>
          <td>{{user.pwd}}</td>
          <td>{{user.dob}}</td>
          <td><a href="<c:url value='/edit/{{user.userId}}' />">Edit</a></td>
          <td><a href="<c:url value='/user/{{product.userId}}' />">Delete</a></td>
        </tr>  
      <!-- </tbody> -->   
    </table>
  </div>  


</div>

</div>

<%@ include file="template/Footer.jsp" %>