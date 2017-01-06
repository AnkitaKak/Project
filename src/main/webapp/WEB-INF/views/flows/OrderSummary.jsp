<%@ include file="/WEB-INF/views/template/Header.jsp" %>
<%@ page isELIgnored="false" %>

<br /><br /><br /><br /><br />

<div class="section">
  <div class="container" ng-app="addToCartApp" ng-controller="addToCartCtrl" ng-init="retrieveCart(${order.cart.cartId})">
     
     <div class="bs-componenet">
         
       <form:form>
          <div class="section">
            <div class="container">
              <div class="row">
                 
                 <div class="col-md-6">
                   <h1> SHIPPING ADDRESS </h1>
                   
                   <ul class="Lead List-group">
                     <li class="List-group-item">Name: ${order.cart.user.username} </li>
                     <li class="List-group-item">Address: ${order.cart.user.shippingAddress.address}</li>
                     <li class="List-group-item">City: ${order.cart.user.shippingAddress.city}</li>
                     <li class="List-group-item">State: ${order.cart.user.shippingAddress.state}</li>
                     <li class="List-group-item">Pin Code: ${order.cart.user.shippingAddress.zipCode}</li>
                     <li class="List-group-item">Contact: ${order.cart.user.shippingAddress.mobile}</li>
                     <li class="List-group-item">Email: ${order.cart.user.shippingAddress.email}</li>
                   </ul>
      
                 </div>
                 <div class="col-md-6">
                   <h1>PRODUCTS</h1>
                   
                   <table class="table table-striped table-hover">
                     <thead>
                       <tr>
                          <th ng-click="sort('product.productName')">Name: <span class="glyphicon sort-icon" ng-show="sortkey=='productName'" ng-class="{'glyphicon-chevron-up' : reverse,'glyphicon-chevron-down':reverse'}"></span>
                          </th>
                          <th ng-click="sort('product.brand')">Brand: <span class="glyphicon sort-icon" ng-show="sortkey=='brand'" ng-class="{'glyphicon-chevron-up' : reverse,'glyphicon-chevron-down':reverse'}"></span>
                          </th>
                          <th ng-click="sort('product.price')">Price: <span class="glyphicon sort-icon" ng-show="sortkey=='price'" ng-class="{'glyphicon-chevron-up' : reverse,'glyphicon-chevron-down':reverse'}"></span>
                          </th>
                          <th ng-click="sort('quantity')">Quantity: <span class="glyphicon sort-icon" ng-show="sortkey=='quantity'" ng-class="{'glyphicon-chevron-up' : reverse,'glyphicon-chevron-down':reverse'}"></span>
                          </th>
                          <th ng-click="sort('totalPrice')">Total Price: <span class="glyphicon sort-icon" ng-show="sortkey=='itemTotal'" ng-class="{'glyphicon-chevron-up' : reverse,'glyphicon-chevron-down':reverse'}"></span>
                          </th>
                       </tr>
                     </thead> 
                     
                     <tbody>
                       <tr ng-repeat="item in cart.items|orderBy:sortKey:reverse|filter:search">
                         <td>{{item.product.productName}}</td>
                         <td>{{item.product.brand}}</td>
                         <td>{{item.product.price}}</td>
                         <td>{{item.quantity}}</td>
                         <td>{{item.itemTotal}}</td>
                       </tr>
                       
                       <tr>
                         <td></td>
                         <td></td>
                         <td class="text-right">
                            <p>Grand Total: 
                                <b> {{grandTotalOfItems()}}</b> 
                            </p>
                         </td>
                       </tr>
                     </tbody>
                     
                   </table>
                   
                  <div class="form-group">
                    <button class="btn btn-primary" > BACK </button>
                    <input class="btn btn-success" type="submit" name="_eventId_orderConfirmed" value="Next">
                    <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}">                 
                  </div>
                  
                 </div>
                 
              </div>
            </div>
          </div>
       </form:form>  
         
     </div>
  
  </div>

</div>

<%@ include file="/WEB-INF/views/template/Footer.jsp" %>