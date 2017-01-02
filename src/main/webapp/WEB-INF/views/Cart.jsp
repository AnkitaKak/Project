<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ include file="template/Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<br>

<div class="section" style="padding-top:100px; padding-bottom:300px;">
     <div class="container" ng-app="addToCartApp">

        <div class="bs-component" ng-controller="addToCartctrl" ng-init="retrieveCart($(user.cart.cartId))"> 


           <table class="table table-striped table-hover">
               <thead>
                  <tr>             
                     <th>Product Name</th> 
                     <th>Brand</th>
                     <th>Price</th>
                     <th>Quantity</th>
                     <th>Total</th>
                     <th></th>
                      
                  </tr>
               </thead>
                      
               <tbody>

                  <tr ng-repeat="item in cart.items">
                     <td>{{item.product.productName}}</td>
                     <td>{{item.product.brand}}</td>
                     <td>{{item.product.price}}</td>
                     <td>{{item.quantity}}</td>
                     <td>{{item.itemTotal}}</td> 
                     
                     <td><a href="#" ng-click="removeItemFromCart(item.itemId)"><i class="fa fa-times" aria-hidden="true"></i></a></td>
                  </tr>

                  <tr>
                     <td></td>
                     <td></td>
                     <td>Grand Total:</td>
                     <td>{{grandTotalOfItems()}}</td>
                     <td><a href="<c:url value='/order/${user.cart.cartId}' />" class="btn btn-success">Proceed to Payment</a></td> 
                  </tr>

               </tbody>

           </table>

           <script src="<c:url value="/resources/js/order.js" /> "></script>

        </div>

     </div>

</div>        



<%@ include file="template/Footer.jsp" %>    
    
    
