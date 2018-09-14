<%-- 
    Document   : MultiplicationTable
    Created on : Aug 10, 2018, 2:09:11 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <h1>Lexitron</h1>
        <table class="table">
            <form action="" method="get" class="form-control">
                <input type="text" name="n">
                <input type="submit">
                
            </form>
            <tr>
                <td colspan="5">Table of ${param.n}</td>
            </tr>
            <c:forEach begin="2" end="12" var="x">
            <tr>
                <td>${param.n}</td>
                <td>x</td>
                <td>${x}</td>
                <td>=</td>
                <td>${param.n*x}</td>
            </tr>
            </c:forEach>
        </table> 
        </div>
    </body>
</html>
