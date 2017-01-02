<%@ page isELIgnored="false" %>
<%@ include file="template/Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>

     h5 {
	       font-family: "Comic Sans MS", cursive, sans-serif;
		   font-size: 25px;
     }
     
     h1 {
	       font-family:"Monotype Corsiva";
		   font-size: 55px;
		   font-style: Bold;
     }
     
</style> 

<!--  <script>
     var prod1=${productDetails};
     angular.module("productApp", [])
     
     .controller("prodController", function ($scope) {
    	 
    	 $scope.prodDetails=prod1;
  
     });
     
</script>  -->   

<c:url value="ProductDetails/{productId}"></c:url>

<div class="row" ng-app="addToCartApp" ng-controller="addToCartCtrl" style="padding-top:150px;">
    <div class="section">
    <div class="container">
       <h1>${product.productName}</h1>
       <div class="row">
         <div class="col-md-6">
            <img src="<c:url value='/resources/img/${product.productId}.jpg' />" class="img-responsive">
         </div>
    <div class="col-md-6">  
      <table class="table" style="border-color:white;"> 
        <tr>
          <td colspan="3"><h5>Brand:</h5></td>
          <td colspan="3">${product.brand}</td>
        </tr>
        <tr>
          <td colspan="3"><h5>Description:</h5></td>
          <td colspan="3">${product.description}</td>
        </tr>
        <tr>
          <td colspan="3"><h5>Category:</h5></td>
          <td colspan="3">${product.category}</td>
        </tr>
        <tr> 
          <td colspan="3"><h5>Price:</h5></td>
          <td colspan="3">${product.price}</td>
        </tr>   
      </table>
    </div>
    
  
    <a href="<c:url value='/AddToCart/${prodDetails.productId}' />" >
        <button class="btn btn-warning btn-lg">ADD TO CART</button>
    </a>
  
       </div>
     </div>
   </div>   
</div>  
<br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="template/Footer.jsp" %>