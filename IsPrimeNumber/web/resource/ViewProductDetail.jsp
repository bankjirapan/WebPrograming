<%-- 
    Document   : ViewProductDetail
    Created on : Aug 31, 2018, 11:05:12 AM
    Author     : bankcom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <table class="table table-hover">

            <tr>

                <td>Product Code : </td>
                <td>${product.productcode}</td>
            </tr>

            <tr>
                <td>Product Name :</td>
                <td>${product.productname}</td>
            </tr>

            <tr>
                <td>Product Line :</td>
                <td>${product.productline.productline}</td>
            </tr>
            <tr>
                <td>Scale :</td>
                <td>${product.productscale}</td>
            </tr>
            <tr>
                <td>Product Vendor :</td>
                <td>${product.productvendor}</td>
            </tr>
            <tr>
                <td>Product Description :</td>
                <td>${product.productdescription}</td>
            </tr>
            <tr>
                <td>Price :</td>
                <td>${product.msrp}</td>
            </tr>

        </table>
    </body>
</html>
