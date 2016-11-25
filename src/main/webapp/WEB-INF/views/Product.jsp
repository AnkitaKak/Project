<%@ page isELIgnored="false" %>
<%@ include file="template/Header.jsp" %>

<script>
     var prod=${productData};
     angular.module("prodApp", [])
     
     .controller("productController", function ($scope) {
    	 
    	 $scope.prodData=prod;
    	 
    	 $scope.sort=function(keyname) {
    		 $scope.sortKey=keyname; 
    		 $scope.reverse=!$scope.reverse;
    	 }
     });
     
</script> 

<div class="section" style="padding-top: 100px" ng-app="prodApp">
  
  <b>
  <p style="padding-left:50px;">Products in Store</p>
  </b>
  <br>
  <div class="row">
    <div class="col-sm-1">
    </div>
    <div class="col-sm-4">
      <input type="text" class="form-control" ng-model="search" style="padding-left:20px;" placeholder="Filter your criteria">
    </div>
    <div class="col-sm-8">
    
    </div>  
  </div>
  
  <div class="row" ng-app="prodApp" ng-controller="productController" style="padding-left:100px; padding-top:100px; padding-right:100px; padding-bottom:100px;">
    <table class="table table-striped">
      <thead>
        <tr>
          <th ng-click="sort('productName')">Product Name</th>
          <th ng-click="sort('brand')">Brand</th>
          <th ng-click="sort('price')">Price</th>
          <th ng-click="sort('category')">Category</th>
          <th></th>
        </tr>  
      </thead>
      
      <!--  <tbody>-->
        <tr ng-repeat="product in prodData|orderBy:sortKey:reverse|filter:search">
          <td>{{product.productName}}</td>
          <td>{{product.brand}}</td>
          <td>{{product.price}}</td>
          <td>{{product.category}}</td>
        </tr>  
      <!-- </tbody> -->   
    </table>
  </div>  
</div> 

<%@ include file="template/Footer.jsp" %>