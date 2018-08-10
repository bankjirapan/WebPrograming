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
    <style>
        .dataTables_filter{
            margin-left: 20%;
        }
    </style>
    <body>
        <br>
        <div class="container">
            <div align="center"> <h1>รายการสั่งซื้อ</h1> </div> <br>
            <table class="table">
                <thead>
                    <tr>
                        <th>NO</th>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Quntity</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <c:set var="items" value="${sessionScope.cart.getLineItems() }" />
                <c:set var="bgColorX" value="lightgray" />
                <c:set var="bgColorY" value="white" />
                <tbody>
                    <c:forEach items="${cart.getLineItems()}" var="s" varStatus="ps">
                        <tr style="background-color : ${ps.count%2 == 1? bgColorx : bgColorY}">
                            <td>${ps.count}</td>
                            <td>${s.getProduct().getProductCode()}</td>
                            <td>${s.getProduct().getProductName()}</td>
                            <td>${s.getQuantity()}</td>
                            <td>${s.getSalePrice()}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div>
                    จำนวนสินค้ารวม ${cart.getTotalQuantity()}<br>
                    ยอดรวมสุทธิ  <fmt:formatNumber value="${cart.getTotalPrice()}" pattern="#,###.00" />
                    
                    </div>
            </div>

            <!--            <button class="btn btn-info">$//{cart.getTotalPrice()}</button>-->
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.10.0/js/lightbox.js"></script>

        <script>
            $(document).ready(function () {
                $('#example').DataTable();

            });
        </script>

    </body>
</html>
