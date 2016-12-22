<%@ include file="template/Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>

<!-- <script>
     var prod2=${allProducts};
     angular.module("allProductsApp", [])
     
     .controller("productsController", function ($scope) {
    	 
    	 $scope.allProducts=prod2;
    	 
    	 $scope.sort=function(keyname) {
    		 $scope.sortKey=keyname; 
    		 $scope.reverse=!$scope.reverse;
    	 }
     });
     
</script> -->

<br><br><br><br><br><br>
<div class="container central">

<c:url var="addAction1" value="/product/add"> </c:url>

<div class="col-md-8">
<form:form action="${addAction1}" commandName="product" modelAttribute="product" method="POST" enctype="multipart/form-data">

  <table>
     <c:if test="${!empty product.productName}">
        <tr>
           <td>
              <form:label path="productId">Product Id: </form:label>
           </td>
           <td>
              <form:input path="productId" readonly="true" disabled="true" class="form-control"></form:input>
              <form:hidden path="productId" />
           </td>
        </tr>
     </c:if>
     
     <tr>
        <td>
           <form:label path="productName">Product Name: </form:label>
        </td>
        <td>
           <form:input path="productName" type="text" id="productName" name="productName" class="form-control col-xs-6"></form:input>
        </td>
     </tr>  
    
     <tr>
        <td>
           <form:label path="brand">Product Brand: </form:label>
        </td>
        <td>
           <form:input path="brand" type="text" id="brand" name="brand" class="form-control col-xs-6"></form:input>
        </td>
     </tr>
     
     <tr>
        <td>
           <form:label path="category">Product Category: </form:label>
        </td>
        <td>
           <form:input path="category" type="text" id="category" name="category" class="form-control col-xs-6"></form:input>
        </td>
     </tr>
     
     <tr>
        <td>
           <form:label path="description">Product Description: </form:label>
        </td>
        <td>
           <form:input path="description" type="text" id="description" name="description" class="form-control col-xs-6"></form:input>
        </td>
     </tr>          
    
     <tr>
        <td>
           <form:label path="price">Product Price: </form:label>
        </td>
        <td>
           <form:input path="price" type="text" id="price" name="price" class="form-control col-xs-6"></form:input>
        </td>
     </tr>
     
     <tr>
        <td>
           <form:label path="image">Image: </form:label>
        </td>
        <td>
           <form:input type="file" id="image" name="image" path="image" class="form-control col-xs-6"></form:input>
        </td>
     </tr> 
     
     <tr>
        <td>
           <div class="row">
           <c:if test="${!empty product.productName}">
              <!--  <input type="submit" value="Edit Product" class="form-control" />-->
              <button type="submit" class="btn btn-info btn-lg">Edit Product</button>
           </c:if>
           </div>
           <div class="row">
           <c:if test="${empty product.productName}">
              <!-- <input type="submit" value="Add Product" class="form-control" />-->
              <button type="submit" class="btn btn-info btn-lg">Add Product</button>
           </c:if>
           </div>
        </td>
     </tr>     
    
  </table>
  
</form:form> 
</div> 

<!-- <div class="section" style="padding-top: 100px" ng-app="allProductsApp"> -->
<br /> <br />
  <!-- <div class="row">
    <div class="col-sm-1">
    </div>
    <div class="col-sm-4">
      <input type="text" class="form-control" ng-model="search" style="padding-left:20px;" placeholder="Filter Products">
    </div>
    <div class="col-sm-8">
    
    </div>  
  </div> -->
  
  <!-- <div class="row" ng-app="allProductsApp" ng-controller="productsController" style="padding-left:100px; padding-top:100px; padding-right:100px; padding-bottom:100px;"> -->
  <div class="row">
    <table class="table table-striped">
      <thead>
        <tr>
          <th ng-click="sort('productId')">Product Id</th>
          <th ng-click="sort('productName')">Product Name</th>
          <th ng-click="sort('brand')">Brand</th>
          <th ng-click="sort('category')">Category</th>
          <th ng-click="sort('description')">Description</th>
          <th ng-click="sort('price')">Price</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>  
      </thead>
      
      <!--  <tbody>-->
      <c:forEach items="${listProducts}" var="product">
        <!-- <tr ng-repeat="view in allProducts|orderBy:sortKey:reverse|filter:search"> -->
        <tr>  
          <td>${product.productId}</td>
          <td>${product.productName}</td>
          <td>${product.brand}</td>
          <td>${product.category}</td>
          <td>${product.description}</td>
          <td>${product.price}</td>
          <td><a href="<c:url value='/editProduct/${product.productId}' />">Edit</a></td>
          <td><a href="<c:url value='/removeProduct/${product.productId}' />">Delete</a></td>
        </tr>
     </c:forEach>     
      <!-- </tbody> -->   
    </table>
  </div>  


</div>

<%@ include file="template/Footer.jsp" %>