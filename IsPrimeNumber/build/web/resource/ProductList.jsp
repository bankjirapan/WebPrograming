<%-- 
    Document   : ProductList
    Created on : Aug 8, 2018, 3:23:33 PM
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.10.0/css/lightbox.css" />


    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/IsPrimeNumber/resource/PrimeNumberView.jsp">CheckPrime</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="TestRequestParameterServlet">TestRequest</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ProductList">ProductList</a>
                    </li>
                </ul>


                <form class="form-inline my-2 my-lg-0">
                    <a href="ShowCart" target="_blank">
                        <button  type="button" class="btn btn-primary">
                            จำนวนสินค้า <span class="badge badge-light">${cart.totalQuantity}</span>
                            <span class="sr-only">unread messages</span>
                        </button>
                    </a>
                </form>
            </div>
        </nav>
        <div class="container">
            <h1>Product LIST</h1>


            <table id="example"  class="table table-border table-hover">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Product Code</th>
                        <th>Product Name</th>
                        <th>Product Line</th>
                        <th>Scale</th>
                        <th>Price</th>
                        <th>IMG</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${products}" var="p" varStatus="vs">

                        <tr>

                            <td>${vs.count}</td>
                            <td>${p.productCode}</td>
                            <td>${p.productName}</td>
                            <td>${p.productLine}</td>
                            <td>${p.productScale}</td>
                            <td>${p.msrp}</td>
                            <td> <img data-lightbox src="model-images/${p.productCode}.jpg" width="70px" height="70px"></td>
                            <td>
                                <!--                                <a href="" class="btn btn-success">
                                                                    <i class="fa fa-archive" aria-hidden="true"></i>
                                                                </a> &nbsp;-->
                                <form action="AddItemToCart" method="post">
                                    <input type="text" hidden name="ProductCode" value="${p.productCode}">
                                    <button type="submit" class="btn btn-success"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>
                                </form>

<!--                                <a class="btn btn-info" href="AddItemToCart?ProductCode=${p.productCode}">
    <i class="fa fa-cart-plus  fa-lg" aria-hidden="true"></i>

</a>-->
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
            <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
            <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
            <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.10.0/js/lightbox.js"></script>

            <script>
                $(document).ready(function () {
                    $('#example').DataTable();

                });
            </script>

        </div>
    </body>
</html>