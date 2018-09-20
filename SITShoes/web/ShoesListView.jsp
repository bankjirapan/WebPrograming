<%-- 
    Document   : ShoesListView
    Created on : Sep 19, 2018, 3:25:21 PM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>ชื่อ</th>
                <th>ประเภท</th>
                <th>ราคา</th>
                <th>เพิ่มลงตะกร้า</th>

            </tr>

            <c:forEach items="${ShoesData}" var="Shoes" >
            <tr>
              
                <td>${Shoes.shoesname}</td>  
                <td>${Shoes.category}</td>
                <td>${Shoes.price}</td>
                <td><a href="AddtoCart?=${Shoes.shoesid}">เพิ่มลงตะกร้า</a></td>

            </tr>
            </c:forEach>

        </table>
    </body>
</html>
