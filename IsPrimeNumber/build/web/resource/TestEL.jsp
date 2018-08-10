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
    <body onload="hello();">
        <h2>input Number</h2>
        <form id="form" action="" method="post">
            <input id="inputNumber" type="number" name="n">
            <input type="submit">
        </form>
        <br>
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
        <script
            src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>

        <script>


              function hello() {
                  let ok = 1;

                  if (ok === 1) {
                      document.getElementById('inputNumber').value = 2;
                      document.getElementById('form').submit();
                      ok = 0;

                  }

              }






        </script>

    </body>
</html>
