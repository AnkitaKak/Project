<%@ include file="/WEB-INF/views/template/Header.jsp" %>
<%@ page isELIgnored="false" %>

<br /><br /><br /><br /><br />

<div class="section">
  <div class="container">
        
      <form:form commandName="order.cart.user">
        
         <div class="container-fluid">
            <h1> SHIPPING ADDRESS </h1>
               
               <div class="form-group">
                 <label class="control-label"> Address </label>
                 <form:input type="text" path="address" id="address" name="address" placeholder="Enter Address" class="form-control"> </form:input>
               </div>
               
               <div class="form-group">
                 <label class="control-label"> City </label>
                 <form:input type="text" path="city" id="city" name="city" placeholder="Enter City" class="form-control"> </form:input>
               </div>
               
               <div class="form-group">
                 <label class="control-label"> State </label>
                 <form:input type="text" path="state" id="state" name="state" placeholder="Enter State" class="form-control"> </form:input>
               </div>
               
               <div class="form-group">
                 <label class="control-label"> Pin Code </label>
                 <form:input type="text" path="zipCode" id="zipCode" name="zipCode" placeholder="Enter Pin Code" class="form-control"> </form:input>
               </div>
               
               <div class="form-group">
                 <label class="control-label"> Contact Number</label>
                 <form:input type="text" path="mobile" id="mobile" name="mobile" placeholder="Enter Contact Number" class="form-control"> </form:input>
               </div>
               
               <div class="form-group">
                 <label class="control-label"> Email </label>
                 <form:input type="email" path="email" id="email" name="email" placeholder="Enter Email" class="form-control"> </form:input>
               </div>
               
               <div class="form-group">
                 <!-- <a class="btn btn-default" > BACK </a> -->
                 <input class="btn btn-success" type="submit" name="_eventId_shippingAddressChecked" value="Proceed">
                 <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}">                 
               </div>
               
         </div>            
        
      </form:form>
        
   </div>
   
</div>

<%@ include file="/WEB-INF/views/template/Footer.jsp" %>