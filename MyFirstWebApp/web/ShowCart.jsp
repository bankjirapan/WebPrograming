<%-- 
    Document   : ShowCart
    Created on : Aug 9, 2018, 4:05:19 PM
    Author     : INT303
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Cart</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <jsp:include page="include/Header.jsp?title=Your Shopping Cart::"></jsp:include>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <h1>Your Cart</h1>
                        <table class="table table-bordered table-hover">
                            <tr>
                                <td>No.</td>
                                <td>Code</td>
                                <td>Product</td>
                                <td>Price</td>
                                <td>Quantity</td>
                            </tr>
                        <c:set var="items" value="${sessionScope.cart.lineItems}"/>
                        <c:set var="bgColorX" value="lightgray"/>
                        <c:set var="bgColorY" value="white"/>
                        <c:forEach items="${cart.getLineItems()}" var="s" varStatus="sp">
                            <tr style="background-color: ${vs.count%2==1?bgColorX:bgColorY}">  
                                <td>${sp.count}</td>
                                <td>${s.getProduct().getProductCode()}</td>
                                <td>${s.getProduct().getProductName()}</td>
                                <td>${s.getSalePrice()}</td>
                                <td><fmt:formatNumber value="${s.getQuantity()}" pattern="#,###.00"/></td>
                            </tr>
                        </c:forEach>

                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <table class="table table-bordered table-hover">
                        </tr>
                        <td>Total Quantity</td>
                        <td>${cart.getTotalQuantity()}</td>
                        <td>Total Price</td>
                        <td colspan="3">${cart.getTotalPrice()}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
