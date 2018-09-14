<%-- 
    Document   : PrimeNumberView
    Created on : Aug 8, 2018, 9:49:14 AM
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
    <body  style="background-color: ${cookie.bgColor.value};>
        <div class="container">
        <h1>Prime Number Application ${pn}!!</h1>
        <form action="PrimeNumberServlet" method="post" class="form-control">
            Please enter number:
            <input type="number" required min="2" name="number"/>
            <input type="submit" value="OK">
        </form>
        <hr/>
        <h4>${pn.number} is ${pn.primeNumber?"":"not"} Prime Number</h4>
        </div>
    </body>
</html>
