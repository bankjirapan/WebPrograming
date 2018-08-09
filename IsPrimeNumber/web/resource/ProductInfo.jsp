<%-- 
    Document   : ProductInfo
    Created on : Aug 9, 2018, 4:12:42 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    </head>
    <body>
        <div class="container">
        <h1>Hello</h1>
<table class="table table-dark">
  <thead>
    <tr>

      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Quntity</th>
      <th>Price</th>
    </tr>
  </thead>
  <tbody>
      <c:forEach items="${cart.getLineItems()}" var="s" varStatus="ps">
    <tr>
       
      <td>${s.getProduct().getProductCode()}</td>
      <td>${s.getProduct().getProductName()}</td>
      <td>${s.getQuantity()}</td>
      <td>${s.getSalePrice()}</td>
    </tr>
 </c:forEach>
  </tbody>
</table>
        
        <button class="btn btn-info">${cart.getTotalPrice()}</button>
        </div>
       
            
        
    </body>
</html>
