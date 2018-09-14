<%-- 
    Document   : ViewProductDetail
    Created on : Aug 31, 2018, 11:05:00 AM
    Author     : INT303
--%>

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
            <div class="row">

                <div class="col-12">
                    <table class="table  table-striped">
                        <tr>
                            <td>Product Code :</td>
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
                            <td>Product Price :</td>
                            <td>${product.msrp}</td>
                        </tr>
                    </table>

                </div>
            </div>


        </div>

    </body>
</html>
