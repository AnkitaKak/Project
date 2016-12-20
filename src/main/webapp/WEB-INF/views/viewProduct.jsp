<%@ include file="template/Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<script>
     var prod2=${allProducts};
     angular.module("allProductsApp", [])
     
     .controller("productsController", function ($scope) {
    	 
    	 $scope.allProducts=prod2;
    	 
    	 $scope.sort=function(keyname) {
    		 $scope.sortKey=keyname; 
    		 $scope.reverse=!$scope.reverse;
    	 }
     });
     
</script>

<br><br><br><br><br><br><br><br>

<div class="section" style="padding-top: 100px" ng-app="allProductsApp">
<br /><br />
  <div class="row">
    <div class="col-sm-1">
    </div>
    <div class="col-sm-4">
      <input type="text" class="form-control" ng-model="search" style="padding-left:20px;" placeholder="Filter Products">
    </div>
    <div class="col-sm-8">
    
    </div>  
  </div>
  
  <div class="row" ng-app="allProductsApp" ng-controller="productsController" style="padding-left:100px; padding-top:100px; padding-right:100px; padding-bottom:100px;">
    <table class="table table-striped">
      <thead>
        <tr>
          <th ng-click="sort('productId')">Product Id
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
        <tr ng-repeat="view in allProducts|orderBy:sortKey:reverse|filter:search">
          <td>{{view.productId}}</td>
          <td>{{view.productName}}</td>
          <td>{{view.brand}}</td>
          <td>{{view.category}}</td>
          <td>{{view.description}}</td>
          <td>{{view.price}}</td>
          <td><a href="<c:url value='/edit/{{product.productId}}' />">Edit</a></td>
          <td><a href="<c:url value='/remove/{{product.productId}}' />">Delete</a></td>
        </tr>  
      <!-- </tbody> -->   
    </table>
  </div>  


</div>

<%@ include file="template/Footer.jsp" %>