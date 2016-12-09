<%@ include file="template/Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">

  <p>Dear <strong>${user}</strong>, You are not authorized to access this page </p>
    <a href="<c:url value="/logout" />">Logout</a>

</div>     

<%@ include file="template/Footer.jsp" %> 