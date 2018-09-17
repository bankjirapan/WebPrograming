<%-- 
    Document   : BookListView
    Created on : Sep 16, 2018, 10:06:20 PM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BookList</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <div>
            <table>
                <thead>
                <th>BookID</th>
                <th>BookName</th>
                <th>Category</th>
                <th>Price</th>
                <th>More</th>

                </thead>
                <tbody>
                <c:forEach items="${booklist}" var="b">
                    <tr>
                        <td align="center">${b.bookid}</td>
                        <td align="center">${b.bookname}</td>
                        <td align="center">${b.category}</td>
                        <td align="center">${b.price}</td>
                        <td><a href="Detail?idbook=${b.id}">Info</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>





        </div>
    </body>
</html>
