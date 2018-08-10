<%-- 
    Document   : TestEL
    Created on : Aug 10, 2018, 2:07:52 PM
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


        <table>

            <tr>
                <td>Table of ${param.n}</td>
            </tr>
            <c:forEach begin="1" end="12" var="x">
                <tr>
                    <td style="text-align: right">${param.n}</td>
                    <td>x</td>
                    <td style="text-align: left">${x}</td>
                    <td> = </td>
                    <td  style="text-align: left">${param.n * x}</td>

                </tr>
            </c:forEach>

        </table>

    </body>
</html>
