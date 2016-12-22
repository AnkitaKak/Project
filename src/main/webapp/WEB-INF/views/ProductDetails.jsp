<%@ page isELIgnored="false" %>
<%@ include file="template/Header.jsp" %>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>
     var prod1=${productDetails};
     angular.module("productApp", [])
     
     .controller("prodController", function ($scope) {
    	 
    	 $scope.prodDetails=prod1;
  
     });
     
</script>   

<!--<c:url value="ProductDetails/{productId}"></c:url>-->

<div class="row" ng-app="productApp" ng-controller="prodController" style="padding-top:200px; padding-left:700px;">
    <div class="section">
       {{prodDetails.image}}
    </div>  
      <table class="table" style="border-color:white;">
        <tr>
          <td colspan="2">Product Name:</td>
          <td colspan="2">{{prodDetails.productName}}</td>
        </tr>  
        <tr>
          <td colspan="2">Brand:</td>
          <td colspan="2">{{prodDetails.brand}}</td>
        </tr>
        <tr>
          <td colspan="2">Description:</td>
          <td colspan="2">{{prodDetails.description}}</td>
        </tr>
        <tr>
          <td colspan="2">Price:</td>
          <td colspan="2">{{prodDetails.price}}</td>
        </tr>   
      </table>

  <form class="form-horizontal" role="form">
    <input type="submit" class="btn btn-warning btn-lg" value="ADD TO CART">
  </form>
     
</div>  
<br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="template/Footer.jsp" %>