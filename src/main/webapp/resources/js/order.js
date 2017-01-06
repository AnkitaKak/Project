var cartApp = angular.module("addToCartApp", []);

cartApp.controller("addToCartCtrl", function ($scope, $http) {

   //retrieve cart method

    $scope.retrieveCart = function(cartId) {
         $scope.cartId=cartId;
         $scope.refreshCartItems(cartId);
    };


   //remove Item from cart method 
  
    $scope.removeItemFromCart = function(itemId) {
         alert('product removed')
         $http.put('http://localhost:8080/Project/removeItem/'+itemId).success(function (data) {
              $scope.refreshCartItems();
         });
    };

    
    //Grand Total of Items method
   
    $scope.GrandTotalOfItems = function() {
         var grandTotal=0;
         for(var i=0; i<$scope.cart.items.length; i++) {
               grandTotal+=$scope.cart.items[i].itemTotal;
         }
         
         return grandTotal;
    };


    //refresh cart items method
 
    $scope.refreshCartItems = function() {
         $http.get('http://localhost:8080/Project/refreshCart/'+$scope.cartId).success(function (data) {
               $scope.cart=data;
         });
    };   
           
             
    //clear cart items method
         
    $scope.clearCartItems = function() {
         $http['delete']('http://localhost:8080/Project/clearCart'+$scope.cartId).success($scope.refreshCart());
         $scope.refreshCartItems();    
    }; 
 
});
    